package com.codegenerate.projectmanage.controller;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import org.springframework.web.multipart.MultipartFile;
import com.ibusiness.common.export.ExcelCommon;
import com.ibusiness.common.export.TableModel;
import com.ibusiness.security.util.SpringSecurityUtils;
import com.ibusiness.common.service.FormulaCommon;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import org.activiti.engine.impl.interceptor.Command;
import org.activiti.engine.task.Task;
import org.apache.commons.io.IOUtils;

import net.sf.json.JSONObject;

import com.ibusiness.common.model.ConfSelectItem;
import com.ibusiness.bpm.cmd.ProcessInstanceDiagramCmd;
import com.ibusiness.bpm.service.BpmComBusiness;
import com.ibusiness.core.spring.MessageHelper;
import com.ibusiness.common.page.PropertyFilter;
import com.ibusiness.common.page.Page;
import com.ibusiness.common.service.CommonBusiness;
import com.ibusiness.common.util.CommonUtils;
import com.ibusiness.security.util.SpringSecurityUtils;
import com.ibusiness.base.user.entity.UserBase;

import com.codegenerate.projectmanage.entity.Project_approvalEntity;
import com.codegenerate.projectmanage.service.Project_approvalService;
import com.codegenerate.projectmanage.entity.Project_product_sEntity;
import com.codegenerate.projectmanage.service.Project_product_sService;

/**   
 * @Title: Controller
 * @Description: 项目立项表流程
 * @author JiangBo
 *
 */
@Controller
@RequestMapping("project_approval")
public class Project_approvalController {

    private MessageHelper messageHelper;
    private Project_approvalService project_approvalService;
        private Project_product_sService project_product_sService;
   /**
     * 列表
     */
    @RequestMapping("project_approval-list")
    public String list(@ModelAttribute Page page, @RequestParam(value = "flowId", required = false) String flowId, @RequestParam(value = "flowType", required = false) String flowType, @RequestParam Map<String, Object> parameterMap, Model model) {
        // 查询条件Filter过滤器
        List<PropertyFilter> propertyFilters = PropertyFilter.buildFromMap(parameterMap);
        propertyFilters.add(new PropertyFilter("EQI_doneflag", flowType));
        propertyFilters.add(new PropertyFilter("EQS_assigneeuser", SpringSecurityUtils.getCurrentUserId()));
        // 根据条件查询数据
        page = project_approvalService.pagedQuery(page, propertyFilters);
        model.addAttribute("page", page);
        model.addAttribute("flowId", flowId);
        model.addAttribute("flowType", flowType);
        // 返回JSP
        return "codegenerate/projectmanage/project_approval-list.jsp";
    }
    /**
     * 新建一条流程, 进入流程表单信息页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("project_approval-input")
    public String input(@ModelAttribute Page page, @RequestParam(value = "flowId", required = false) String flowId, @RequestParam(value = "id", required = false) String id, Model model) {
        Project_approvalEntity entity = null;
        BpmComBusiness bpmComBusiness = new BpmComBusiness();
        if (!CommonUtils.isNull(id)) {
            entity = project_approvalService.get(id);
        } else {
            entity = new Project_approvalEntity();
            
            // 发起一个流程, 设置当前用户执行
            String userId = SpringSecurityUtils.getCurrentUserId();
            String executionId = bpmComBusiness.flowStart(flowId, userId);
            entity.setExecutionid(executionId);
            // 设置流程实例信息=========================
            Task task = bpmComBusiness.getTaskIdByExecutionId(entity.getExecutionid());
            entity.setCreatedatebpm(task.getCreateTime());
            entity.setNodename(task.getName());
            entity.setAssigneeuser(userId);
            entity.setUsername(CommonBusiness.getInstance().getUserBean(userId).getDisplayName());
            entity.setDoneflag(0);
            // 进行存储
            entity.setId(UUID.randomUUID().toString());
            entity.setDoneflag(0);
            // 流程标题
            entity.setTasktitle("项目立项表单");
            project_approvalService.insert(entity);
        }
        
        // 默认值公式
        entity = (Project_approvalEntity) new FormulaCommon().defaultValue(entity, "IB_PROJECT_APPROVAL");
        
        model.addAttribute("model", entity);
        
        // 取得当前流程节点信息
        Task task = bpmComBusiness.getTaskIdByExecutionId(entity.getExecutionid());
        String nodeCode = task.getTaskDefinitionKey();
        // 根据流程和节点信息取得 流程指定节点的字段信息
        JSONObject json = bpmComBusiness.getNodeColumsInfo(flowId, entity.getExecutionid(), nodeCode, Project_approvalEntity.class);
        model.addAttribute("nodeColumsMap", json);
        
        // 子表信息
        Map<String, Object> map = new HashMap<String, Object>();
        List<PropertyFilter> propertyFilters = PropertyFilter.buildFromMap(map);
        propertyFilters.add(new PropertyFilter("EQS_parentid", id));
        // 根据条件查询数据
	        page = project_product_sService.pagedQuery(page, propertyFilters);
	        model.addAttribute("project_product_sPage", page);
        
        // 流程ID
        model.addAttribute("flowId", flowId);
        // 取得用户
        List<UserBase> list = CommonBusiness.getInstance().getUserBaseList();
        model.addAttribute("userItems", list);
        // TODO
        model.addAttribute("userId", SpringSecurityUtils.getCurrentUserId());
        
        // 在controller中设置页面控件用的数据
        return "codegenerate/projectmanage/project_approval-input.jsp";
    }
    
    /**
     * 子表新建
     */
    @RequestMapping("project_product_s-input")
    public String project_product_sInput(@RequestParam(value = "flowId", required = false) String flowId, @RequestParam("id") String id, @RequestParam("subId") String subId, Model model) {
        Project_product_sEntity entity = project_product_sService.get(subId);
        model.addAttribute("model", entity);
        model.addAttribute("parentid", id);
        model.addAttribute("flowId", flowId);
        
        // 取得主表中的 executionid
        Project_approvalEntity mainEntity = project_approvalService.get(id);
        BpmComBusiness bpmComBusiness = new BpmComBusiness();
        // 取得当前流程节点信息
        Task task = bpmComBusiness.getTaskIdByExecutionId(mainEntity.getExecutionid());
        String nodeCode = task.getTaskDefinitionKey();
        // 根据流程和节点信息取得 流程指定节点的字段信息
        JSONObject json = bpmComBusiness.getNodeColumsInfo(flowId, mainEntity.getExecutionid(), nodeCode, Project_product_sEntity.class);
        model.addAttribute("nodeColumsMap", json);
        
        return "codegenerate/projectmanage/project_product_s-input.jsp";
    }
    /**
     * 办理
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("project_approval-complete")
    public String completeTask(@ModelAttribute Project_approvalEntity entity, @RequestParam(value = "flowId", required = false) String flowId, @RequestParam(value = "userId", required = false) String userId, RedirectAttributes redirectAttributes) throws Exception {
        BpmComBusiness bpmComBusiness = new BpmComBusiness();
        String executionId = null;
        // 
        if (CommonUtils.isNull(entity.getExecutionid())) {
            // 启动流程, 设置执行实例ID
            executionId = bpmComBusiness.flowStart(flowId, userId);
            entity.setExecutionid(executionId);
            // 设置流程实例信息=========================
            Task task = bpmComBusiness.getTaskIdByExecutionId(entity.getExecutionid());
            entity.setCreatedatebpm(task.getCreateTime());
            entity.setNodename(task.getName());
            entity.setAssigneeuser(userId);
            entity.setUsername(CommonBusiness.getInstance().getUserBean(userId).getDisplayName());
            entity.setDoneflag(0);
        } else {
            Task task = bpmComBusiness.getTaskIdByExecutionId(entity.getExecutionid());
            // 办理流程
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("assignee", userId);
            map.put("bean", entity);
            
            bpmComBusiness.completeTask(task.getId(), map);
            if (bpmComBusiness.isFinishedByTask(entity.getExecutionid())) {
                entity.setDoneflag(1);
            } else {
                entity.setDoneflag(0);
            }
            // 设置流程实例信息=========================
            entity.setCreatedatebpm(task.getCreateTime());
            entity.setNodename(task.getName());
            entity.setAssigneeuser(userId);
            entity.setUsername(CommonBusiness.getInstance().getUserBean(userId).getDisplayName());
        }
        // 再进行数据存储
        String id = entity.getId();
        if (CommonUtils.isNull(id)) {
            entity.setId(UUID.randomUUID().toString());
            entity.setDoneflag(0);
            id = entity.getId();
            project_approvalService.insert(entity);
        } else {
            project_approvalService.update(entity);
        }
        // 
        messageHelper.addFlashMessage(redirectAttributes, "core.success.save", "办理成功");
        return "redirect:/project_approval/project_approval-list.do?flowType=0&flowId=" + flowId;
    }
    /**
     * 回退功能
     */
    @RequestMapping("project_approval-rollback")
    public String rollback(@RequestParam("executionId") String executiond, @RequestParam("flowId") String flowId) {
        BpmComBusiness bpmComBusiness = new BpmComBusiness();
        Task task = bpmComBusiness.getTaskIdByExecutionId(executiond);
        
        new BpmComBusiness().rollback(task.getId());
        return "redirect:/project_approval/project_approval-list.do?flowType=0&flowId=" + flowId;
    }
    /**
     * 草稿
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("project_approval-save-draft")
    public String saveDraft(@ModelAttribute Project_approvalEntity entity, @RequestParam(value = "flowId", required = false) String flowId, RedirectAttributes redirectAttributes) throws Exception {
        // 再进行数据复制
        String id = entity.getId();
        if (CommonUtils.isNull(id)) {
            entity.setId(UUID.randomUUID().toString());
            entity.setDoneflag(0);
            project_approvalService.insert(entity);
            id = entity.getId();
        } else {
            project_approvalService.update(entity);
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.save", "保存成功");
        return "redirect:/project_approval/project_approval-input.do?flowId=" + flowId + "&id=" + id;
    }
    /**
     * 删除一条流程信息
     * @param selectedItem
     * @param redirectAttributes
     * @return
     */
    @RequestMapping("project_approval-remove")
    public String remove(@RequestParam("selectedItem") List<String> selectedItem, @RequestParam(value = "flowId", required = false) String flowId, RedirectAttributes redirectAttributes) {
        List<Project_approvalEntity> entitys = project_approvalService.findByIds(selectedItem);
        // 实例化BPM流程共用类对象
        BpmComBusiness bpmComBusiness = new BpmComBusiness();
        for (Project_approvalEntity entity : entitys) {
            project_approvalService.remove(entity);
            // 删除流程实例
            bpmComBusiness.deleteProcessInstance(entity.getExecutionid());
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.delete", "删除成功");

        return "redirect:/project_approval/project_approval-list.do?flowType=0&flowId=" + flowId;
    }
    
    /**
     * 子表保存
     */
    @RequestMapping("project_product_s-save")
    public String subSave(@ModelAttribute Project_product_sEntity entity, @RequestParam(value = "flowId", required = false) String flowId, @RequestParam(value = "parentid", required = false) String parentid, RedirectAttributes redirectAttributes) throws Exception {
        String id = entity.getId();
        if (CommonUtils.isNull(id)) {
            id = UUID.randomUUID().toString();
            entity.setId(id);
            entity.setParentid(parentid);
            project_product_sService.insert(entity);
        } else {
            project_product_sService.update(entity);
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.save", "保存成功");
        return "redirect:/project_approval/project_approval-input.do?flowId=" + flowId + "&id=" + entity.getParentid();
    }
    /**
     * 子表删除
     */
    @RequestMapping("project_product_s-remove")
    public String project_product_sRemove(@RequestParam("project_product_sSelectedItem") List<String> selectedItem, @RequestParam(value = "flowId", required = false) String flowId, RedirectAttributes redirectAttributes) throws Exception {
        List<Project_product_sEntity> entitys = project_product_sService.findByIds(selectedItem);
        for (Project_product_sEntity entity : entitys) {
            project_product_sService.remove(entity);
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.delete", "删除成功");
        return "redirect:/project_approval/project_approval-input.do?flowId=" + flowId + "&id=" + entitys.get(0).getParentid();
    }
    /**
     * 子表 excel导出
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("project_product_s-export")
    public void excelProject_product_sExport(@ModelAttribute Page page, @RequestParam Map<String, Object> parameterMap, HttpServletResponse response) {
        List<PropertyFilter> propertyFilters = PropertyFilter.buildFromMap(parameterMap);
        page = project_product_sService.pagedQuery(page, propertyFilters);
        List<Project_product_sEntity> beans = (List<Project_product_sEntity>) page.getResult();

        TableModel tableModel = new TableModel();
        // excel文件名
        tableModel.setExcelName("项目立项表流程"+CommonUtils.getInstance().getCurrentDateTime());
        // 列名
        tableModel.addHeaders("productno", "productname", "productmodel", "productnumber", "productunit", "unitprice", "amount", "producttype", "productflowid", "id", "parentid");
        tableModel.setTableName("IB_PROJECT_APPROVAL");
        tableModel.setData(beans);
        try {
            new ExcelCommon().exportExcel(response, tableModel);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    /**
     * 子表 excel导入
     */
    @RequestMapping("project_product_s-importExcel")
    public String importProject_product_sExport(@RequestParam("attachment") MultipartFile attachment, @RequestParam(value = "flowId", required = false) String flowId, @RequestParam(value = "parentid", required = false) String parentid, HttpServletResponse response) {
        try {
            File file = new File("test.xls"); 
            attachment.transferTo(file);
            // 
            TableModel tableModel = new TableModel();
            // 列名
            tableModel.addHeaders("productno", "productname", "productmodel", "productnumber", "productunit", "unitprice", "amount", "producttype", "productflowid", "id", "parentid");
            // 导入
            new ExcelCommon().uploadExcel(file, tableModel, "com.codegenerate.projectmanage.entity.Project_product_sEntity");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/project_approval/project_approval-input.do?flowId=" + flowId + "&id=" + parentid;
    }

    /**
     * 流程定义图像
     * @param bpmProcessId
     * @param response
     * @throws Exception
     */
    @RequestMapping("project_approval-graph")
    public void graphProcessDefinition(@RequestParam("id") String id, HttpServletResponse response) throws Exception {
        Project_approvalEntity entity = project_approvalService.get(id);
        BpmComBusiness bpmComBusiness = new BpmComBusiness();
        if (CommonUtils.isNull(entity.getExecutionid())) {
            return;
        }
        Task task = bpmComBusiness.getTaskIdByExecutionId(entity.getExecutionid());
        Command<InputStream> cmd = new ProcessInstanceDiagramCmd(task.getProcessInstanceId());
        // 
        InputStream is = bpmComBusiness.getProcessEngine().getManagementService().executeCommand(cmd);
        response.setContentType("image/png");

        IOUtils.copy(is, response.getOutputStream());
    }
    
    // ======================================================================
    @Resource
    public void setMessageHelper(MessageHelper messageHelper) {
        this.messageHelper = messageHelper;
    }
    @Resource
    public void setProject_approvalService(Project_approvalService project_approvalService) {
        this.project_approvalService = project_approvalService;
    }
        @Resource
	    public void setProject_product_sService(Project_product_sService project_product_sService) {
	        this.project_product_sService = project_product_sService;
	    }
}

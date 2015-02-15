package com.codegenerate.worksmanage.controller;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import net.sf.json.JSONObject;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import org.springframework.web.multipart.MultipartFile;
import com.ibusiness.common.export.ExcelCommon;
import com.ibusiness.common.export.TableModel;
import com.ibusiness.common.service.FormulaCommon;
import com.ibusiness.common.service.CommonBusiness;

import com.ibusiness.security.util.SpringSecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import org.activiti.engine.impl.interceptor.Command;
import org.activiti.engine.task.Task;
import org.apache.commons.io.IOUtils;

import com.ibusiness.common.model.ConfSelectItem;
import com.ibusiness.bpm.cmd.ProcessInstanceDiagramCmd;
import com.ibusiness.bpm.service.BpmComBusiness;
import com.ibusiness.core.spring.MessageHelper;
import com.ibusiness.common.page.PropertyFilter;
import com.ibusiness.common.page.Page;
import com.ibusiness.common.util.CommonUtils;
import com.ibusiness.security.util.SpringSecurityUtils;

import com.codegenerate.worksmanage.entity.Works_planEntity;
import com.codegenerate.worksmanage.service.Works_planService;
import com.codegenerate.worksmanage.entity.Works_plan_sEntity;
import com.codegenerate.worksmanage.service.Works_plan_sService;

/**   
 * @Title: Controller
 * @Description: 工程施工计划表页面
 * @author JiangBo
 *
 */
@Controller
@RequestMapping("works_plan")
public class Works_planController {

    private MessageHelper messageHelper;
    private Works_planService works_planService;
        private Works_plan_sService works_plan_sService;
   /**
     * 列表
     */
    @RequestMapping("works_plan-list")
    public String list(@ModelAttribute Page page,  @RequestParam Map<String, Object> parameterMap, Model model) {
        // 查询条件Filter过滤器
        List<PropertyFilter> propertyFilters = PropertyFilter.buildFromMap(parameterMap);
        // 添加当前公司(用户范围)ID查询
    	propertyFilters = CommonBusiness.getInstance().editPFByScopeId(propertyFilters);
        // 根据条件查询数据
        page = works_planService.pagedQuery(page, propertyFilters);
        model.addAttribute("page", page);
        // 返回JSP
        return "codegenerate/worksmanage/works_plan-list.jsp";
    }
    /**
     * 进入主表表单编辑页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("works_plan-input")
    public String input(@ModelAttribute Page page,  @RequestParam(value = "id", required = false) String id, Model model) {
        Works_planEntity entity = null;
        if (!CommonUtils.isNull(id)) {
            entity = works_planService.get(id);
        } else {
            entity = new Works_planEntity();
        }
        // 默认值公式
        entity = (Works_planEntity) new FormulaCommon().defaultValue(entity, "IB_WORKS_PLAN");
        
        model.addAttribute("model", entity);
        // 子表信息
        Map<String, Object> map = new HashMap<String, Object>();
        List<PropertyFilter> propertyFilters = PropertyFilter.buildFromMap(map);
        propertyFilters.add(new PropertyFilter("EQS_parentid", id));
        // 根据条件查询数据
	        page = works_plan_sService.pagedQuery(page, propertyFilters);
	        model.addAttribute("works_plan_sPage", page);
        
        // 在controller中设置页面控件用的数据
        return "codegenerate/worksmanage/works_plan-input.jsp";
    }
    
    /**
     * 子表新建
     */
    @RequestMapping("works_plan_s-input")
    public String works_plan_sInput(@RequestParam(value = "flowId", required = false) String flowId, @RequestParam("id") String id, @RequestParam("subId") String subId, Model model) {
        Works_plan_sEntity entity = works_plan_sService.get(subId);
        model.addAttribute("model", entity);
        model.addAttribute("parentid", id);
        model.addAttribute("flowId", flowId);
        return "codegenerate/worksmanage/works_plan_s-input.jsp";
    }
    /**
     * 保存主表
     * 
     * @return
     * @throws Exception
     */
    @RequestMapping("works_plan-save")
    public String saveDraft(@ModelAttribute Works_planEntity entity, RedirectAttributes redirectAttributes) throws Exception {
        // 再进行数据复制
        String id = entity.getId();
        if (CommonUtils.isNull(id)) {
            entity.setId(UUID.randomUUID().toString());
            // 设置范围ID
            entity.setScopeid(CommonBusiness.getInstance().getCurrentUserScopeId());
            works_planService.insert(entity);
            id = entity.getId();
        } else {
            works_planService.update(entity);
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.save", "保存成功");
        return "redirect:/works_plan/works_plan-input.do?id=" + id;
    }
    /**
     * 子表保存
     */
    @RequestMapping("works_plan_s-save")
    public String subSave(@ModelAttribute Works_plan_sEntity entity, @RequestParam(value = "flowId", required = false) String flowId, @RequestParam(value = "parentid", required = false) String parentid, RedirectAttributes redirectAttributes) throws Exception {
        String id = entity.getId();
        if (CommonUtils.isNull(id)) {
            id = UUID.randomUUID().toString();
            entity.setId(id);
            entity.setParentid(parentid);
            works_plan_sService.insert(entity);
        } else {
            works_plan_sService.update(entity);
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.save", "保存成功");
        return "redirect:/works_plan/works_plan-input.do?id=" + entity.getParentid();
    }
    /**
     * 子表 excel导出
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("works_plan_s-export")
    public void excelWorks_plan_sExport(@ModelAttribute Page page, @RequestParam Map<String, Object> parameterMap, HttpServletResponse response) {
        List<PropertyFilter> propertyFilters = PropertyFilter.buildFromMap(parameterMap);
        page = works_plan_sService.pagedQuery(page, propertyFilters);
        List<Works_plan_sEntity> beans = (List<Works_plan_sEntity>) page.getResult();

        TableModel tableModel = new TableModel();
        // excel文件名
        tableModel.setExcelName("工程施工计划表页面"+CommonUtils.getInstance().getCurrentDateTime());
        // 列名
        tableModel.addHeaders("projectname", "productionmode", "productionaddress", "workingday", "starttime", "endtime", "id", "parentid");
        tableModel.setTableName("IB_WORKS_PLAN");
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
    @RequestMapping("works_plan_s-importExcel")
    public String importWorks_plan_sExport(@RequestParam("attachment") MultipartFile attachment, @RequestParam(value = "parentid", required = false) String parentid, HttpServletResponse response) {
        try {
            File file = new File("test.xls"); 
            attachment.transferTo(file);
            // 
            TableModel tableModel = new TableModel();
            // 列名
            tableModel.addHeaders("projectname", "productionmode", "productionaddress", "workingday", "starttime", "endtime", "id", "parentid");
            // 导入
            new ExcelCommon().uploadExcel(file, tableModel, "com.codegenerate.worksmanage.entity.Works_plan_sEntity");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/works_plan/works_plan-input.do?id=" + parentid;
    }
    /**
     * 删除子表信息
     */
    @RequestMapping("works_plan_s-remove")
    public String works_plan_sRemove(@RequestParam("works_plan_sSelectedItem") List<String> selectedItem, RedirectAttributes redirectAttributes) {
        List<Works_plan_sEntity> entitys = works_plan_sService.findByIds(selectedItem);
        String parentid = null;
        for (Works_plan_sEntity entity : entitys) {
            parentid = entity.getParentid();
            works_plan_sService.remove(entity);
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.delete", "删除成功");
        
        return "redirect:/works_plan/works_plan-input.do?id=" + parentid;
    }
    /**
     * 删除一条主表信息
     * @param selectedItem
     * @param redirectAttributes
     * @return
     */
    @RequestMapping("works_plan-remove")
    public String remove(@RequestParam("selectedItem") List<String> selectedItem, @RequestParam(value = "flowId", required = false) String flowId, RedirectAttributes redirectAttributes) {
        List<Works_planEntity> entitys = works_planService.findByIds(selectedItem);
        for (Works_planEntity entity : entitys) {
            works_planService.remove(entity);
        }
        messageHelper.addFlashMessage(redirectAttributes, "core.success.delete", "删除成功");

        return "redirect:/works_plan/works_plan-list.do?flowId=" + flowId;
    }
    
    // ======================================================================
    @Resource
    public void setMessageHelper(MessageHelper messageHelper) {
        this.messageHelper = messageHelper;
    }
    @Resource
    public void setWorks_planService(Works_planService works_planService) {
        this.works_planService = works_planService;
    }
        @Resource
	    public void setWorks_plan_sService(Works_plan_sService works_plan_sService) {
	        this.works_plan_sService = works_plan_sService;
	    }
}

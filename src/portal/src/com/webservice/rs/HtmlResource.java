package com.webservice.rs;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Component;

import com.codegenerate.designmanage.entity.Pp_demolition_imgEntity;
import com.codegenerate.designmanage.entity.Project_progressEntity;
import com.codegenerate.designmanage.service.Pp_demolition_imgService;
import com.codegenerate.designmanage.service.Project_progressService;
import com.ibusiness.base.group.dao.OrgCompanyDao;
import com.ibusiness.cms.entity.CmsArticle;
import com.ibusiness.cms.service.CmsArticleService;
import com.ibusiness.common.util.CommonUtils;
import com.ibusiness.core.spring.ApplicationContextHelper;
/**
 * 网页 HTML 通用接口
 * 
 * @author JiangBo
 *
 */
@Component
@Path("html")
public class HtmlResource {

	/**
	 * 首页初始化--图片
	 * @return
	 */
    @POST
    @GET
    @Path("initdata")
    @Produces(MediaType.APPLICATION_JSON)
    public JSONObject initdata() {
    	JSONObject jsonObject = new JSONObject();
    	jsonObject.put("name", "hello");
        return jsonObject;
    }
    
    /**
     * 查询文章信息列表
     * @return
     */
    @POST
    @GET
    @Path("html-cmsArticlelist")
    @Produces(MediaType.APPLICATION_JSON)
    public JSONArray cmsArticleList() {
    	List<CmsArticle> list = getCmsArticleService().getAll();
    	JSONArray jsonArray = new JSONArray();
    	for (CmsArticle bean : list ) {
    		JSONObject jsonObject = new JSONObject();
    		jsonObject.put("title", bean.getTitle());
    		jsonObject.put("id", bean.getId());
    		jsonArray.add(jsonObject);
    	}
        return jsonArray;
    }
    /**
     * 查询指定的文章信息
     */
    @POST
    @GET
    @Path("html-cmsArticleView")
    @Produces(MediaType.APPLICATION_JSON)
    public JSONObject cmsArticleView(@QueryParam("id") String id) {
    	CmsArticle bean = getCmsArticleService().get(id);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("title", bean.getTitle());
		jsonObject.put("content", bean.getContent());
		jsonObject.put("userName", bean.getUserId());
		jsonObject.put("creatTime", bean.getCreateTime());
        return jsonObject;
    }
    /**
     * 查询工程进度信息
     */
    @POST
    @GET
    @Path("html-project-progress")
    @Produces(MediaType.APPLICATION_JSON)
    public JSONObject projectProgress(@QueryParam("progressid") String progressid) {
    	Project_progressEntity bean = getProject_progressService().get(progressid);
		JSONObject jsonObject = CommonUtils.getJsonFromBean(bean, null);
        return jsonObject;
    }
    /**
     * 详细进度图片展示
     */
    @POST
    @GET
    @Path("html-progress-demolitionimg")
    @Produces(MediaType.APPLICATION_JSON)
    public JSONArray progressDemolitionimg(@QueryParam("progressid") String progressid) {
    	List<Pp_demolition_imgEntity> list = getPp_demolition_imgService().find("from Pp_demolition_imgEntity where parentid=?", progressid);
    	JSONArray array = CommonUtils.getJsonFromList(list, null);
        return array;
    }
    
    // ==================================================
    // 用户
    public OrgCompanyDao getOrgCompanyDao() {
        return ApplicationContextHelper.getBean(OrgCompanyDao.class);
    }
    // 公告文章管理表 Service
    public CmsArticleService getCmsArticleService() {
        return ApplicationContextHelper.getBean(CmsArticleService.class);
    }
    // 进度管理
    public Project_progressService getProject_progressService() {
        return ApplicationContextHelper.getBean(Project_progressService.class);
    }
    // 
    public Pp_demolition_imgService getPp_demolition_imgService() {
        return ApplicationContextHelper.getBean(Pp_demolition_imgService.class);
    }
}

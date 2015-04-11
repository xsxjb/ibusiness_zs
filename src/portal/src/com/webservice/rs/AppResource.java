package com.webservice.rs;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Component;

import com.codegenerate.designmanage.entity.Project_progressEntity;
import com.codegenerate.designmanage.service.Project_progressService;
import com.ibusiness.base.user.dao.UserBaseDao;
import com.ibusiness.base.user.entity.UserBase;
import com.ibusiness.common.util.CommonUtils;
import com.ibusiness.core.spring.ApplicationContextHelper;
import com.ibusiness.security.util.SimplePasswordEncoder;
/**
 * android APP通用接口
 * 
 * @author JiangBo
 *
 */
@Component
@Path("androidapp")
public class AppResource {

	/**
	 * 登录
	 */
	@POST
    @GET
    @Path("appLogin")
    @Produces(MediaType.APPLICATION_JSON)
	public JSONObject appLogin(@QueryParam("username") String username, @QueryParam("password") String password) {
		// 
		UserBase userBase = getUserBaseDao().findUniqueBy("username", username);
		JSONObject jsonObject = new JSONObject();
		if (null == userBase) {
    		 return jsonObject;
    	}
		Map<String, String> jsonMap = new HashMap<String, String>();
		// 密码验证
    	if (isPasswordValid(password, userBase.getPassword())) {
    		jsonMap.put("resulttext", "200");
			jsonMap.put("userid", userBase.getId());
			jsonObject.putAll(jsonMap);
    		return jsonObject;
    	} else {
    		jsonMap.put("resulttext", "301");
			jsonMap.put("userid", "");
			jsonObject.putAll(jsonMap);
    		return jsonObject;
    	}
	}
	/**
	 * 进度管理
	 */
	@SuppressWarnings("unchecked")
	@POST
    @GET
    @Path("project_progress-list")
    @Produces(MediaType.APPLICATION_JSON)
	public JSONObject projectProgress(@QueryParam("customername") String customername, @QueryParam("projectname") String projectname) {
		JSONObject jsonObject = new JSONObject();
		if (CommonUtils.isNull(customername) && CommonUtils.isNull(projectname)) {
			return jsonObject;
		}
		try {
			String hql = "from Project_progressEntity where customername like '%" + URLDecoder.decode(customername, "utf-8") + "%'";
			if (!CommonUtils.isNull(projectname)) {
				hql = hql + " AND projectname like '%" + URLDecoder.decode(projectname, "utf-8") + "%'";
			}
			List<Project_progressEntity> progressList = getProject_progressService().find(hql);
			if (null == progressList || progressList.size() < 1) {
				return jsonObject;
			}
			JSONArray array = CommonUtils.getJsonFromList(progressList, null);
			jsonObject.put("progresslist", array);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return jsonObject;
	}
    // ==================================================
    /**
     * 密码验证
     * @return
     */
    private boolean isPasswordValid(String rawPassword, String encodedPassword) {
    	SimplePasswordEncoder simplePasswordEncoder = getSimplePasswordEncoder();
        if (simplePasswordEncoder != null) {
            return simplePasswordEncoder.matches(rawPassword, encodedPassword);
        } else {
            return rawPassword.equals(encodedPassword);
        }
    }
    // ==================================================
    // 用户
    public UserBaseDao getUserBaseDao() {
        return ApplicationContextHelper.getBean(UserBaseDao.class);
    }
    // 密码验证
    public SimplePasswordEncoder getSimplePasswordEncoder() {
        return ApplicationContextHelper.getBean(SimplePasswordEncoder.class);
    }
    // 装饰进度管理
    public Project_progressService getProject_progressService() {
        return ApplicationContextHelper.getBean(Project_progressService.class);
    }
}

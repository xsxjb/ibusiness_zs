package com.codegenerate.worksmanage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.worksmanage.entity.Works_plan_sEntity;

/**   
 * @Title: Service
 * @Description: 工程施工计划表页面
 * @author JiangBo
 *
 */
@Service
@Transactional
public class Works_plan_sService extends HibernateEntityDao<Works_plan_sEntity> {
    /**
     * 插入
     * @param entity
     */
    public <T> void insert(T entity) {
        super.saveInsert(entity);
    }
    /**
     * 删除
     * @param entity
     */
    public void remove(Works_plan_sEntity entity) {
        super.remove(entity);
    }
}

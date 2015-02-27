package com.codegenerate.worksmanage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.worksmanage.entity.Materials_typeEntity;

/**   
 * @Title: Service
 * @Description: 原料分类表页面
 * @author JiangBo
 *
 */
@Service
@Transactional
public class Materials_typeService extends HibernateEntityDao<Materials_typeEntity> {
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
    public void remove(Materials_typeEntity entity) {
        super.remove(entity);
    }
}

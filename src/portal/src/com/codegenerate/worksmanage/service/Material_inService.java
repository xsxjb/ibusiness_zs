package com.codegenerate.worksmanage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.worksmanage.entity.Material_inEntity;

/**   
 * @Title: Service
 * @Description: 原料入库表流程
 * @author JiangBo
 *
 */
@Service
@Transactional
public class Material_inService extends HibernateEntityDao<Material_inEntity> {
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
    public void remove(Material_inEntity entity) {
        super.remove(entity);
    }
}

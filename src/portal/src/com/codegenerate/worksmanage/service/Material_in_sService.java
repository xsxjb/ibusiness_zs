package com.codegenerate.worksmanage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.worksmanage.entity.Material_in_sEntity;

/**   
 * @Title: Service
 * @Description: 原料入库表流程
 * @author JiangBo
 *
 */
@Service
@Transactional
public class Material_in_sService extends HibernateEntityDao<Material_in_sEntity> {
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
    public void remove(Material_in_sEntity entity) {
        super.remove(entity);
    }
}

package com.codegenerate.worksmanage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.worksmanage.entity.Warehouse_materialsEntity;

/**   
 * @Title: Service
 * @Description: 原料库存管理表页面
 * @author JiangBo
 *
 */
@Service
@Transactional
public class Warehouse_materialsService extends HibernateEntityDao<Warehouse_materialsEntity> {
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
    public void remove(Warehouse_materialsEntity entity) {
        super.remove(entity);
    }
}

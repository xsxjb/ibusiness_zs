package com.codegenerate.worksmanage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.worksmanage.entity.WarehouseEntity;

/**   
 * @Title: Service
 * @Description: 仓库信息页面
 * @author JiangBo
 *
 */
@Service
@Transactional
public class WarehouseService extends HibernateEntityDao<WarehouseEntity> {
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
    public void remove(WarehouseEntity entity) {
        super.remove(entity);
    }
}

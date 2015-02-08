package com.codegenerate.productmanage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.productmanage.entity.ProductEntity;

/**   
 * @Title: Service
 * @Description: 产品管理表页面
 * @author JiangBo
 *
 */
@Service
@Transactional
public class ProductService extends HibernateEntityDao<ProductEntity> {
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
    public void remove(ProductEntity entity) {
        super.remove(entity);
    }
}

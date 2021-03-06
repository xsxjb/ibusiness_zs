package com.codegenerate.personmannager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibusiness.common.page.HibernateEntityDao;
import com.codegenerate.personmannager.entity.Salary_enterEntity;

/**   
 * @Title: Service
 * @Description: 工资录入页面
 * @author JiangBo
 *
 */
@Service
@Transactional
public class Salary_enterService extends HibernateEntityDao<Salary_enterEntity> {
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
    public void remove(Salary_enterEntity entity) {
        super.remove(entity);
    }
}

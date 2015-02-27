package com.codegenerate.worksmanage.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codegenerate.worksmanage.entity.MaterialsType;
import com.ibusiness.common.page.HibernateEntityDao;

/**   
 * @Title: Service
 * @Description: 原料分类表页面
 * @author JiangBo
 *
 */
@Service
@Transactional
public class MaterialsTypeService extends HibernateEntityDao<MaterialsType> {
}

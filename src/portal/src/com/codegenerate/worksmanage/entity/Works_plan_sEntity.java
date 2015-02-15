package com.codegenerate.worksmanage.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;

/**   
 * @Title: Entity
 * @Description: 工程施工计划表页面
 * @author JiangBo
 *
 */
@Entity
@Table(name = "IB_WORKS_PLAN_S")
public class Works_plan_sEntity implements java.io.Serializable {
    private static final long serialVersionUID = 0L;
	/**projectname*/
	private java.lang.String projectname;
	/**productionmode*/
	private java.lang.String productionmode;
	/**productionaddress*/
	private java.lang.String productionaddress;
	/**workingday*/
	private java.lang.Integer workingday;
	/**starttime*/
	private java.util.Date starttime;
	/**endtime*/
	private java.util.Date endtime;
	/**id*/
	private java.lang.String id;
	/**parentid*/
	private java.lang.String parentid;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  projectname
	 */
	@Column(name ="PROJECTNAME",nullable=true,length=128)
	public java.lang.String getProjectname(){
		return this.projectname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  projectname
	 */
	public void setProjectname(java.lang.String projectname){
		this.projectname = projectname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  productionmode
	 */
	@Column(name ="PRODUCTIONMODE",nullable=true,length=64)
	public java.lang.String getProductionmode(){
		return this.productionmode;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  productionmode
	 */
	public void setProductionmode(java.lang.String productionmode){
		this.productionmode = productionmode;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  productionaddress
	 */
	@Column(name ="PRODUCTIONADDRESS",nullable=true,length=128)
	public java.lang.String getProductionaddress(){
		return this.productionaddress;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  productionaddress
	 */
	public void setProductionaddress(java.lang.String productionaddress){
		this.productionaddress = productionaddress;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  workingday
	 */
	@Column(name ="WORKINGDAY",nullable=true,precision=10,scale=0)
	public java.lang.Integer getWorkingday(){
		return this.workingday;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  workingday
	 */
	public void setWorkingday(java.lang.Integer workingday){
		this.workingday = workingday;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  starttime
	 */
	@Column(name ="STARTTIME",nullable=true)
	public java.util.Date getStarttime(){
		return this.starttime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  starttime
	 */
	public void setStarttime(java.util.Date starttime){
		this.starttime = starttime;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  endtime
	 */
	@Column(name ="ENDTIME",nullable=true)
	public java.util.Date getEndtime(){
		return this.endtime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  endtime
	 */
	public void setEndtime(java.util.Date endtime){
		this.endtime = endtime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  id
	 */
	
	@Id
	@Column(name ="ID",nullable=false,length=64)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  id
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  parentid
	 */
	@Column(name ="PARENTID",nullable=true,length=64)
	public java.lang.String getParentid(){
		return this.parentid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  parentid
	 */
	public void setParentid(java.lang.String parentid){
		this.parentid = parentid;
	}
}

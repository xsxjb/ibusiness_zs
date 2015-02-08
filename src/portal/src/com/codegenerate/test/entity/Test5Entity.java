package com.codegenerate.test.entity;

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
 * @Description: 测试表5页面
 * @author JiangBo
 *
 */
@Entity
@Table(name = "IB_TEST5")
public class Test5Entity implements java.io.Serializable {
    private static final long serialVersionUID = 0L;
	/**scopeid*/
	private java.lang.String scopeid;
	/**id*/
	private java.lang.String id;
	/**bookname*/
	private java.lang.String bookname;
	/**username*/
	private java.lang.String username;
	/**remark1*/
	private java.lang.String remark1;
	/**exc*/
	private java.lang.String exc;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  scopeid
	 */
	@Column(name ="SCOPEID",nullable=true,length=64)
	public java.lang.String getScopeid(){
		return this.scopeid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  scopeid
	 */
	public void setScopeid(java.lang.String scopeid){
		this.scopeid = scopeid;
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
	 *@return: java.lang.String  bookname
	 */
	@Column(name ="BOOKNAME",nullable=true,length=63)
	public java.lang.String getBookname(){
		return this.bookname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  bookname
	 */
	public void setBookname(java.lang.String bookname){
		this.bookname = bookname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  username
	 */
	@Column(name ="USERNAME",nullable=true,length=64)
	public java.lang.String getUsername(){
		return this.username;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  username
	 */
	public void setUsername(java.lang.String username){
		this.username = username;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  remark1
	 */
	@Column(name ="REMARK1",nullable=true,length=128)
	public java.lang.String getRemark1(){
		return this.remark1;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  remark1
	 */
	public void setRemark1(java.lang.String remark1){
		this.remark1 = remark1;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  exc
	 */
	@Column(name ="EXC",nullable=true,length=512)
	public java.lang.String getExc(){
		return this.exc;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  exc
	 */
	public void setExc(java.lang.String exc){
		this.exc = exc;
	}
}

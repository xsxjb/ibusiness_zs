package com.codegenerate.budgetmanage.entity;

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
 * @Description: 预算月度计划执行情况分析汇总表流程
 * @author JiangBo
 *
 */
@Entity
@Table(name = "IB_MONTHPLANANALYSIS")
public class MonthplananalysisEntity implements java.io.Serializable {
    private static final long serialVersionUID = 0L;
	/**planyear*/
	private java.lang.String planyear;
	/**planmonth*/
	private java.lang.String planmonth;
	/**planname*/
	private java.lang.String planname;
	/**deptname*/
	private java.lang.String deptname;
	/**eventtime*/
	private java.util.Date eventtime;
	/**planno*/
	private java.lang.String planno;
	/**annualplanamount*/
	private java.lang.Double annualplanamount;
	/**annualplanbalance*/
	private java.lang.Double annualplanbalance;
	/**monthplanamount*/
	private java.lang.Double monthplanamount;
	/**monthamount*/
	private java.lang.Double monthamount;
	/**sumplanamount*/
	private java.lang.Double sumplanamount;
	/**sumamount*/
	private java.lang.Double sumamount;
	/**deptleader*/
	private java.lang.String deptleader;
	/**planner*/
	private java.lang.String planner;
	/**id*/
	private java.lang.String id;
	/**executionid*/
	private java.lang.String executionid;
	/**createdatebpm*/
	private java.util.Date createdatebpm;
	/**nodename*/
	private java.lang.String nodename;
	/**username*/
	private java.lang.String username;
	/**assigneeuser*/
	private java.lang.String assigneeuser;
	/**doneflag*/
	private java.lang.Integer doneflag;
	/**tasktitle*/
	private java.lang.String tasktitle;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  planyear
	 */
	@Column(name ="PLANYEAR",nullable=true,length=8)
	public java.lang.String getPlanyear(){
		return this.planyear;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  planyear
	 */
	public void setPlanyear(java.lang.String planyear){
		this.planyear = planyear;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  planmonth
	 */
	@Column(name ="PLANMONTH",nullable=true,length=4)
	public java.lang.String getPlanmonth(){
		return this.planmonth;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  planmonth
	 */
	public void setPlanmonth(java.lang.String planmonth){
		this.planmonth = planmonth;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  planname
	 */
	@Column(name ="PLANNAME",nullable=true,length=128)
	public java.lang.String getPlanname(){
		return this.planname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  planname
	 */
	public void setPlanname(java.lang.String planname){
		this.planname = planname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  deptname
	 */
	@Column(name ="DEPTNAME",nullable=true,length=64)
	public java.lang.String getDeptname(){
		return this.deptname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  deptname
	 */
	public void setDeptname(java.lang.String deptname){
		this.deptname = deptname;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  eventtime
	 */
	@Column(name ="EVENTTIME",nullable=true)
	public java.util.Date getEventtime(){
		return this.eventtime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  eventtime
	 */
	public void setEventtime(java.util.Date eventtime){
		this.eventtime = eventtime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  planno
	 */
	@Column(name ="PLANNO",nullable=true,length=64)
	public java.lang.String getPlanno(){
		return this.planno;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  planno
	 */
	public void setPlanno(java.lang.String planno){
		this.planno = planno;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  annualplanamount
	 */
	@Column(name ="ANNUALPLANAMOUNT",nullable=true,precision=12,scale=2)
	public java.lang.Double getAnnualplanamount(){
		return this.annualplanamount;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  annualplanamount
	 */
	public void setAnnualplanamount(java.lang.Double annualplanamount){
		this.annualplanamount = annualplanamount;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  annualplanbalance
	 */
	@Column(name ="ANNUALPLANBALANCE",nullable=true,precision=12,scale=2)
	public java.lang.Double getAnnualplanbalance(){
		return this.annualplanbalance;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  annualplanbalance
	 */
	public void setAnnualplanbalance(java.lang.Double annualplanbalance){
		this.annualplanbalance = annualplanbalance;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  monthplanamount
	 */
	@Column(name ="MONTHPLANAMOUNT",nullable=true,precision=12,scale=2)
	public java.lang.Double getMonthplanamount(){
		return this.monthplanamount;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  monthplanamount
	 */
	public void setMonthplanamount(java.lang.Double monthplanamount){
		this.monthplanamount = monthplanamount;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  monthamount
	 */
	@Column(name ="MONTHAMOUNT",nullable=true,precision=12,scale=2)
	public java.lang.Double getMonthamount(){
		return this.monthamount;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  monthamount
	 */
	public void setMonthamount(java.lang.Double monthamount){
		this.monthamount = monthamount;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  sumplanamount
	 */
	@Column(name ="SUMPLANAMOUNT",nullable=true,precision=12,scale=2)
	public java.lang.Double getSumplanamount(){
		return this.sumplanamount;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  sumplanamount
	 */
	public void setSumplanamount(java.lang.Double sumplanamount){
		this.sumplanamount = sumplanamount;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  sumamount
	 */
	@Column(name ="SUMAMOUNT",nullable=true,precision=12,scale=2)
	public java.lang.Double getSumamount(){
		return this.sumamount;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  sumamount
	 */
	public void setSumamount(java.lang.Double sumamount){
		this.sumamount = sumamount;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  deptleader
	 */
	@Column(name ="DEPTLEADER",nullable=true,length=512)
	public java.lang.String getDeptleader(){
		return this.deptleader;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  deptleader
	 */
	public void setDeptleader(java.lang.String deptleader){
		this.deptleader = deptleader;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  planner
	 */
	@Column(name ="PLANNER",nullable=true,length=512)
	public java.lang.String getPlanner(){
		return this.planner;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  planner
	 */
	public void setPlanner(java.lang.String planner){
		this.planner = planner;
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
	 *@return: java.lang.String  executionid
	 */
	@Column(name ="EXECUTIONID",nullable=true,length=64)
	public java.lang.String getExecutionid(){
		return this.executionid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  executionid
	 */
	public void setExecutionid(java.lang.String executionid){
		this.executionid = executionid;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  createdatebpm
	 */
	@Column(name ="CREATEDATEBPM",nullable=true)
	public java.util.Date getCreatedatebpm(){
		return this.createdatebpm;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  createdatebpm
	 */
	public void setCreatedatebpm(java.util.Date createdatebpm){
		this.createdatebpm = createdatebpm;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  nodename
	 */
	@Column(name ="NODENAME",nullable=true,length=128)
	public java.lang.String getNodename(){
		return this.nodename;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  nodename
	 */
	public void setNodename(java.lang.String nodename){
		this.nodename = nodename;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  username
	 */
	@Column(name ="USERNAME",nullable=true,length=128)
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
	 *@return: java.lang.String  assigneeuser
	 */
	@Column(name ="ASSIGNEEUSER",nullable=true,length=64)
	public java.lang.String getAssigneeuser(){
		return this.assigneeuser;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  assigneeuser
	 */
	public void setAssigneeuser(java.lang.String assigneeuser){
		this.assigneeuser = assigneeuser;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  doneflag
	 */
	@Column(name ="DONEFLAG",nullable=true,precision=10,scale=0)
	public java.lang.Integer getDoneflag(){
		return this.doneflag;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  doneflag
	 */
	public void setDoneflag(java.lang.Integer doneflag){
		this.doneflag = doneflag;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  tasktitle
	 */
	@Column(name ="TASKTITLE",nullable=true,length=256)
	public java.lang.String getTasktitle(){
		return this.tasktitle;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  tasktitle
	 */
	public void setTasktitle(java.lang.String tasktitle){
		this.tasktitle = tasktitle;
	}
}

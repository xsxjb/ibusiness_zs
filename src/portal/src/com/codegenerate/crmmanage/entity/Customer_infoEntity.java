package com.codegenerate.crmmanage.entity;

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
 * @Description: 客户信息表页面
 * @author JiangBo
 *
 */
@Entity
@Table(name = "IB_CUSTOMER_INFO")
public class Customer_infoEntity implements java.io.Serializable {
    private static final long serialVersionUID = 0L;
	/**id*/
	private java.lang.String id;
	/**customerno*/
	private java.lang.String customerno;
	/**customername*/
	private java.lang.String customername;
	/**customeraddress*/
	private java.lang.String customeraddress;
	/**phone*/
	private java.lang.String phone;
	/**telephone*/
	private java.lang.String telephone;
	/**salesmanager*/
	private java.lang.String salesmanager;
	/**relationshipstatus*/
	private java.lang.String relationshipstatus;
	/**province*/
	private java.lang.String province;
	/**city*/
	private java.lang.String city;
	/**customernature*/
	private java.lang.String customernature;
	/**cooperationinfo*/
	private java.lang.String cooperationinfo;
	/**invoicename*/
	private java.lang.String invoicename;
	/**bank*/
	private java.lang.String bank;
	/**accountno*/
	private java.lang.String accountno;
	/**taxid*/
	private java.lang.String taxid;
	/**invoiceuser*/
	private java.lang.String invoiceuser;
	/**invoiceusertel*/
	private java.lang.String invoiceusertel;
	/**invoicemailunitname*/
	private java.lang.String invoicemailunitname;
	/**mailaddress*/
	private java.lang.String mailaddress;
	/**invoiczip*/
	private java.lang.String invoiczip;
	/**invoicaddressee*/
	private java.lang.String invoicaddressee;
	
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
	 *@return: java.lang.String  customerno
	 */
	@Column(name ="CUSTOMERNO",nullable=true,length=64)
	public java.lang.String getCustomerno(){
		return this.customerno;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  customerno
	 */
	public void setCustomerno(java.lang.String customerno){
		this.customerno = customerno;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  customername
	 */
	@Column(name ="CUSTOMERNAME",nullable=true,length=64)
	public java.lang.String getCustomername(){
		return this.customername;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  customername
	 */
	public void setCustomername(java.lang.String customername){
		this.customername = customername;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  customeraddress
	 */
	@Column(name ="CUSTOMERADDRESS",nullable=true,length=512)
	public java.lang.String getCustomeraddress(){
		return this.customeraddress;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  customeraddress
	 */
	public void setCustomeraddress(java.lang.String customeraddress){
		this.customeraddress = customeraddress;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  phone
	 */
	@Column(name ="PHONE",nullable=true,length=32)
	public java.lang.String getPhone(){
		return this.phone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  phone
	 */
	public void setPhone(java.lang.String phone){
		this.phone = phone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  telephone
	 */
	@Column(name ="TELEPHONE",nullable=true,length=32)
	public java.lang.String getTelephone(){
		return this.telephone;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  telephone
	 */
	public void setTelephone(java.lang.String telephone){
		this.telephone = telephone;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  salesmanager
	 */
	@Column(name ="SALESMANAGER",nullable=true,length=32)
	public java.lang.String getSalesmanager(){
		return this.salesmanager;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  salesmanager
	 */
	public void setSalesmanager(java.lang.String salesmanager){
		this.salesmanager = salesmanager;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  relationshipstatus
	 */
	@Column(name ="RELATIONSHIPSTATUS",nullable=true,length=16)
	public java.lang.String getRelationshipstatus(){
		return this.relationshipstatus;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  relationshipstatus
	 */
	public void setRelationshipstatus(java.lang.String relationshipstatus){
		this.relationshipstatus = relationshipstatus;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  province
	 */
	@Column(name ="PROVINCE",nullable=true,length=16)
	public java.lang.String getProvince(){
		return this.province;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  province
	 */
	public void setProvince(java.lang.String province){
		this.province = province;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  city
	 */
	@Column(name ="CITY",nullable=true,length=16)
	public java.lang.String getCity(){
		return this.city;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  city
	 */
	public void setCity(java.lang.String city){
		this.city = city;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  customernature
	 */
	@Column(name ="CUSTOMERNATURE",nullable=true,length=16)
	public java.lang.String getCustomernature(){
		return this.customernature;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  customernature
	 */
	public void setCustomernature(java.lang.String customernature){
		this.customernature = customernature;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  cooperationinfo
	 */
	@Column(name ="COOPERATIONINFO",nullable=true,length=2)
	public java.lang.String getCooperationinfo(){
		return this.cooperationinfo;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  cooperationinfo
	 */
	public void setCooperationinfo(java.lang.String cooperationinfo){
		this.cooperationinfo = cooperationinfo;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  invoicename
	 */
	@Column(name ="INVOICENAME",nullable=true,length=64)
	public java.lang.String getInvoicename(){
		return this.invoicename;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  invoicename
	 */
	public void setInvoicename(java.lang.String invoicename){
		this.invoicename = invoicename;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  bank
	 */
	@Column(name ="BANK",nullable=true,length=64)
	public java.lang.String getBank(){
		return this.bank;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  bank
	 */
	public void setBank(java.lang.String bank){
		this.bank = bank;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  accountno
	 */
	@Column(name ="ACCOUNTNO",nullable=true,length=32)
	public java.lang.String getAccountno(){
		return this.accountno;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  accountno
	 */
	public void setAccountno(java.lang.String accountno){
		this.accountno = accountno;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  taxid
	 */
	@Column(name ="TAXID",nullable=true,length=32)
	public java.lang.String getTaxid(){
		return this.taxid;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  taxid
	 */
	public void setTaxid(java.lang.String taxid){
		this.taxid = taxid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  invoiceuser
	 */
	@Column(name ="INVOICEUSER",nullable=true,length=32)
	public java.lang.String getInvoiceuser(){
		return this.invoiceuser;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  invoiceuser
	 */
	public void setInvoiceuser(java.lang.String invoiceuser){
		this.invoiceuser = invoiceuser;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  invoiceusertel
	 */
	@Column(name ="INVOICEUSERTEL",nullable=true,length=16)
	public java.lang.String getInvoiceusertel(){
		return this.invoiceusertel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  invoiceusertel
	 */
	public void setInvoiceusertel(java.lang.String invoiceusertel){
		this.invoiceusertel = invoiceusertel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  invoicemailunitname
	 */
	@Column(name ="INVOICEMAILUNITNAME",nullable=true,length=64)
	public java.lang.String getInvoicemailunitname(){
		return this.invoicemailunitname;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  invoicemailunitname
	 */
	public void setInvoicemailunitname(java.lang.String invoicemailunitname){
		this.invoicemailunitname = invoicemailunitname;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  mailaddress
	 */
	@Column(name ="MAILADDRESS",nullable=true,length=128)
	public java.lang.String getMailaddress(){
		return this.mailaddress;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  mailaddress
	 */
	public void setMailaddress(java.lang.String mailaddress){
		this.mailaddress = mailaddress;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  invoiczip
	 */
	@Column(name ="INVOICZIP",nullable=true,length=10)
	public java.lang.String getInvoiczip(){
		return this.invoiczip;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  invoiczip
	 */
	public void setInvoiczip(java.lang.String invoiczip){
		this.invoiczip = invoiczip;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  invoicaddressee
	 */
	@Column(name ="INVOICADDRESSEE",nullable=true,length=64)
	public java.lang.String getInvoicaddressee(){
		return this.invoicaddressee;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  invoicaddressee
	 */
	public void setInvoicaddressee(java.lang.String invoicaddressee){
		this.invoicaddressee = invoicaddressee;
	}
}

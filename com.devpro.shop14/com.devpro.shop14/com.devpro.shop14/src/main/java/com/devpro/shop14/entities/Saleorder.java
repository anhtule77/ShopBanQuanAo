package com.devpro.shop14.entities;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tbl_saleorder")
public class Saleorder extends BaseEntity{
	@Column(name = "code", length = 45, nullable = false)
	private String code;
	
	@Column(name = "user_id", nullable = true)
	private Integer user_id;
	
	@Column(name="total", precision = 13, scale = 2, nullable = true)
	private BigDecimal total;
	
	@Column(name = "customer_name", length = 100, nullable = true)
	private String customer_name;
	
	@Column(name = "customer_address", length = 100, nullable = true)
	private String customer_address;
	
	@Column(name = "seo", length = 200, nullable = true)
	private String seo;
	
	@Column(name = "customer_phone", length = 100, nullable = true)
	private String customer_phone;
	
	@Column(name = "cutomer_email", length = 100, nullable = true)
	private String cutomer_email;
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "saleorder")
	private Set<Saleorder_products>saleorder_products = new HashSet<Saleorder_products>();

	/**
	 * them  1 san pham vao danh sach @OneToMany
	 * @param product
	 */
	public void addRelationSaleorder_products(Saleorder_products saleorder_product) {
		saleorder_products.add(saleorder_product);
		saleorder_product.setSaleorder(this);
	}

	/**
	 * xoa san pham khoi danh sach @OneToMany
	 * @param product
	 */
	public void deleteRelationSaleorder_products(Saleorder_products saleorder_product) {
		saleorder_products.remove(saleorder_product);
		saleorder_product.setSaleorder(null);
	}
	
	public Set<Saleorder_products> getSaleorder_products() {
		return saleorder_products;
	}

	public void setSaleorder_products(Set<Saleorder_products> saleorder_products) {
		this.saleorder_products = saleorder_products;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_address() {
		return customer_address;
	}

	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCutomer_email() {
		return cutomer_email;
	}

	public void setCutomer_email(String cutomer_email) {
		this.cutomer_email = cutomer_email;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	
	
}

package com.devpro.shop14.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder_products")
public class Saleorder_products extends BaseEntity{
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private Product product;

	@Column(name = "quality",nullable = true)
	private Integer quality;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "saleorder_id")
	private Saleorder saleorder;


	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	public Integer getQuality() {
		return quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}

	public Saleorder getSaleorder() {
		return saleorder;
	}

	public void setSaleorder(Saleorder saleorder) {
		this.saleorder = saleorder;
	}
}

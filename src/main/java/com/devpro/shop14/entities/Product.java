package com.devpro.shop14.entities;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tbl_products")
public class Product extends BaseEntity {
	@Column(name ="title", length = 1000, nullable = false)
	private String title;
	
	@Column(name = "price",precision = 13, scale = 0,nullable = false)
	private BigDecimal price;
	
	@Column(name = "quantity")
	private Integer quantity;
	
	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Column(name ="short_description", length = 3000, nullable = false)
	private String short_description;
	
	@Lob
	@Column(name = "detail_description", nullable =false, columnDefinition = "LONGTEXT")
	private String detail;
	
	@Column(name = "avatar", length = 200, nullable = true)
	private String avatar;
	
	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;
	
	@Column(name = "size", length = 50, nullable = true)
	private String size;
	
	@Column(name = "is_hot",nullable = false )
	private Boolean is_hot = Boolean.FALSE;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Categories categories;
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "product")
	private Set<Product_images>product_images = new HashSet<Product_images>();
	
	//cascade: khi xóa ở cha thì xóa cả ở con
	// fetch: eager khi select 1 category tất cả sp liên quan đến category trả về theo. lazy thì ngược lại
	/** nếu ít thì dùng eager, nhiều thì dùng lazy
	 * them  1 san pham vao danh sach @OneToMany
	 * @param product
	 */
	public void addRelationProduct_images(Product_images product_image) {
		product_images.add(product_image);
		product_image.setProduct(this);
	}

	/**
	 * xoa san pham khoi danh sach @OneToMany
	 * @param product
	 */
	public void deleteRelationProduct_images(Product_images product_image) {
		product_images.remove(product_image);
		product_image.setProduct(null);
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getShort_description() {
		return short_description;
	}

	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Boolean getIs_hot() {
		return is_hot;
	}

	public void setIs_hot(Boolean is_hot) {
		this.is_hot = is_hot;
	}
	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}
	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	public Set<Product_images> getProduct_images() {
		return product_images;
	}

	public void setProduct_images(Set<Product_images> product_images) {
		this.product_images = product_images;
	}
	
}

package com.example.jpetstore.domain;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class Product implements Serializable {

	/* Private Fields */

	private int productId;
	private int categoryId;
	private String sellerId;
	private String title;
	private String description;
	private String productStatus;
	private Date createdTime;
	private String shipping;
	private int shippingFee;
	private int price;
	
	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}

	public String getShipping() {
		return shipping;
	}

	public void setShipping(String shipping) {
		this.shipping = shipping;
	}

	public int getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(int shippingFee) {
		this.shippingFee = shippingFee;
	}
	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", categoryId=" + categoryId + ", sellerId=" + sellerId + ", title="
				+ title + ", description=" + description + ", productStatus=" + productStatus + ", createdTime="
				+ createdTime + ", shipping=" + shipping + ", shippingFee=" + shippingFee + ", price=" + price + "]";
	}

}

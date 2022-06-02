package com.example.jpetstore.domain;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Bidding implements Serializable {
	
	private int biddingId;
	private Date updateDate;
	private int biddingPrice;
	private int productId;
	private int buyerId;
	public int getBiddingId() {
		return biddingId;
	}
	public void setBiddingId(int biddingId) {
		this.biddingId = biddingId;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public int getBiddingPrice() {
		return biddingPrice;
	}
	public void setBiddingPrice(int biddingPrice) {
		this.biddingPrice = biddingPrice;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	
	
}

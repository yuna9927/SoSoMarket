package com.example.jpetstore.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.support.PagedListHolder;

@SuppressWarnings("serial")
public class Auction implements Serializable {

	/* Private Fields */

	private int auctionId;
	private Product product;
	private int currentPrice;
	private int startPrice;
	private Date deadLine;
	private List<Bidding> biddingList = new ArrayList<Bidding>();

	public int getAuctionId() {
		return auctionId;
	}

	public void setAuctionId(int auctionId) {
		this.auctionId = auctionId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(int currentPrice) {
		this.currentPrice = currentPrice;
	}

	public int getStartPrice() {
		return startPrice;
	}

	public void setStartPrice(int startPrice) {
		this.startPrice = startPrice;
	}

	public Date getDeadLine() {
		return deadLine;
	}

	public void setDeadLine(Date deadLine) {
		this.deadLine = deadLine;
	}

	public void setBiddingList(List<Bidding> biddingList) {
		this.biddingList = biddingList;
	}

	public List<Bidding> getBiddingList() {
		return biddingList;
	}
	
	//구현필요
	public boolean getPriceValidate(String auctionId, int biddingPrice) {
		return true;
	}
}
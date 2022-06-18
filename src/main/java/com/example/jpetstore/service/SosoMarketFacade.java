package com.example.jpetstore.service;

import java.util.List;

import com.example.jpetstore.domain.Account;
import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.Bidding;
import com.example.jpetstore.domain.Category;
import com.example.jpetstore.domain.Item;
import com.example.jpetstore.domain.Order;
import com.example.jpetstore.domain.Product;

public interface SosoMarketFacade {

	/* Account */
	Account getAccount(String accountId);

	Account getAccount(String accountId, String password);

	void insertAccount(Account account);

	void updateAccount(Account account);

	void deleteAccount(String accountId);


//	List<Category> getCategoryList();

//	Category getCategory(String categoryId);
	

	/* Product */
	List<Product> getProductListByUser(String accountId);

//	List<Product> getProductListByCategory(int categoryId);

	List<Product> searchProductList(String keyword);

	Product getProduct(int productId);

	List<Product> getAllProduct();

	void updateProduct(Product product);

	void insertProduct(Product product);
	
//	void insertAuction(Auction auction);

	void deleteProduct(int productId);

	void updateProductStatus(Product product);
	
	/* auction */
	
	List<Auction> getAuctionListByUser(String accountId);

	List<Auction> getAuctionListByCategory(int categoryId);

	List<Auction> searchAuctionList(String keyword);

	Auction getAuction(int auctionId);

	List<Auction> getAllAuction();

	void updateAuction(int auctionId);

	void insertAuction(Auction auction);

	void deleteAuction(int auctionId);

	void updateAuctionStatus(Auction auction);


	/* Bidding */

	void insertBidding(Auction bidding);

	Bidding getBidding(int biddingId);

	List<Bidding> getBiddingsByUser(String accountId);

	List<Bidding> getBiddingsByAuction(int auctionId);
	
	

	List<Item> getItemListByProduct(String productId);

	Item getItem(String itemId);

	boolean isItemInStock(String itemId);


	/* order */
	
	void insertOrder(Order order);

	Order getOrderByBuyer(int orderId);
	
	Order getOrderBySeller(int orderId);

	
	List<Order> getOrderListByBuyer(String accountId);

	List<Order> getOrderListBySeller(String accountId);

	void updateOrderStatus(Order order);
	

}
package com.example.jpetstore.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.example.jpetstore.dao.AccountDao;
import com.example.jpetstore.dao.CategoryDao;
import com.example.jpetstore.dao.ItemDao;
import com.example.jpetstore.dao.OrderDao;
import com.example.jpetstore.dao.ProductDao;
import com.example.jpetstore.domain.Account;
import com.example.jpetstore.domain.Category;
import com.example.jpetstore.domain.Item;
import com.example.jpetstore.domain.Order;
import com.example.jpetstore.domain.Product;

/**
 * JPetStore primary business object.
 * 
 * <p>This object makes use of five DAO objects, decoupling it
 * from the details of working with persistence APIs. So
 * although this application uses iBATIS for data access,
 * a different persistence tool could be dropped in without
 * breaking this class.
 *
 * <p>The DAOs are made available to the instance of this object
 * using Dependency Injection. (The DAOs are in turn configured using
 * Dependency Injection themselves.) We use Setter Injection here,
 * exposing JavaBean setter methods for each DAO. This means there is
 * a JavaBean property for each DAO. In the present case, the properties
 * are write-only: there are no corresponding getter methods. Getter
 * methods for configuration properties are optional: Implement them
 * only if you want to expose those properties to other business objects.
 *
 * <p>There is one instance of this class in the JPetStore application.
 * In Spring terminology, it is a "singleton", referring to a
 * per-Application Context singleton. The factory creates a single
 * instance; there is no need for a private constructor, static
 * factory method etc as in the traditional implementation of
 * the Singleton Design Pattern. 
 *
 * <p>This is a POJO. It does not depend on any Spring APIs.
 * It's usable outside a Spring container, and can be instantiated
 * using new in a JUnit test. However, we can still apply declarative
 * transaction management to it using Spring AOP.
 *
 * <p>This class defines a default transaction annotation for all methods.
 *
 * @author Juergen Hoeller
 * @since 30.11.2003
 * @modified by Changsup Park
 */
@Service
@Transactional
public class SosoMarketImpl implements SosoMarketFacade { 
	@Autowired
	private AccountDao accountDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private ItemDao itemDao;
	@Autowired
	private OrderDao orderDao;

	//-------------------------------------------------------------------------
	// Operation methods, implementing the PetStoreFacade interface
	//-------------------------------------------------------------------------

	public Account getAccount(String accountId) {
		return accountDao.getAccount(accountId);
	}

	public Account getAccount(String accountId, String password) {
		return accountDao.getAccountLogIn(accountId, password);
	}

	public void insertAccount(Account account) {
		accountDao.insertAccount(account);
	}

	public void updateAccount(Account account) {
		accountDao.updateAccount(account);
	}

//	public void deleteAccount(Account accountId) {
//		accountDao.deleteAccount(accountId);
//	}

//	public void updateWithdraw(Account accountId) {
//		accountDao.updateWithdraw(accountId);
//	}
//	
	//

//	public List<Category> getCategoryList() {
//		return categoryDao.getCategoryList();
//	}

	/* Product */

//	public List<Product> getProductListByCategory(String categoryId) {
//		return productDao.getProductListByCategory(categoryId);
//	}

	public List<Product> getProductListByUser(String accountId) {
		return productDao.getProductListByUser(accountId);
	}

	public List<Product> searchProductList(String keyword) {
		return productDao.searchProductList(keyword);
	}

	public Product getProduct(int productId) {
		return productDao.getProduct(productId);
	}

//	public List<Product> getAllProduct() {
//		return productDao.getAllProduct();
//	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
	}

	public void insertProduct(Product product) {
		productDao.insertProduct(product);
	}

	public void deleteProduct(int productId) {
		productDao.deleteProduct(productId);
	}

	public void updateProductStatus(Product product) {
		productDao.updateProductStatus(product);
	}

	/* auction */
/*
	public List<Auction> getAuctionListByUser(String accountId) {
		return auctionDao.getAuctionListByUser(accountId);
	}

	public List<Auction> getAuctionListByCategory(int categoryId) {
		return auctionDao.getAuctionListByCategory(categoryId);
	}

	public List<Auction> searchAuctionList(String keyword) {
		return auctionDao.searchAuctionList(keywords);
	}

	public Auction getAuction(int auctionId) {
		return auctionDao.getAuction(auctionId);
	}
	
	public void insertAuction(Auction auction) {
		auctionDao.insertAuction(auction);
	}

	public void deleteAuction(int auctionId) {
		auctionDao.deleteAuction(auctionId);
	}

	public void updateAuctionStatus(Auction auction) {
		auctionDao.updateAuctionStatus(auction);
	}

	/* Bidding */
/*
	public void insertBidding(Auction bidding) {
		biddingDao.insertBidding(bidding);
	}

	public Bidding getBidding(int biddingId) {
		return biddingDao.getBidding(biddingId);
	}

	public List<Bidding> getBiddingsByUser(String accountId) {
		return biddingDao.getBiddingsByUser(accountId);
	}

	public List<Bidding> getBiddingsByProduct(int auctionId) {
		return biddingDao.getBiddingsByProduct(auctionId);
	}
	*/

	public List<Item> getItemListByProduct(String productId) {
		return itemDao.getItemListByProduct(productId);
	}

	public Item getItem(String itemId) {
		return itemDao.getItem(itemId);
	}

	public boolean isItemInStock(String itemId) {
		return itemDao.isItemInStock(itemId);
	}

	/* order */

	public void insertOrder(Order order) {
		orderDao.insertOrder(order);
	}

	public Order getOrder(int orderId) {
		return orderDao.getOrder(orderId);
	}

	public List<Order> getOrderListByBuyer(String accountId) {
		return orderDao.getOrderListByBuyer(accountId);
	}

	public List<Order> getOrderListBySeller(String accountId) {
		return orderDao.getOrderListBySeller(accountId);
	}

	public void updateOrderStatus(Order order) {
		orderDao.updateOrderStatus(order);
	}

	
}
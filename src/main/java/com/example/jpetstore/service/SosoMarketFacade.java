package com.example.jpetstore.service;

import java.util.List;

import com.example.jpetstore.domain.Account;
import com.example.jpetstore.domain.Category;
import com.example.jpetstore.domain.Item;
import com.example.jpetstore.domain.Order;
import com.example.jpetstore.domain.Product;

/**
 * JPetStore's central business interface.
 *
 * @author Juergen Hoeller
 * @since 30.11.2003
 */
public interface SosoMarketFacade {

	/* Account */
	Account getAccount(String accountId);

	Account getAccount(String accountId, String password);

	void insertAccount(Account account);

	void updateAccount(Account account);

	void deleteAccount(String accountId);


//	List<Category> getCategoryList();

	Category getCategory(String categoryId);
	

	/* Product */
	List<Product> getProductListByUser(String accountId);

	List<Product> getProductListByCategory(int categoryId);

	List<Product> searchProductList(String keyword);

	Product getProduct(int productId);

	List<Product> getAllProduct();

	void updateProduct(int productId);

	void insertProduct(Product product);
	
//	void insertAuction(Auction auction);

	void deleteProduct(int productId);

	void updateProductStatus(Product product);
	
	

	List<Item> getItemListByProduct(String productId);

	Item getItem(String itemId);

	boolean isItemInStock(String itemId);


	void insertOrder(Order order);

	Order getOrder(int orderId);

	List<Order> getOrdersByUsername(String username);

}
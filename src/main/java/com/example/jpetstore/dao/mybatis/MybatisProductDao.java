package com.example.jpetstore.dao.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.jpetstore.dao.ProductDao;
import com.example.jpetstore.dao.mybatis.mapper.ProductMapper;
import com.example.jpetstore.domain.Product;

@Repository
public class MybatisProductDao implements ProductDao {
	@Autowired
	private ProductMapper productMapper;
	
	public List<Product> getProductListByCategory(int categoryId) throws DataAccessException {
		return productMapper.getProductListByCategory(categoryId);
	}

	public List<Product> getProductListByUser(String accountId) throws DataAccessException {
		return productMapper.getProductListByUser(accountId);
	}
	
	public List<Product> searchProductList(String keywords) 
			throws DataAccessException {
	    return productMapper.searchProductList(
	    	"%" + keywords.toLowerCase() + "%");
	}
	
	/* Inner Classes */
	public static class ProductSearch {

		private List<String> keywordList = new ArrayList<String>();

		public ProductSearch(String keywords) {
			StringTokenizer splitter = new StringTokenizer(keywords," ",false);
			while (splitter.hasMoreTokens()) {
				this.keywordList.add("%" + splitter.nextToken() + "%");
			}
		}
		public List<String> getKeywordList() {
			return keywordList;
		}
	}
	
	public List<Product> getAllProductList() throws DataAccessException {
		return productMapper.getAllProductList();
	}
	
	public Product getProduct(int productId) throws DataAccessException {
	    return productMapper.getProduct(productId);
	}

	public void updateProduct(Product product) throws DataAccessException {
		productMapper.updateProduct(product);
	}

	public void insertProduct(Product product) throws DataAccessException {
		productMapper.insertProduct(product);
	}

	public void deleteProduct(int productId) throws DataAccessException {
		productMapper.deleteProduct(productId);
	}

	public void updateProductStatus(Product product) throws DataAccessException {
		productMapper.updateProductStatus(product);
	}	
}

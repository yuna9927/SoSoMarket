package com.example.jpetstore.dao;

import java.util.List;
import org.springframework.dao.DataAccessException;
import com.example.jpetstore.domain.Auction;

public interface AuctionDao {
	
	Auction getAuction(int productId) throws DataAccessException;

	void insertAuction(Auction auction) throws DataAccessException;
	  
	void deleteAuction(int productId) throws DataAccessException;

	List<Auction> getAuctionByUser(String accountId) throws DataAccessException;
	
	List<Auction> getAuctionListByCategory(int categoryId) throws DataAccessException;

	List<Auction> searchAuctionList(String keywords) throws DataAccessException;

	List<Auction> getAllAuctionList() throws DataAccessException;
	
}
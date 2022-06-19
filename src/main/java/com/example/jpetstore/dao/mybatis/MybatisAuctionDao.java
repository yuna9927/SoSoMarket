package com.example.jpetstore.dao.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.jpetstore.dao.AuctionDao;
import com.example.jpetstore.dao.mybatis.mapper.AuctionMapper;
import com.example.jpetstore.dao.mybatis.mapper.BiddingMapper;
import com.example.jpetstore.dao.mybatis.mapper.ProductMapper;
import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.Bidding;

/**
 * @author Juergen Hoeller
 * @author Colin Sampaleanu
 */
@Repository
public class MybatisAuctionDao implements AuctionDao {

	@Autowired
	private AuctionMapper auctionMapper;
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private BiddingMapper biddingMapper;

	public Auction getAuction(int productId) {
		return auctionMapper.getAuction(productId);
	}

//	@Transactional
	public void insertAuction(Auction auction) {
		auctionMapper.insertAuction(auction);
	}
	
	@Transactional
	public void deleteAuction(int productId) {
		List<Bidding> biddingList = biddingMapper.getBiddingsByAuction(productId);
		for (Bidding bidding: biddingList) {
			biddingMapper.deleteBidding(bidding.getBiddingId());
		}
		productMapper.deleteProduct(productId);
		auctionMapper.deleteAuction(productId);
	}

	public List<Auction> getAuctionListByUser(String accountId) {
		return auctionMapper.getAuctionListByUser(accountId);
	}
	
	public List<Auction> getAuctionListByCategory(int categoryId) {
		return auctionMapper.getAuctionListByCategory(categoryId);
	}

	public List<Auction> searchAuctionList(String keywords) {
		return auctionMapper.searchAuctionList("%" + keywords.toLowerCase() + "%");
	}

	public List<Auction> getAllAuctionList() {
		return auctionMapper.getAllAuctionList();
	}
	
	/* Inner Classes */
	public static class AuctionSearch {

		private List<String> keywordList = new ArrayList<String>();

		public AuctionSearch(String keywords) {
			StringTokenizer splitter = new StringTokenizer(keywords," ",false);
			while (splitter.hasMoreTokens()) {
				this.keywordList.add("%" + splitter.nextToken() + "%");
			}
		}
		public List<String> getKeywordList() {
			return keywordList;
		}
	}
}
/*
 *    Copyright 2010-2013 the original author or authors.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package com.example.jpetstore.dao.mybatis.mapper;

import java.util.List;
import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.Bidding;

public interface AuctionMapper {

	Auction getAuction(int productId);

	void insertAuction(Auction auction);
	  
	void deleteAuction(int productId);
	
	void updateAuctionCurrentPrice(Bidding bidding);
	
	void updateAuctionCurrentPriceAndBuyerId(Bidding bidding);

	List<Auction> getAuctionListByUser(String accountId);
	
	List<Auction> getAuctionListByCategory(int categoryId);

	List<Auction> searchAuctionList(String keywords);

	List<Auction> getAllAuctionList();
	
}
package com.example.jpetstore.controller;
import java.io.Serializable;
import com.example.jpetstore.domain.Auction;

@SuppressWarnings("serial")
public class AuctionForm implements Serializable {

   private Auction auction;


   public AuctionForm(Auction auction) {
      this.auction = auction;
   }
   
   public void setAuctionForm(Auction auction) {
	      this.auction = auction;
   }

   public AuctionForm() {
      this.auction = new Auction();
      
   }

   public Auction getAuction() {
      return auction;
   }
   
   public void setSellerId(String sellerId) {
	   auction.getProduct().setSellerId(sellerId);
   }

   @Override
   public String toString() {
      return "AuctionForm [auction=" + auction + "]" ;
   }
 
}

package com.example.jpetstore.domain;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Order implements Serializable {

   /* Private Fields */

   private int orderId;
   private String buyerId;
   private String sellerId;
   private String productId;
   private Date orderDate;
   private String orderStatus;
   private String shippingAddress;
   private String shippingZipCode;
   private String bankNumber;
   private String bankName;
   private Product product;

   /* JavaBeans Properties */
   public int getOrderId() {
      return orderId;
   }
   
   public void setOrderId(int orderId) {
      this.orderId = orderId;
   }

   public String getBuyerId() {
      return buyerId;
   }

   public void setBuyerId(String buyerId) {
      this.buyerId = buyerId;
   }

   public String getSellerId() {
      return sellerId;
   }

   public void setSellerId(String sellerId) {
      this.sellerId = sellerId;
   }

   public String getProductId() {
      return productId;
   }

   public void setProductId(String productId) {
      this.productId = productId;
   }

   public Date getOrderDate() {
      return orderDate;
   }

   public void setOrderDate(Date orderDate) {
      this.orderDate = orderDate;
   }

   public String getOrderStatus() {
      return orderStatus;
   }

   public void setOrderStatus(String orderStatus) {
      this.orderStatus = orderStatus;
   }

   public String getShippingAddress() {
      return shippingAddress;
   }

   public void setShippingAddress(String shippingAddress) {
      this.shippingAddress = shippingAddress;
   }

   public String getShippingZipCode() {
      return shippingZipCode;
   }

   public void setShippingZipCode(String shippingZipCode) {
      this.shippingZipCode = shippingZipCode;
   }

   public String getBankNumber() {
      return bankNumber;
   }

   public void setBankNumber(String bankNumber) {
      this.bankNumber = bankNumber;
   }

   public String getBankName() {
      return bankName;
   }

   public void setBankName(String bankName) {
      this.bankName = bankName;
   }

   public Product getProduct() {
      return product;
   }

   public void setProduct(Product product) {
      this.product = product;
   }

  /* Public Methods */

  public void initOrder(Account account) {
     
    orderDate = new Date();
    shippingAddress = account.getAddress();
    shippingZipCode = account.getZipcode();
    bankNumber = account.getBankNumber();
    bankName = account.getBankName();
  
  }
  
}
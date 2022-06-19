package com.example.jpetstore.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Wish implements Serializable {

  /* Private Fields */

  private int wishId;
  private int productId;
  private int accountId;
  private Product product;

  /* JavaBeans Properties */

  public int getWishId() { return wishId; }
  public void setWishId(int wishId) { this.wishId = wishId; }

  public int getProductId() { return productId; }
  public void setProductId(int productId) { this.productId = productId; }
  
  public int getAccountId() { return accountId; }
  public void setAccountId(int accountId) { this.accountId = accountId; }
  
  public Product getProduct() { return product; }
  public void setProduct(Product product) { this.product = product; }

  /* Public Methods */
  /*
  public String toString() {
    return Integer.toString(getWishId());
  }
  */
}
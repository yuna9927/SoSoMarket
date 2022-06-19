package com.example.jpetstore.dao;

import java.util.List;
import org.springframework.dao.DataAccessException;
import com.example.jpetstore.domain.Wish;

public interface WishDao {
	
	Wish getWish(int wishId) throws DataAccessException;

    List<Wish> getWishtListByUser(String accountId) throws DataAccessException;
    
    void insertWish(Wish wish) throws DataAccessException;

    void deleteWish(int wishId) throws DataAccessException;
    
}
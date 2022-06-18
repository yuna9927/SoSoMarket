package com.example.jpetstore.dao.mybatis;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.jpetstore.dao.WishDao;
import com.example.jpetstore.dao.mybatis.mapper.WishMapper;
import com.example.jpetstore.domain.Wish;

/**
 * @author Juergen Hoeller
 * @author Colin Sampaleanu
 */
@Repository
public class MybatisWishDao implements WishDao {

	@Autowired
	private WishMapper wishMapper;
	
	public Wish getWish(int wishId) throws DataAccessException {
		return wishMapper.getWish(wishId);
	}

    public List<Wish> getWishtListByUser(String accountId) throws DataAccessException {
    	return wishMapper.getWishtListByUser(accountId);
    }
    
    public void insertWish(Wish wish) throws DataAccessException {
    	wishMapper.insertWish(wish);
    }

    public void deleteWish(int wishId) throws DataAccessException {
    	wishMapper.deleteWish(wishId);
    }
}
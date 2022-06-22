package com.example.jpetstore.service;

import java.util.Date;
import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.TaskScheduler;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.example.scheduler.dao.EventDao;
import com.example.jpetstore.domain.Account;
import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.Order;
import com.example.jpetstore.domain.Product;
@Service
@Transactional
public class SchedulerService { 
	@Autowired
	private EventDao eventDao;
	
	@Autowired		// SchedulerConfig에 설정된 TaskScheduler 빈을 주입 받음
	private TaskScheduler scheduler;
	
	@Autowired
	private SosoMarketFacade sosomarket;
	
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}
	
	public void testScheduler(Date closingTime, int auctionId) {
		
		Runnable updateTableRunner = new Runnable() { // anonymous class 정의
			@Override
			public void run() {   // 스케쥴러에 의해 미래의 특정 시점에 실행될 작업을 정의				
				Date curTime = new Date();
				// 실행 시점의 시각을 전달하여 그 시각 이전의 closing time 값을 갖는 event의 상태를 변경 
				Order order = new Order();
				
				System.out.println("시간이 끝났어요..");
				Auction auction = sosomarket.getAuction(auctionId);
				System.out.println("auction is: " + auction.toString());
				Product product = sosomarket.getProduct(auctionId);
				System.out.println("product is: " + product.toString());
				String currentPriceBuyerId = auction.getCurrentPriceBuyerId();
				System.out.println("입찰가격을 제시한 buyer 이름: " + currentPriceBuyerId);
				
				Account account = sosomarket.getAccount(currentPriceBuyerId);
				System.out.println("그 buyer의 정보 account is : " + account.toString());
				
				System.out.println("경매상품의 id는: " + auction.getAuctionId());
				
				order.setProductId(auction.getAuctionId());
				order.initOrder(account);
				product.setProductStatus("done");
				
				sosomarket.updateProductStatus(product);
				
				order.setBuyerId(currentPriceBuyerId);
				System.out.println(order.toString());
				sosomarket.insertOrder(order);
				
				eventDao.closeEvent(curTime);	// EVENTS 테이블의 레코드 갱신	
				System.out.println("updateTableRunner is executed at " + curTime);
			}
		};
		
		HashMap<String, Date> hashMap = new HashMap<String, Date>();
		hashMap.put("curTime", new Date());			// 현재 시각: PK 값으로 사용
		hashMap.put("closingTime", closingTime);	// 미래의 종료 시각
		eventDao.insertNewEvent(hashMap);		// EVENTS 테이블에 레코드 삽입

		// 스케줄 생성: closingTime에 updateTableRunner.run() 메소드 실행
		scheduler.schedule(updateTableRunner, closingTime);		
		System.out.println("updateTableRunner has been scheduled to execute at " + closingTime);
	}
}
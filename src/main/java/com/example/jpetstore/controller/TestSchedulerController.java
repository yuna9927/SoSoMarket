//package com.example.jpetstore.controller;
//
//import java.util.Date;
//import javax.servlet.http.HttpServletRequest;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.format.annotation.DateTimeFormat;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import com.example.scheduler.service.SchedulerService;
//
//@Controller
//public class TestSchedulerController { 
//
//	private SchedulerService service;
//	public Date closeTime;
//	public NewAuctionController nac = new NewAuctionController();
//
//	@Autowired
//	public void setService(SchedulerService service) {
//		this.service = service;
//	}
//
//	@RequestMapping("/testScheduler")
//	public String handleRequest(HttpServletRequest request,
//			@RequestParam("closeTime")
//			@DateTimeFormat(pattern="yyyy-MM-dd HH:mm") Date closeTime) throws Exception {
//		
//		closeTime = nac.getDate();
//		System.out.println(closeTime);
//		service.testScheduler(closeTime);
////		return new ModelAndView("Scheduled", "closeTime", closeTime);
//		
//		return "index";
//	}
//}

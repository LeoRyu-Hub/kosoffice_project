package com.koffice.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import com.koffice.schedule.service.scheduleService;
import com.koffice.vo.sales.salesInfoVO;

@Controller
public class scheduleController {
	
	@Autowired
	scheduleService service;
	
	@Scheduled(cron = "0 0 3 * * *")
	public void dailyOrder() {
		try {

			salesInfoVO vo = new salesInfoVO();

			vo = service.selectOrder(vo);

			int cnt = service.insertOrder(vo);

			if (cnt > 0) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}

		} catch (Exception e) {
			System.out.println("* Batch 시스템이 예기치 않게 종료되었습니다. Message: {}" + e.getMessage());
		}
	}

}

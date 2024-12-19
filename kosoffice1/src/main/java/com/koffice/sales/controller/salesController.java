package com.koffice.sales.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.sales.service.salesService;
import com.koffice.vo.paymentmethod.paymInfoVO;
import com.koffice.vo.sales.salesInfoVO;

@Controller
public class salesController {
	
	@Autowired
	salesService service;
	
	@RequestMapping("/sales/list")
	public String salesList() throws Exception {
		return "/sales/sales_list";
	}
	
	@RequestMapping("/sales/detail")
	public String salesDetail() throws Exception {
		return "/sales/sales_detail";
	}
	
	//페이지 열어주는 url
	@RequestMapping("/menusales/list")
	public String salesByMenu() throws Exception {
		return "/sales/salesbymenu_list";
	}
	
	@RequestMapping("/sales/search")
	@ResponseBody
	public salesInfoVO getSalesList(@ModelAttribute salesInfoVO vo) throws Exception{
		
		int totalPage = service.selectTotalSalesPageCnt(vo);
		
		List<salesInfoVO> list = service.selectSalesList(vo);
		
		salesInfoVO salesvo = new salesInfoVO();
		salesvo.setSalesList(list);
		salesvo.setTotal(totalPage);
		salesvo.setStartPage(vo.getStartPage());
		salesvo.setCurrentPage(vo.getCurrentPage());
		
		return salesvo;
	}
	
	
	@RequestMapping("/menuSales/search")
	@ResponseBody
	public List<salesInfoVO> getTotalList(@ModelAttribute salesInfoVO vo) throws Exception{
		
		List<salesInfoVO> list = service.getTotalList(vo);
		return list;
	}
	

}

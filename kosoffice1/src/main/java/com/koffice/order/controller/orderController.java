package com.koffice.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.order.service.orderService;
import com.koffice.vo.order.orderInfoVO;
import com.koffice.vo.order.orderMenuInfoVO;

@Controller
public class orderController {
	
	@Autowired
	orderService service;
	
	@RequestMapping("/order/list")
	public String orderList() throws Exception {
		return "/order/order_list";
	}
	
	@RequestMapping("/order/detail")
	public String orderDetail() throws Exception {
		return "/order/order_detail";
	}
	
	@RequestMapping("/order/search")
	@ResponseBody
	public orderInfoVO getOrderList(@ModelAttribute orderInfoVO vo) throws Exception{
		
		int totalPage = service.selectTotalOrderPageCnt(vo);
		
		List<orderInfoVO> list = service.selectOrderList(vo);
		
		orderInfoVO ordervo = new orderInfoVO();
		ordervo.setOrderList(list);
		ordervo.setTotal(totalPage);
		ordervo.setStartPage(vo.getStartPage());
		ordervo.setCurrentPage(vo.getCurrentPage());
		
		return ordervo;
	}
	
	@RequestMapping("/order/menu")
	@ResponseBody
	public List<orderMenuInfoVO> getMenuList(@ModelAttribute orderMenuInfoVO vo) throws Exception{
		
		List<orderMenuInfoVO> list = service.selecetOrderMenuList(vo);
		
		return list;
	}

}

package com.koffice.paymentmethod.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.paymentmethod.service.paymentmethodService;
import com.koffice.vo.menu.menuCategoryInfoVO;
import com.koffice.vo.menu.menuInfoVO;
import com.koffice.vo.paymentmethod.paymInfoVO;

@Controller
public class paymentmethodController {
	
	@Autowired
	paymentmethodService service;
	
	@RequestMapping("/paymentmethod/list")
	public String paymentmethodList() throws Exception {
		return "/paymentmethod/paymentmethod_list";
	}
	
	@RequestMapping("/paymentmethod/reg")
	public String paymentmethodReg() throws Exception {
		return "/paymentmethod/paymentmethod_reg";
	}
	
	@RequestMapping("/paym/search")
	@ResponseBody
	public paymInfoVO getPayList(@ModelAttribute paymInfoVO vo) throws Exception{
		
		int totalPage = service.selectTotalPaymPageCnt(vo);
		
		List<paymInfoVO> list = service.selectPaymList(vo);
		
		paymInfoVO paymvo = new paymInfoVO();
		paymvo.setPaymList(list);
		paymvo.setTotal(totalPage);
		paymvo.setStartPage(vo.getStartPage());
		paymvo.setCurrentPage(vo.getCurrentPage());
		
		return paymvo;
	}
	
	@RequestMapping("/paym/save")
	@ResponseBody
	public boolean save(@ModelAttribute paymInfoVO vo) throws Exception{		
		int cnt=0;
		if(vo.getPaymCode()==null || "".equals(vo.getPaymCode())) {
			cnt = service.insertPaym(vo);
		} else {
			cnt = service.updatePaym(vo);
		}
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}

}

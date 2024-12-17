package com.koffice.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.manager.service.managerService;
import com.koffice.vo.manager.managerInfoVO;
import com.koffice.vo.paymentmethod.paymInfoVO;

@Controller
public class managerController {
	
	@Autowired
	managerService service;
	
	@RequestMapping("/manager/list")
	public String managerList() throws Exception {
		return "/manager/manager_list";
	}
	
	@RequestMapping("/manager/reg")
	public String managerReg() throws Exception {
		return "/manager/manager_reg";
	}
	
	@RequestMapping("/manager/search")
	@ResponseBody
	public managerInfoVO getManagerList(@ModelAttribute managerInfoVO vo) throws Exception{
		
		int totalPage = service.selectTotalManagerPageCnt(vo);
		
		List<managerInfoVO> list = service.selectManagerList(vo);
		
		managerInfoVO managervo = new managerInfoVO();
		managervo.setManagerList(list);
		managervo.setTotal(totalPage);
		managervo.setStartPage(vo.getStartPage());
		managervo.setCurrentPage(vo.getCurrentPage());
		
		return managervo;
	}
	
	@RequestMapping("/manager/save")
	@ResponseBody
	public boolean save(@ModelAttribute managerInfoVO vo) throws Exception{		
		
		int cnt=0;
		
		
		if(vo.getCrudType()!=null && "I".equals(vo.getCrudType())) {
			
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			vo.setManagerPwd(encoder.encode(vo.getManagerPwd()));
			
			cnt = service.insertManager(vo);
			
		} else if(vo.getCrudType()!=null && "U".equals(vo.getCrudType())) {
			
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			vo.setManagerPwd(encoder.encode(vo.getManagerPwd()));
			
			cnt = service.updateManager(vo);
		}
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping("/manager/detail")
	@ResponseBody
	public managerInfoVO getDetail(@ModelAttribute managerInfoVO vo) throws Exception{
		
		vo = service.selectManagerDetail(vo);
		
		return vo;
	}

}

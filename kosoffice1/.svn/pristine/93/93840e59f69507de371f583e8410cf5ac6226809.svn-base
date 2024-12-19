package com.koffice.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.member.service.memberService;
import com.koffice.util.Constant;
import com.koffice.vo.common.FileVO;
import com.koffice.vo.member.memberInfoVO;
import com.koffice.vo.member.pointInfoVO;
import com.koffice.vo.menu.menuInfoVO;

@Controller
public class memberController {
	
	@Autowired
	memberService service;
	
	@RequestMapping("/member/list")
	public String memberList() throws Exception {
		return "/member/member_list";
	}
	
	@RequestMapping("/member/detail")
	public String memberDetail() throws Exception {
		return "/member/member_detail";
	}
	
	@RequestMapping("/member/search")
	@ResponseBody
	public memberInfoVO getMenuList(@ModelAttribute memberInfoVO vo) throws Exception{
		
		int totalPage = service.selectTotalMemberPageCnt(vo);
		
		List<memberInfoVO> list = service.selectMemberList(vo);
		
		memberInfoVO membervo = new memberInfoVO();
		membervo.setMemberList(list);
		membervo.setTotal(totalPage);
		membervo.setStartPage(vo.getStartPage());
		membervo.setCurrentPage(vo.getCurrentPage());

		
		return membervo;
	}
	
	@RequestMapping("/member/point")
	@ResponseBody
	public pointInfoVO getPointList(@ModelAttribute pointInfoVO vo) throws Exception{
		
		vo.setCountPerPage(5);
		
		int totalPage = service.selectTotalPointPageCnt(vo);
		List<pointInfoVO> list = service.selectPointList(vo);
		
		pointInfoVO pointvo = new pointInfoVO();
		pointvo.setCountPerPage(vo.getCountPerPage());
		pointvo.setPointList(list);
		pointvo.setTotal(totalPage);
		pointvo.setStartPage(vo.getStartPage());
		pointvo.setCurrentPage(vo.getCurrentPage());
		
		
		return pointvo;
	}
	
	@RequestMapping("/member/save")
	@ResponseBody
	public boolean memberSave(@ModelAttribute memberInfoVO vo) throws Exception{		
		
		int cnt =0;
	
		cnt = service.updateMember(vo);
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}

}

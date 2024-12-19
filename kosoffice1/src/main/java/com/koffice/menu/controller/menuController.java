package com.koffice.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koffice.common.service.FileService;
import com.koffice.menu.service.menuService;
import com.koffice.util.Constant;
import com.koffice.vo.common.FileVO;
import com.koffice.vo.menu.menuCategoryInfoVO;
import com.koffice.vo.menu.menuInfoVO;

@Controller
public class menuController {
	
	@Autowired
	menuService service;
	@Autowired
	FileService fileservice;
	
	@RequestMapping("/menu/list")
	public String menuList() throws Exception {
		return "/menu/menu_list";
	}
	
	@RequestMapping("/menu/reg")
	public String menuReg() throws Exception {
		return "/menu/menu_reg";
	}
	
	@RequestMapping("/menucategory/list")
	public String menucategoryList() throws Exception {
		return "/menu/menucategory_list";
	}
	
	@RequestMapping("/menucategory/reg")
	public String menucategoryReg(@ModelAttribute menuCategoryInfoVO vo,Model model) throws Exception {

		model.addAttribute("categoryCode",vo.getCategoryCode());
		
		return "/menu/menucategory_reg";
	}
	
	@RequestMapping("/menucategory/search")
	@ResponseBody
	public menuCategoryInfoVO getList(@ModelAttribute menuCategoryInfoVO vo) throws Exception{
		
		int totalPage = service.selectTotalCategoryPageCnt(vo);
		
		List<menuCategoryInfoVO> list = service.selectMenuCategoryList(vo);
		
		menuCategoryInfoVO categoryvo = new menuCategoryInfoVO();
		categoryvo.setCategoryList(list);
		categoryvo.setTotal(totalPage);
		categoryvo.setStartPage(vo.getStartPage());
		categoryvo.setCurrentPage(vo.getCurrentPage());
		
		return categoryvo;
	}
	
	@RequestMapping("/menucategory/getInfo")
	@ResponseBody
	public menuCategoryInfoVO getInfo(@ModelAttribute menuCategoryInfoVO vo) throws Exception{
		vo = service.selectCategoryInfo(vo);
		return vo;
	}
	
	@RequestMapping("/menu/getcategory")
	@ResponseBody
	public List<menuInfoVO> getcategory(@ModelAttribute menuInfoVO vo) throws Exception{
		List<menuInfoVO> list = service.getCategory(vo);
		return list;
	}
	
	@RequestMapping("/menucategory/save")
	@ResponseBody
	public boolean save(@ModelAttribute menuCategoryInfoVO vo) throws Exception{		
		int cnt=0;
		if(vo.getCategoryCode()==null || "".equals(vo.getCategoryCode())) {
			cnt = service.insertCategory(vo);
		} else {
			cnt = service.updateCategory(vo);
		}
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping("/menu/search")
	@ResponseBody
	public menuInfoVO getMenuList(@ModelAttribute menuInfoVO vo) throws Exception{
		
		int totalPage = service.selectTotalMenuPageCnt(vo);
		
		List<menuInfoVO> list = service.selectMenuList(vo);
		
		menuInfoVO menuvo = new menuInfoVO();
		menuvo.setMenuList(list);
		menuvo.setTotal(totalPage);
		menuvo.setStartPage(vo.getStartPage());
		menuvo.setCurrentPage(vo.getCurrentPage());
		
		return menuvo;
	}
	
	/*
	@RequestMapping("/menu/getInfo")
	@ResponseBody
	public menuInfoVO getMenuInfo(@ModelAttribute menuInfoVO vo) throws Exception{
		vo = service.selectMenuInfo(vo);
		return vo;
	}
	*/
	
	@RequestMapping("/menu/save")
	@ResponseBody
	public boolean menuSave(@ModelAttribute menuInfoVO vo) throws Exception{		
		
		int cnt =0;
		
		if(vo.getMenuImage()!=null) {
			FileVO fvo = new FileVO();
			fvo.setFile(vo.getMenuImage());
			fvo.setOriginPath(Constant.UPLOAD_PATH);
			fvo = fileservice.createFile(fvo);
			vo.setMenuUrl(Constant.IMAGE_PATH+"/"+fvo.getFileNm());	
		}
		
		
		if(vo.getMenuCode()==null || "".equals(vo.getMenuCode())) {
			
			String newMenuCode = service.selectNewMenuCode(vo);
			vo.setMenuCode(newMenuCode);
			
			cnt = service.insertMenu(vo);
			
		} else {
			cnt = service.updateMenu(vo);
		}		
		
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
}

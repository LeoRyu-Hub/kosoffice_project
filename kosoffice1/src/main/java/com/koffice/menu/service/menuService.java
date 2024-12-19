package com.koffice.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.menu.dao.menuDao;
import com.koffice.vo.menu.menuCategoryInfoVO;
import com.koffice.vo.menu.menuInfoVO;

@Service
public class menuService {
	
	@Autowired
	menuDao dao;
	
	public List<menuCategoryInfoVO> selectMenuCategoryList(menuCategoryInfoVO vo) throws Exception{
		return dao.selectMenuCategoryList(vo);
	}
	
	public menuCategoryInfoVO selectCategoryInfo(menuCategoryInfoVO vo) throws Exception{
		return dao.selectCategoryInfo(vo);
	}
	
	public int insertCategory(menuCategoryInfoVO vo) throws Exception{
		return dao.insertCategory(vo);
	}
	
	public int updateCategory(menuCategoryInfoVO vo) throws Exception{
		return dao.updateCategory(vo);
	}
	
	public int selectTotalCategoryPageCnt(menuCategoryInfoVO vo) throws Exception{
		return dao.selectTotalCategoryPageCnt(vo);
	}
	
	public List<menuInfoVO> selectMenuList(menuInfoVO vo) throws Exception{
		return dao.selectMenuList(vo);
	}
	/*
	public menuInfoVO selectMenuInfo(menuInfoVO vo) throws Exception{
		return dao.selectMenuInfo(vo);
	}
	*/
	
	public List<menuInfoVO> getCategory(@ModelAttribute menuInfoVO vo) throws Exception{
		return dao.getCategory(vo);
	}
	
	public int insertMenu(menuInfoVO vo) throws Exception{
		return dao.insertMenu(vo);
	}
	
	public String selectNewMenuCode(menuInfoVO vo) throws Exception{
		return dao.selectNewMenuCode(vo);
	}
	
	public int updateMenu(menuInfoVO vo) throws Exception{
		return dao.updateMenu(vo);
	}
	
	public int selectTotalMenuPageCnt(menuInfoVO vo) throws Exception{
		return dao.selectTotalMenuPageCnt(vo);
	}

}

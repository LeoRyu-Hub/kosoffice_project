package com.koffice.menu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.koffice.vo.menu.menuCategoryInfoVO;
import com.koffice.vo.menu.menuInfoVO;

@Repository
public interface menuDao {
	
	public List<menuCategoryInfoVO> selectMenuCategoryList(menuCategoryInfoVO vo) throws Exception;
	public menuCategoryInfoVO selectCategoryInfo(menuCategoryInfoVO vo) throws Exception;
	public int insertCategory(menuCategoryInfoVO vo) throws Exception;
	public int updateCategory(menuCategoryInfoVO vo) throws Exception;
	public int selectTotalCategoryPageCnt(menuCategoryInfoVO vo) throws Exception;
	public List<menuInfoVO> selectMenuList(menuInfoVO vo) throws Exception;
	//public menuInfoVO selectMenuInfo(menuInfoVO vo) throws Exception;
	public List<menuInfoVO> getCategory(@ModelAttribute menuInfoVO vo) throws Exception;
	public int insertMenu(menuInfoVO vo) throws Exception;
	public String selectNewMenuCode(menuInfoVO vo) throws Exception;
	public int updateMenu(menuInfoVO vo) throws Exception;
	public int selectTotalMenuPageCnt(menuInfoVO vo) throws Exception;

}

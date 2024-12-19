package com.koffice.vo.menu;

import java.util.List;

import com.koffice.vo.common.PageVO;

import lombok.Data;

@Data
public class menuCategoryInfoVO extends PageVO {
	
	private String categoryCode;
	private String categoryName;
	private String activeSt;
	private String regDt;
	private String regId;
	private List<menuCategoryInfoVO> categoryList;

}

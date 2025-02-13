package com.koffice.vo.menu;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;

import com.koffice.vo.common.PageVO;

import lombok.Data;

@Data
public class menuInfoVO extends PageVO{
	
	private String menuCode;
	private String menuName;
	private String categoryCode;
	private int menuPrice;
	private String menuDetail;
	private String menuSt;
	private String menuUrl;
	@JsonIgnore
	private MultipartFile menuImage;
	private String regDt;
	private String regId;
	private List<menuInfoVO> menuList;
	private String categoryName;

}

package com.koffice.vo.manager;

import java.util.List;

import com.koffice.vo.common.PageVO;
import com.koffice.vo.paymentmethod.paymInfoVO;

import lombok.Data;

@Data
public class managerInfoVO extends PageVO {
	
	private String managerId;
	private String managerPwd;
	private String managerName;
	private String managerEmail;
	private String managerPhone;
	private String quitYN;
	private String joinDt;
	private String crudType;   // I : insert, U:update
	private List<managerInfoVO> managerList;
	private String url;
	private int sp;
	private String salesDt;
	
}

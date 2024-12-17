package com.koffice.vo.paymentmethod;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;

import com.koffice.vo.common.PageVO;

import lombok.Data;

@Data
public class paymInfoVO extends PageVO{
	
	private String paymCode;
	private String paymName;
	private String activeYN;
	private String regDt;
	private String regId;
	private String paymUrl;
	@JsonIgnore
	private MultipartFile paymImage;
	private List<paymInfoVO> paymList;
	private int payAmount;
}

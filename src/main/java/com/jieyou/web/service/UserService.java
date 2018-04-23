package com.jieyou.web.service;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jieyou.web.bean.User;

@Service
public class UserService {

	@Autowired
	private ApiService apiService;
	
	@Value("${jieyou_SSO_URL}")
	public String jieyou_SSO_URL;
	
	private static final ObjectMapper MAPPER=new ObjectMapper();
	
	/*
	 * 根据token查询用户信息
	 *
	 */
	public User queryByToken(String token) {
		try {
			String url=jieyou_SSO_URL+"/service/user/"+token;
			String jsonData=this.apiService.doGet(url);
			if (StringUtils.isNotEmpty(jsonData)) {
				return MAPPER.readValue(jsonData, User.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}

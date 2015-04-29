package xjm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xjm.domain.User;
import xjm.service.base.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	private IUserService userService;

	@RequestMapping("/get")
	@ResponseBody
	public User getUser(){
		return userService.getUser(1);
	}
	
	@RequestMapping("/all")
	@ResponseBody
	public List<User> getAllUser(){
		return userService.getAllUser();
	}
}

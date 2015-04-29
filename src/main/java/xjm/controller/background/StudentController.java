package xjm.controller.background;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xjm.domain.User;
import xjm.service.base.IUserService;

@Controller
@RequestMapping("/stu")
public class StudentController {
	
	/*@Autowired
	@Qualifier("studentService")
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
	}*/
}

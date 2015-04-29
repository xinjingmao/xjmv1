package xjm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import xjm.domain.User;
import xjm.mapper.UserMapper;
import xjm.service.base.IUserService;

@Service("userService")
public class UserService implements IUserService{

	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper;
	
	@Override
	public User getUser(int id) {
		return userMapper.getUser(id);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userMapper.getAllUser();
	}

}

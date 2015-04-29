package xjm.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import xjm.domain.User;

@Component("userMapper")
public interface UserMapper {

	/**
	 * 查询用户
	 */
	public User getUser(int id);
	
	public List<User> getAllUser();
}

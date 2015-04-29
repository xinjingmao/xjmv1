package xjm.service.base;

import java.util.List;

import xjm.domain.User;

public interface IUserService {

	/**
	 * 根据id获取用户
	 * @param id
	 * @return
	 */
	public User getUser(int id);
	public List<User> getAllUser();
}

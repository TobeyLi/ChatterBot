package cn.edu.hust.service;

import java.util.List;
import java.util.Map;

import cn.edu.hust.bean.User;

public interface UserService {

	List<User> queryAll();

	User query4Login(User user);

	List<User> pageQueryData(Map<String, Object> map);

	int pageQueryCount(Map<String, Object> map);

	void insertUser(User user);

	User queryById(Integer id);

	void updateUser(User user);

	void deleteusers(Map<String, Object> map);

	void deleteUserById(Integer userId);

}

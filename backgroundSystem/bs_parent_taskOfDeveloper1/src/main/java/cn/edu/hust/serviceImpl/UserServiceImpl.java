package cn.edu.hust.serviceImpl;

import java.util.List;
import java.util.Map;

import cn.edu.hust.bean.User;
import cn.edu.hust.dao.UserDao;
import cn.edu.hust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

   @Autowired
   private UserDao userDao;

   public List<User> queryAll() {
	// TODO Auto-generated method stub
	return userDao.queryAll();
}


   public User query4Login(User user) {
	// TODO Auto-generated method stub
	return userDao.query4Login(user);
}


	public List<User> pageQueryData(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userDao.pageQueryData(map);
	}


	public int pageQueryCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userDao.pageQueryCount(map);
	}


	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userDao.insertUser(user);
	}


	public User queryById(Integer id) {
		// TODO Auto-generated method stub
		return userDao.queryById(id);
	}


	public void updateUser(User user) {
		userDao.updateUser(user);
	}


	public void deleteUserById(Integer userId) {
		userDao.deleteUserById(userId);

	}

	public void deleteusers(Map<String, Object> map) {
		userDao.deleteusers(map);

	}

}

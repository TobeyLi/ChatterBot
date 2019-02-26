package cn.edu.hust.dao;

import java.util.List;
import java.util.Map;

import cn.edu.hust.bean.User;
import org.apache.ibatis.annotations.Select;

public interface UserDao {

	@Select("select * from user")
	List<User> queryAll();

	@Select("select * from user where userName= #{userName} and password = #{password}")
	User query4Login(User user);//如果方法参数传递的是实体类，那么上面的sql语句可以直接引用写实体类的属性

	
	List<User> pageQueryData(Map<String, Object> map);

	int pageQueryCount(Map<String, Object> map);

	void insertUser(User user);

	@Select("select * from user where userId = #{id}")
	User queryById(Integer id);

	void updateUser(User user);

	void deleteUserById(Integer id);

	void deleteusers(Map<String, Object> map);

}

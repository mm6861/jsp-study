package test.jsp.study.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import test.jsp.study.dao.UserDAO;
import test.jsp.study.dao.impl.UserDAOImpl;
import test.jsp.study.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO udao = new UserDAOImpl(); 

	@Override
	public List<Map<String, String>> selectUserList(Map<String, String> user) {		
		return udao.selectUserList(user);
	}
	@Override
	public Map<String, String> selectUser(Map<String, String> user) {		
		return udao.selectUser(user);
	}
	@Override
	public int insertUser(Map<String, String> user) {
		return udao.insertUser(user);
	}
	@Override
	public int updateUser(Map<String, String> user) {
		return udao.updateUser(user);
	}
	@Override
	public int deleteUser(Map<String, String> user) {
		return udao.deleteUser(user);
	}
	
	public static void main(String[] args) {
		UserService us = new UserServiceImpl();
		System.out.println(us.selectUserList(null));
		Map<String, String> user = new HashMap<>();
		user.put("ui_num", "41");
		System.out.println(us.selectUser(user));
		
//		user.put("ui_name", "임꺽정");
//		user.put("ui_age", "33");
//		user.put("ui_id", "Lim");
//		user.put("ui_etc", "의적");
//		System.out.println(us.insertUser(user));
		
//		user.put("ui_name", "김걱정");
//		user.put("ui_age", "30");
//		user.put("ui_id", "kim");
//		System.out.println(us.updateUser(user));
		
		user.put("ui_num", "43");
		System.out.println(us.deleteUser(user));
		
	}

}

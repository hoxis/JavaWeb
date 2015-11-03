package com.liuhao.test;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.liuhao.entity.User;
import com.liuhao.service.UserService;

public class TestMyBatis {

	ApplicationContext context = null;
	UserService userService = null;

	@Before
	public void initContext() {
		this.context = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		this.userService = (UserService) context.getBean("userService");
	}

	@Test
	public void TestInsert() {
		User user = new User();
		// username需要是唯一的
		user.setUsername("刘哈哈");
		user.setPassword("passtest");
		user.setEmail("liuhao2995@163.com");
		user.setSex("男");
		user.setAge(23);
		userService.insert(user);
	}

	@Test
	public void TestCountAll() {
		System.out.println("数据库中的记录条数:" + userService.countAll());
	}

	@Test
	public void TestSelectAll() {
		List<User> list = userService.selectAll();
		for (int i = 0; i < list.size(); i++) {
			User user = list.get(i);
			System.out.println("用户名:" + user.getUsername() + "\t密码:"
					+ user.getPassword() + "\t邮箱：" + user.getEmail());
		}
	}

	@Test
	public void TestFindByName() {
		User user = userService.findByUserName("刘哈哈");
		System.out.println("用户名:" + user.getUsername() + "\t密码:"
				+ user.getPassword() + "\t邮箱：" + user.getEmail());

	}

	@Test
	public void TestUpdate() {
		User user = new User();
		user.setUsername("刘哈哈");
		user.setPassword("xxxxxxxx");
		user.setEmail("xxxxxx@163xxx");
		user.setSex("男");
		user.setAge(23);
		userService.update(user);
	}

	@Test
	public void TestDelete() {
		userService.delete("刘哈哈");
	}
}
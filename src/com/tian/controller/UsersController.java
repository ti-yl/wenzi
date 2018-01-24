package com.tian.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tian.dao.UsersDao;
import com.tian.entity.Users;

//  controller 註解    和requestMapper
@Controller
@RequestMapping("users")
public class UsersController {

	// 注入dao
	@Resource
	private UsersDao ud;

	/**
	 * 总结：三字经 查：查询从dao返回的结果 绑: 绑定到服务器上的容器里，存对象/集合 常见的容器： request session context
	 * root() model() 特点：都可以存放（K，V） 跳: 跳转页面 转发：默认 重定向：服务器内部跳转，用重定向
	 */
	@RequestMapping("findAll.do")
	public String findAll(Model model) {
		List<Users> users = ud.findAll();
		model.addAttribute("users", users);
		return "users/users_all";
	}

	@RequestMapping("toadd.do")
	public String toadd() {
		return "users/users_add";
	}

	@RequestMapping("add.do")
	public String add(Users users) {
		ud.add(users);
		return "redirect:findAll.do";

	}

	@RequestMapping("toupdate.do")
	public String findByid(int id, Model model) {
		Users u = ud.findByid(id);
		model.addAttribute("u", u);
		return "users/users_update";

	}

	@RequestMapping("update.do")
	public String update(Users users) {
		ud.update(users);
		return "redirect:findAll.do";

	}

	@RequestMapping("delete.do")
	public String delete(int id) {
		Users u= ud.findByid(id);
		ud.delete(u);
		return "redirect:findAll.do";

	}
}

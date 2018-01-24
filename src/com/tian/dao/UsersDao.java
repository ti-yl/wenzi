package com.tian.dao;

import java.util.List;

import com.tian.annotation.MybatisDao;
import com.tian.entity.Users;

@MybatisDao
public interface UsersDao {

	// 查询所有
	List<Users> findAll();
	
	//添加
	 void add(Users users);
	 
	 //修改
	 void  update(Users users);
	 
	 //根據ID查詢
	 Users findByid(int id);
	 
	 //刪除
	 void delete (Users users);
	
}

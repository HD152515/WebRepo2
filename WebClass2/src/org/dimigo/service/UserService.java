package org.dimigo.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import org.dimigo.dao.UserDao;
import org.dimigo.vo.UserVo;

public class UserService extends AbstractService {
	public UserVo login(UserVo user) throws Exception{
		Connection conn = null;
		try {
			conn = getConnection();
			
			UserDao dao = new UserDao(conn);
			UserVo result = dao.serchUser(user);
			
			if(result == null)
				throw new Exception("Invalid username or password");
			
			return result;
		} finally {
			if(conn != null) conn.close();
		}
	}
	
	public List<UserVo> searchUserList() throws Exception{
		// DB에서 사용자 목록 조회
		Connection conn = null;
		try {
			conn = getConnection();
			
			UserDao dao = new UserDao(conn);
			
			return dao.serchUserList();
			
		} finally {
			if(conn != null) conn.close();
		}
	}
	
	public void singup(UserVo user) throws Exception {
		Connection conn = null;
		try {
			conn = getConnection();
			
			UserDao dao = new UserDao(conn);
			
			// 사용중인 아이디인지 체크
			UserVo result = dao.searchUserById(user);
			if(result != null)
				throw new Exception("이미 사용중인 아이디입니다.");
			
			// 사용자 등록
			dao.insertUser(user);
		} finally {
			if(conn != null) conn.close();
		}
	}
}

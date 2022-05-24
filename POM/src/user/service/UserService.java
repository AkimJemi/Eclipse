package user.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import user.dao.UserDAO;
import user.model.User;

public class UserService {
	private UserDAO userDao = new UserDAO();
	private Connection conn = null;

	public User getUser(User user, int no) throws SQLException {
		conn = ConnectionProvider.getConnection();
		try {
			user = userDao.select(conn, user, no);
		} catch (Exception e) {
			System.out.println("error : userDao.getUser()");
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}
		return user;
	}

	public User modifyUser(User user) throws SQLException {
		conn = ConnectionProvider.getConnection();
		try {
			user = userDao.modify(conn, user);
		} catch (Exception e) {
			System.out.println("error : userDao.modifyUser()");
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}

		return user;
	}

}

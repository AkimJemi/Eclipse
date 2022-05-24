package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import personnel.dao.PersonnelDAO;
import personnel.model.Personnel;

public class PersonnelService {
	private Connection conn;
	private PersonnelDAO personnelDao = new PersonnelDAO();
	private ArrayList<Personnel> personnelList = new ArrayList<Personnel>();

	public ArrayList<Personnel> getAllPersonnel(ArrayList<Personnel> personnelList) {
		try {
			conn = ConnectionProvider.getConnection();
			personnelList = personnelDao.selectAll(conn, personnelList);
		} catch (Exception e) {
			System.out.println("error : personnelDao.getAllPersonnel()");
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}
		return personnelList;
	}

	public Personnel getPeronsonel(Personnel personnel, int no)  {
		try {
			conn = ConnectionProvider.getConnection();
			personnel = personnelDao.select(conn, personnel, no);
		} catch (Exception e) {
			System.out.println("error : personnelDao.getPeronsonel()");
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}
		return personnel;
	}

	public Personnel modifyPersonnel(Personnel personnel)  {
		try {
			conn = ConnectionProvider.getConnection();
			personnel = personnelDao.modify(conn, personnel);

		} catch (Exception e) {
			System.out.println("error : personnelDao.modifyPersonnel()");
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}
		return personnel;
	}

	public ArrayList<Personnel> getSearchPersonnel(int search,String searchField)  {
		try {
			conn = ConnectionProvider.getConnection();
			personnelList = personnelDao.getSearch(conn ,search, searchField);

		} catch (Exception e) {
			System.out.println("error : personnelDao.getSearchPersonnel()");
			System.out.println(e.getMessage());
		} finally {
			System.out.println("finally");
			JdbcUtil.close(conn);
		}
		return personnelList;
	}
}

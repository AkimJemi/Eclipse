package main.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import main.dao.WEDAO;
import main.model.WorkExperience;

public class WEService {
	private WEDAO weDao = new WEDAO();
	private Connection conn;
//	ArrayList<WorkExperience> weList = new ArrayList<WorkExperience>(); // 의문

	public ArrayList<WorkExperience> InsertAllWE(ArrayList<WorkExperience> workExperiences) {
		try {
			conn = ConnectionProvider.getConnection();
			workExperiences = weDao.InsertAll(conn, workExperiences);

		} catch (Exception e) {
			System.out.println("error : WEService.InsertAllWE()");
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}
		return workExperiences;
	}

	public ArrayList<WorkExperience> GetAllWEList(int no) {
		ArrayList<WorkExperience> weList = new ArrayList<WorkExperience>();
		try {
			conn = ConnectionProvider.getConnection();
			weList = weDao.SelectAll(conn, no, weList);

		} catch (Exception e) {
			System.out.println("error : WEService.GetAllWEList()");
			System.out.println(e.getMessage());
		} finally {
			JdbcUtil.close(conn);
		}
		return weList;
	}

}

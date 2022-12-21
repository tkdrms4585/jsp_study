package wis34_Final_Assignment.model.artholic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.*;

import wis34_Final_Assignment.model.artholic.*;

import javax.naming.*;

public class userDAO {
	private PreparedStatement pstmt = null;
	private Connection con = null;

	Context init = null; // 컨텍스트 객체 변수
	DataSource ds = null; // 데이터 소스 객체 변수

	ResultSet rs = null; // 쿼리결과셋 객체 변수

	public userDAO() {
		super();
		dbConnect();
	}

	public void dbConnect() {
		try {
			Context init = new InitialContext(); // Context.xml에서 수정한 내용을 읽어옴
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc_mariadb");
			con = ds.getConnection(); // 이미 만들어진 pool을 con에 연결

			System.out.println("DB연결 성공!!!");
		} catch (Exception e) {
			System.out.println("DB연결 실패!!!");
			e.printStackTrace();
		}
	}

	// 데이터베이스 연결 해제 메소드
	public void disConnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public userDTO login(userDTO dto) {
//		String id = dto.getId();
//		String pw = dto.getPassword();
//		String sql = "select * from user where id='" + id + "' and password='" + pw + "';";
		String sql = "select * from user where id=? and password=?;";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				dto.setNum(rs.getInt("num"));
				dto.setId(rs.getString("id"));
				dto.setPassword(rs.getString("password"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				dto.setEmail(rs.getString("email"));
				dto.setGrade(rs.getInt("grade"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}

}

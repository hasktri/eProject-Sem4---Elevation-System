package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.HttpUtil;
import dto.AdminDTO;
import dto.UserDTO;

public class AdminDAO {
	public String getSession() {
		return String.valueOf(HttpUtil.getFromSession("username"));
	}

	public String DestroySession() {
		HttpUtil.putToSession("username", null);
		return "Index";
	}

	public static boolean InsertAdmin(AdminDTO ad) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = (Connection) DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ElevationSystem;user=sa;password=1234567;");
			// Check username.
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM Admin WHERE ID_Admin = ?");
			ps.setString(1, ad.getUserName());
			ResultSet rs = ps.executeQuery();
			if (rs == null && !rs.next()) {
				HttpUtil.putToSession("AdminAddAdminNotification",
						"Username already exists.");
				return false;
			} else {
				ps = conn
						.prepareStatement("INSERT INTO Admin (UserName,PassWord,FullName,Phone,Email,Address) VALUES(?,?,?,?,?,?)");
				ps.setString(1, ad.getUserName());
				ps.setString(2, ad.getPassWord());
				ps.setString(3, ad.getFullname());
				ps.setString(4, ad.getPhone());
				ps.setString(5, ad.getEmail());
				ps.setString(6, ad.getAddress());
				int kq = ps.executeUpdate();
				if (kq == 1) {
					HttpUtil.putToSession("AdminAddAdminNotification", "Success!");
					return true;
				}
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		HttpUtil.putToSession("AdminLoginAlert", "Error?!");
		return false;
	}

	public static boolean ChangeProfileAdmin(String fullname, String phone, String email, String address, int id) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = (Connection) DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ElevationSystem;user=sa;password=1234567;");
			PreparedStatement ps = conn
					.prepareStatement("UPDATE Admin SET FullName=?,Phone=?,Email=?,Address=? WHERE ID_Admin=?");
			ps.setString(1, fullname);
			ps.setString(2, phone);
			ps.setString(3, email);
			ps.setString(4, address);
			ps.setInt(5, id);

			int kq = ps.executeUpdate();
			if (kq == 1) {
				return true;
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static boolean ChangePasswordAdmin(String password, int id) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = (Connection) DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ElevationSystem;user=sa;password=1234567;");
			PreparedStatement ps = conn
					.prepareStatement("UPDATE Admin SET PassWord=? WHERE ID_Admin=?");
			ps.setString(1, password);
			ps.setInt(2, id);

			int kq = ps.executeUpdate();
			if (kq == 1) {
				return true;
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean deleteAdmin(int id) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = (Connection) DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ElevationSystem;user=sa;password=1234567;");
			PreparedStatement ps = conn
					.prepareStatement("DELETE FROM Admin WHERE ID_Admin = ?");
			ps.setInt(1, id);

			int kq = ps.executeUpdate();
			if (kq == 1) {
				return true;
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static ArrayList<AdminDTO> FindAllAdmin() {
		ArrayList<AdminDTO> listad = new ArrayList<AdminDTO>();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = (Connection) DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ElevationSystem;user=sa;password=1234567;");
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM Admin");
			while (rs.next()) {
				AdminDTO ad = new AdminDTO();
				ad.setID_Admin(rs.getInt("ID_Admin"));
				ad.setUserName(rs.getString("UserName"));
				ad.setPassWord(rs.getString("PassWord"));
				ad.setFullname(rs.getString("FullName"));
				ad.setPhone(rs.getString("Phone"));
				ad.setEmail(rs.getString("Email"));
				ad.setAddress(rs.getString("Address"));

				listad.add(ad);
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return listad;
	}

	public AdminDTO findidAdminDTO(int id) {
		AdminDTO ad = new AdminDTO();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = (Connection) DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ElevationSystem;user=sa;password=1234567;");
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM Admin WHERE ID_Admin = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				ad.setID_Admin(rs.getInt("ID_Admin"));
				ad.setUserName(rs.getString("UserName"));
				ad.setPassWord(rs.getString("PassWord"));
				ad.setFullname(rs.getString("FullName"));
				ad.setPhone(rs.getString("Phone"));
				ad.setEmail(rs.getString("Email"));
				ad.setAddress(rs.getString("Address"));

			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return ad;
	}

	public static Boolean Login(String username, String password) {

		List<AdminDTO> listadmin = FindAllAdmin();
		for (AdminDTO a : listadmin) {
			if (a.getUserName().equals(username)
					&& a.getPassWord().equals(password)) {
				HttpUtil.putToSession("IDAdmin", a.getID_Admin());
				return true;
			}
		}
		return false;
	}

	public static Boolean ChangeProfile(String fullname, String phone, String email, String address, int id) {

		Boolean b = ChangeProfileAdmin(fullname, phone, email, address, id);
		if (b) {
			return true;
		} else {
			return false;
		}
	}
	
	public static Boolean ChangePassword(String password, int id){
		
		Boolean b = ChangePasswordAdmin(password, id);
		if (b) {
			return true;
		} else {
			return false;
		}
	}
	
	public static AdminDTO findUser(String username) {

		AdminDTO ad = new AdminDTO();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = (Connection) DriverManager
					.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ElevationSystem;user=sa;password=1234567;");
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM [Admin] WHERE UserName = ?");

			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ad.setID_Admin(rs.getInt("ID_Admin"));
				ad.setUserName(rs.getString("UserName"));
				ad.setPassWord(rs.getString("PassWord"));
				ad.setFullname(rs.getString("FullName"));
				ad.setPhone(rs.getString("Phone"));
				ad.setEmail(rs.getString("Email"));
				ad.setAddress(rs.getString("Address"));
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return ad;
	}
}
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.User;

public class Edit_values {

	
	public User get_values_of_user(String sl_no ) {
		
		//create a object in my DB_cobbection class
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		

		User obj_user=new User();
		
		
		
		try {
			
			String querry ="select * from user where sl_no=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1,sl_no);;
			rs=ps.executeQuery();
			
			while (rs.next()) {
				
				
				
			  obj_user.setSl_no(rs.getString("sl_no"));
		      obj_user.setEmail(rs.getString("email"));
			  obj_user.setUser_name(rs.getString("user_name"));
			  obj_user.setMobile(rs.getString("mobile"));
			  obj_user.setAddress(rs.getString("address"));
			  obj_user.setMemberType(rs.getString("memberType"));
			  obj_user.setGender(rs.getString("gender"));
				
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return obj_user;
		
	}
	
	
	
	
	
	//---------------------------------------------

	
	public void edit_user(User obj_user ) {
		
		//create a object in my DB_cobbection class
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		
		try {
			
			String querry ="update user set user_name=?,mobile=?,email=?,address=?,memberType=?,gender=? where sl_no=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1,obj_user.getUser_name());
			ps.setString(2,obj_user.getMobile());
			ps.setString(3,obj_user.getEmail());
			ps.setString(4,obj_user.getAddress());
			ps.setString(5,obj_user.getMemberType());
			ps.setString(6,obj_user.getGender());
			ps.setString(7,obj_user.getSl_no());
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		
	}
	
	
}

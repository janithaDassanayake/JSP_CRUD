package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import common.DB_Connection;
import common.User;

public class Read_Values{
	
	public static void main(String[] args) {
		
		Read_Values obj_Read_Values =new Read_Values();
		
		obj_Read_Values.get_values();
	}
	
	
	public  List<User> get_values() {
		
		//create a object in my DB_cobbection class
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<User>list=new ArrayList<User>();
		
		
		try {
			
			String querry ="select * from user";
			ps=connection.prepareStatement(querry);
			rs=ps.executeQuery();
			
			while (rs.next()) {
				
			
				User obj_user=new User();
				
				System.out.print(rs.getString("sl_no"));
				System.out.print(rs.getString("user_name"));
				System.out.print(rs.getString("email"));
				System.out.print(rs.getString("mobile"));
				System.out.print(rs.getString("address"));
				System.out.print(rs.getString("memberType"));
				System.out.print(rs.getString("gender"));
				System.out.print(" ");
				
				
			  obj_user.setSl_no(rs.getString("sl_no"));
		      obj_user.setEmail(rs.getString("email"));
			  obj_user.setUser_name(rs.getString("user_name"));
			  obj_user.setMobile(rs.getString("mobile"));
			  obj_user.setAddress(rs.getString("address"));
			  obj_user.setMemberType(rs.getString("memberType"));
			  obj_user.setGender(rs.getString("gender"));
			  
			  list.add(obj_user);
				
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return list;
		
	}
	
	
	
	
	

}

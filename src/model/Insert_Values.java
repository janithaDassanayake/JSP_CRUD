package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;

import common.DB_Connection;

public class Insert_Values {
	
	public void Insert_Values(String sl_no, String user_name, String email, String mobile , String address,String memberType, String gender){
		
		//create a object in my DB_cobbection class
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		
		//query for add data to database 
	try {
		
		//run the insert query , find the certent values , the values are inserted in to DB
		String query="insert into user(sl_no,user_name,email,mobile,address,memberType,gender) values(?,?,?,?,?,?,?)";
		ps=connection.prepareStatement(query);
		ps.setString(1, sl_no);
		ps.setString(2, user_name);
		ps.setString(3, email);
		ps.setString(4, mobile);
		ps.setString(5, address);
		ps.setString(6, memberType);
		ps.setString(7, gender);
		
		
		ps.executeUpdate();
		
		
	} catch (Exception e) {
		// TODO: handle exception
		System.err.println(e);
	}	
	
	
	}
	

	
}

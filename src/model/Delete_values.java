/**
 * 
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.User;

/**
 * @author thilini
 *
 */
public class Delete_values {
	

	public void delete_value(String sl_no ) {
		
		//create a object in my DB_cobbection class
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;		
		
		try {
			
			String querry ="delete from user where sl_no=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1,sl_no);;
			ps.executeUpdate();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		
	}
	

}

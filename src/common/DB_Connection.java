package common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		DB_Connection obj_DB_Connection =new DB_Connection();
		
		System.out.println(obj_DB_Connection.get_connection());
	}
	
	
	
	
	public Connection get_connection() {
		
		Connection connection=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_crud","root", "0717936280");
			
			
		} catch (Exception e) {

			System.out.println(e);
		}
		return connection;
		
		
	}

}

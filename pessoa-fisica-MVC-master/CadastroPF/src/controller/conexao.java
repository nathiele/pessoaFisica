package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class conexao {
	private static String connectionDriverClass="com.mysql.jdbc.Driver";
	private static String connectionUrl = "jdbc:mysql://localhost/cadastro";
	private static String connectionUsername="root";
	private static String connectionPassword= "";
	private static Connection conn;


public static Connection getConnection() throws SQLException, ClassNotFoundException{
	
	if(conexao.conn != null) {
		return conexao.conn;
	}else {
		Class.forName(connectionDriverClass);
		return DriverManager.getConnection(
				conexao.connectionUrl,
				conexao.connectionUsername,
				conexao.connectionPassword
				);
	}
}
}
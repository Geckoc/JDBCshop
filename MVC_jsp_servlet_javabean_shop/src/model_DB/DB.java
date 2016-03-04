package model_DB;
import java.sql.*;
public class DB {
	public static Connection getcon()
	 {
	  String dbname="user_b";   //�㴴�������ݿ�����
	  String username="root";    //��½���ݿ���˺ţ�Ĭ��Ϊroot
	  String password="123456";  //��½����
	  String url="jdbc:mysql://127.0.0.1:3306/"+dbname+"?user="+username+"&password="+password+"";
	  Connection con=null;
	     try {
	   Class.forName("com.mysql.jdbc.Driver").newInstance();  //������ذ�
	  } catch (InstantiationException e) {
	 
	   e.printStackTrace();
	  } catch (IllegalAccessException e) {
	  
	   e.printStackTrace();
	  } catch (ClassNotFoundException e) {
	 
	   e.printStackTrace();
	  }
	  try {
	   con=(Connection) DriverManager.getConnection(url);
	  } catch (SQLException e) {
	  
	   e.printStackTrace();
	  }
	  return con;
	  }

	
	 public static void closecon(Connection con)
	 {
	  if(con!=null)
	  {
	   try {
	    con.close();
	   } catch (SQLException e) {
	    e.printStackTrace();
	   }
	   con=null;
	  }
	 }
	 public static Statement getsta(Connection con)
	 {
	  Statement sta=null;
	  try {
	   sta=(Statement) con.createStatement();
	  } catch (SQLException e) {
	   e.printStackTrace();
	  }
	  return sta;
	 }
	 public static void closesta(Statement sta)
	 {
	  if(sta!=null)
	  {
	   try {
	    sta.close();
	   } catch (SQLException e) {
	    e.printStackTrace();
	   }
	   sta=null;
	  }
	 }
	 public static PreparedStatement getpsta(Connection con,String sql)
	 
	 {
	  PreparedStatement psta=null;
	  try {
	   psta=(PreparedStatement) con.prepareStatement(sql);
	  } catch (SQLException e) {
	   e.printStackTrace();
	  }
	  return psta;
	  
	 }
	 public static ResultSet getrs(Statement sta,String sql)
	 
	 {
	  ResultSet rs=null;
	  try {
	   rs=sta.executeQuery(sql);
	  } catch (SQLException e) {
	   e.printStackTrace();
	  }
	  return rs;
	 }
	 public static void closers(ResultSet rs)
	 {
	  if(rs!=null)
	  {
	   try {
	    rs.close();
	   } catch (SQLException e) {
	    e.printStackTrace();
	   }
	   rs=null;
	  }
	 }
	public static void executeUpdate(Connection con,String sql)
	{
	 Statement sta=null;
	 try {
	  sta=(Statement) con.createStatement();
	  sta.executeUpdate(sql);
	 } catch (SQLException e) {
	  e.printStackTrace();
	 }

	}
	}
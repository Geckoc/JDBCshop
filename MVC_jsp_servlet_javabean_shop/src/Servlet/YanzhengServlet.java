package Servlet;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model_DB.User;

public class YanzhengServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	   throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String postName=request.getParameter("postName");
		String action=request.getParameter("action");
		if (action.equals("user")) {
			switch (postName) {
			case "login":{
				request.setCharacterEncoding("UTF-8");
				String user_id=request.getParameter("user_id");
				String password=request.getParameter("password");
				ResultSet rs=new User().login(user_id, password);
				int i=0;
				try {
					rs.beforeFirst();
					while (rs.next()) {
						i++;
					}
				} catch (Exception e) {
					i=0;
				}				
				if(i>0){
					request.getRequestDispatcher("/login_success.jsp").forward(request, response);
					HttpSession session=request.getSession();
					session.setAttribute("online", user_id);
				}else {
					request.getRequestDispatcher("/login_error.jsp").forward(request, response);
				}
			}break;
			
			case "login_in":{
				request.setCharacterEncoding("UTF-8");
				String user_id=request.getParameter("user_id");
				String password=request.getParameter("password");
				ResultSet rs=new User().login(user_id, password);
				int i=0;
				try {
					rs.beforeFirst();
					while (rs.next()) {
						i++;
					}
				} catch (Exception e) {
					i=0;
				}				
				if(i>0){
					request.getRequestDispatcher("/Myhome.jsp").forward(request, response);
					HttpSession session=request.getSession();
					session.setAttribute("online", user_id);
				}else {
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				}
			}break;
			
			case "register":{	
				request.setCharacterEncoding("UTF-8");
				String user_id=request.getParameter("user_id");
				String password=request.getParameter("password");
				String user_sex=request.getParameter("user_sex");
				String call=request.getParameter("call");
				String mail=request.getParameter("mail");
				String location=request.getParameter("location");
				int i=new User().register(user_id, password, user_sex, call, mail, location);
				if(i>=1){
					request.getRequestDispatcher("/register_success.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("/register_error.jsp").forward(request, response);
				}
				
			}break;
			
			case "update_search":
			{
				request.setCharacterEncoding("UTF-8");
				String user_id=request.getParameter("user_id");
				String password=request.getParameter("password");
				String call=request.getParameter("call");
				ResultSet rs=new User().update_search(user_id, password,call);
				int i=0;
				try {
					rs.beforeFirst();
					while (rs.next()) {
						i++;
					}
				} catch (Exception e) {
					i=0;
				}				
				if(i>0){
					request.getRequestDispatcher("/update_myself.jsp").forward(request, response);
					HttpSession session=request.getSession();
					session.setAttribute("online", "");
				}else {
					request.getRequestDispatcher("/login_error.jsp").forward(request, response);
				}
			}break;
			case "update_myself":
			{
				request.setCharacterEncoding("UTF-8");
				String user_id=request.getParameter("user_id");
				String password=request.getParameter("password");
				String user_sex=request.getParameter("user_sex");
				String call=request.getParameter("call");
				String mail=request.getParameter("mail");
				String location=request.getParameter("location");
				int a=new User().update_me(user_id,password,user_sex, call, mail, location);
				if(a>0){
					request.getRequestDispatcher("/reset_success.jsp").forward(request, response);
				}else{
					request.getRequestDispatcher("/reset_failure.jsp").forward(request, response);
				}
			}break;

			
			 default:
				break;
				
				
				
				
			}
		}
	}
}
		                            
		                
		            
			  
			
		
	


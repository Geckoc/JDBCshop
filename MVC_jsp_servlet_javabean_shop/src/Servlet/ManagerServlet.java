package Servlet;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model_DB.Manager;


public class ManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ManagerServlet() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String postName=request.getParameter("postName");
		String action=request.getParameter("action");
		if (action.equals("super_user")) {
			switch (postName) {
			case "manager_login":{
				request.setCharacterEncoding("UTF-8");
				String manager_id=request.getParameter("manager_id");
				String manager_pwd=request.getParameter("manager_pwd");
				ResultSet manager=new Manager().Managerlogin(manager_id, manager_pwd);
				int i=0;
				try {
					manager.beforeFirst();
					while (manager.next()) {
						i++;
					}
				} catch (Exception e) {
					i=0;
				}				
				if(i>=1){
					request.getRequestDispatcher("/Manager.jsp").forward(request, response);
					HttpSession session=request.getSession();
					session.setAttribute("online", manager_id);
				}else {
					request.getRequestDispatcher("/Manager_error.jsp").forward(request, response);
				}
			}break;
			
			case "manager_register":{
				request.getParameter("UTF-8");
				String manager_id=request.getParameter("mng_id");
				String manager_pwd=request.getParameter("mng_pwd");
				String manager_sex=request.getParameter("mng_sex");
				String manager_mail=request.getParameter("mng_mail");
				String manager_info=request.getParameter("mng_info");
				int register=0;
				 register=new Manager().ManagerSignup
			(manager_id, manager_pwd, manager_sex, manager_mail, manager_info);
				try {
					if(register>=1){
						request.getRequestDispatcher("/register_success.jsp").forward(request, response);
					}else {
						request.getRequestDispatcher("/register_error.jsp").forward(request, response);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}	
			}break;
			
			
			default:
				break;
			
			}
		}
	}

}

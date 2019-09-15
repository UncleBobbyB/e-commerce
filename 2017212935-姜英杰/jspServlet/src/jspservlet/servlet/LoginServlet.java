package jspservlet.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspservlet.dao.UserDAO;
import jspservlet.dao.impl.UserDAOImpl;
import jspservlet.vo.User;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
		
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
		User user = new User();
		user.setEamil(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		UserDAO dao = new UserDAOImpl();
		int flag = 0;
		try{
			flag = dao.queryByUsername(user);
		}catch(Exception e){
			e.printStackTrace();
		}
		if(flag == 1){
			HttpSession session = req.getSession();
			session.setAttribute("firstname",user.getFirstname());
			session.setAttribute("lastname",user.getLastname());
			session.setAttribute("email", user.getEamil());
			res.sendRedirect("./index1.jsp");
		}else{
			req.setAttribute("str", "Email or password error");
			req.getRequestDispatcher("./login.jsp").forward(req,res);
//			res.sendRedirect("./login.html");
		}
		
	}
	
	
}


package jspservlet.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteShoppingCartAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String product_id = String.valueOf(request.getParameter("product_id"));
		String user_id = String.valueOf(request.getSession().getAttribute("user_id"));
		
		return null;
	}

}

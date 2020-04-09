package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ContactForm;

@WebServlet("/process-contact-form")
public class ProcessContactFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String name = request.getParameter("fullname");
		String gender = request.getParameter("gender");
		String category = request.getParameter("category");
		String message = request.getParameter("message");
		String err = "";
		if(name.isBlank())
			err += "<p style=\"color:red\">name is empty</p>";
		
		if(gender == null)
			err += "<p style=\"color:red\">gender is empty</p>";
		else if(gender != null)
			if(gender.isBlank())
				err += "<p style=\"color:red\">gender is empty</p>";
		
		if(category.isBlank())
			err += "<p style=\"color:red\">category is empty</p>";
		if(message.isBlank())
			err += "<p style=\"color:red\">message is empty</p>";
		
		if(err.isBlank()) {
			response.sendRedirect("../lab12-mvc/Thankyou?" + new ContactForm(name, gender, category, message).toQueryString());
		}else {
			request.setAttribute("error", err);
			request.setAttribute("contact", new ContactForm(name, gender, category, message));
			request.getRequestDispatcher("/contactform").forward(request, response);
		}
	}
}

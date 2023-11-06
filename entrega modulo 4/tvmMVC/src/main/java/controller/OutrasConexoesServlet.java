package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = { "/contato", "/destinos", "/promocoes"})
public class OutrasConexoesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public OutrasConexoesServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();

		switch (action) {
		case "/contato":
			contato(request, response);
			break;
		case "/destinos":
			destinos(request, response);
			break;
		case "/promocoes":
			promocoes(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}
	
	
	protected void contato(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/contato/index.jsp");
		rd.forward(request, response);
		}

	protected void destinos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/destinos/index.jsp");
		rd.forward(request, response);
		}
	
	protected void promocoes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/promocoes/index.jsp");
		rd.forward(request, response);
		}
	}

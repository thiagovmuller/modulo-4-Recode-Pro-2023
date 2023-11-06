package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompraDAO;
import model.Compra;

@WebServlet(urlPatterns = { "/compra-consultar", "/compra-get-cadastrar", "/compra-consultar-id", "/compra-cadastrar", "/compra-atualizar", "/compra-deletar" })
public class CompraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CompraDAO comdao = new CompraDAO();
	Compra compra = new Compra();

	public CompraServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/compra-consultar":
			consultar(request, response);
			break;
		case "/compra-get-cadastrar":
			getCadastrar(request, response);
			break;
		case "/compra-cadastrar":
			try {
				cadastrar(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/compra-consultar-id":
			consultarId(request, response);
			break;
		case "/compra-atualizar":
			atualizar(request, response);
			break;
		case "/compra-deletar":
			deletar(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}

	}

	protected void consultar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Compra> lista = comdao.consultar();

		request.setAttribute("listaCompras", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/compras/index.jsp");
		rd.forward(request, response);

	}
	
	private void getCadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			RequestDispatcher rd = request.getRequestDispatcher("./views/compras/create.jsp");
			rd.forward(request, response);
			
		}

	protected void cadastrar(HttpServletRequest request, HttpServletResponse response)
			throws Exception, ServletException, IOException {
		compra.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
		compra.setIdPassagem(Integer.parseInt(request.getParameter("idPassagem")));
		compra.setFormaPgto(request.getParameter("formaPgto"));
		compra.setValorTotal(Float.parseFloat(request.getParameter("valorTotal")));

		comdao.cadastrar(compra);
		response.sendRedirect("compra-consultar");
	}

	protected void consultarId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		compra = comdao.consultarId(id);

		request.setAttribute("compra", compra);

		RequestDispatcher rd = request.getRequestDispatcher("./views/compras/update.jsp");
		rd.forward(request, response);
	}

	protected void atualizar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		compra.setIdCompra(Integer.parseInt(request.getParameter("idCompra")));
		compra.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
		compra.setIdPassagem(Integer.parseInt(request.getParameter("idPassagem")));
		compra.setFormaPgto(request.getParameter("formaPgto"));
		compra.setValorTotal(Float.parseFloat(request.getParameter("valorTotal")));

		comdao.atualizar(compra);
		response.sendRedirect("compra-consultar");
	}

	protected void deletar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		comdao.deletar(id);
		response.sendRedirect("compra-consultar");
	}

}

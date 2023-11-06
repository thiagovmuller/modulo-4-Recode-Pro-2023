package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PassagemDAO;
import model.Passagem;

@WebServlet(urlPatterns = { "/passagem-consultar", "/passagem-get-cadastrar", "/passagem-cadastrar", "/passagem-consultar-id", "/passagem-atualizar", "/passagem-deletar" })
public class PassagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PassagemDAO pdao = new PassagemDAO();
	Passagem passagem = new Passagem();

	public PassagemServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/passagem-consultar":
			consultar(request, response);
			break;
		case "/passagem-get-cadastrar":
			getCadastrar(request, response);
			break;
		case "/passagem-cadastrar":
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
		case "/passagem-consultar-id":
			consultarId(request, response);
			break;
		case "/passagem-atualizar":
			atualizar(request, response);
			break;
		case "/passagem-deletar":
			deletar(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}

	}

	protected void consultar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Passagem> lista = pdao.consultar();
		System.out.println("################");
		System.out.println(lista);

		request.setAttribute("listaPassagem", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/passagens/index.jsp");
		rd.forward(request, response);

	}
	
	private void getCadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/passagens/create.jsp");
		rd.forward(request, response);
		
	}

	protected void cadastrar(HttpServletRequest request, HttpServletResponse response)
			throws Exception, ServletException, IOException {
		passagem.setCiaAerea(request.getParameter("ciaAerea"));
		passagem.setValor(Float.parseFloat(request.getParameter("valor")));
		passagem.setOrigem(request.getParameter("origem"));
		passagem.setDestino(request.getParameter("destino"));

		pdao.cadastrar(passagem);
		response.sendRedirect("passagem-consultar");
	}

	protected void consultarId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		passagem = pdao.consultarId(id);

		request.setAttribute("passagem", passagem);

		RequestDispatcher rd = request.getRequestDispatcher("./views/passagens/update.jsp");
		rd.forward(request, response);
	}

	protected void atualizar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		passagem.setIdPassagem(Integer.parseInt(request.getParameter("idPassagem")));
		passagem.setCiaAerea(request.getParameter("ciaAerea"));
		passagem.setValor(Float.parseFloat(request.getParameter("valor")));
		passagem.setOrigem(request.getParameter("origem"));
		passagem.setDestino(request.getParameter("destino"));

		pdao.atualizar(passagem);
		response.sendRedirect("passagem-consultar");
	}

	protected void deletar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		pdao.deletar(id);
		response.sendRedirect("passagem-consultar");
	}

}

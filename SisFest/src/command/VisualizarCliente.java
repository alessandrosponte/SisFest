package command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import to.ClienteTO;

public class VisualizarCliente implements Command {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// IMPORTANTE
		// N�o fazer a convers�o de DATA DE NASCIMENTO, pois todos os atributos s�o nulos, exceto o ID
		
		String pId = request.getParameter("id");	
		String pNome = request.getParameter("nome");
		String pSexo = request.getParameter("sexo");
		String pProfissao = request.getParameter("profissao");
		Calendar pDataNascimento = Calendar.getInstance();
		String pTel = request.getParameter("tel");
		String pTelComercial = request.getParameter("telComercial");
		String pCelular = request.getParameter("celular");
		String pEndereco = request.getParameter("endereco");		
		String pEmail = request.getParameter("email");
		String pRg = request.getParameter("rg");
		String pCpf = request.getParameter("cpf");
		
		int idd = -1;
		try {
			idd = Integer.parseInt(pId);
		} catch (Exception e) {

		}
		Cliente cliente = new Cliente (idd, pNome, pSexo, pProfissao, pDataNascimento, pTel, pTelComercial, pCelular, pEndereco, pEmail, pRg, pCpf);
		RequestDispatcher view = null;

		cliente.carregar();
		request.setAttribute("cliente", cliente.getTO());
		view = request.getRequestDispatcher("VisualizarCliente.jsp");
		view.forward(request, response);
	}

	public int busca(Cliente cliente, ArrayList<ClienteTO> lista) {
		ClienteTO to;
		for (int i = 0; i < lista.size(); i++) {
			to = lista.get(i);
			if (to.getId() == cliente.getId()) {
				return i;
			}
		}
		return -1;
	}

}

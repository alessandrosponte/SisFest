package command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cliente;
import to.ClienteTO;

public class AlterarCliente implements Command {
	
	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pId = request.getParameter("id");
		String pNome = request.getParameter("nome");
		String pSexo = request.getParameter("sexo");
		String pProfissao = request.getParameter("profissao");
		String pDataNascimento = request.getParameter("dataNascimento");
		String pTel = request.getParameter("tel");
		String pTelComercial = request.getParameter("telComercial");
		String pCelular = request.getParameter("celular");
		String pEndereco = request.getParameter("endereco");		
		String pEmail = request.getParameter("email");
		String pRg = request.getParameter("rg");
		String pCpf = request.getParameter("cpf");
		
		Cliente cliente = new Cliente();
		Calendar cal = Calendar.getInstance();
		cal = cliente.stringToCalendar(pDataNascimento);
		
		int idd = -1;
		try {
			idd = Integer.parseInt(pId);
		} catch (Exception e) {

		}		

		cliente = new Cliente (idd, pNome, pSexo, pProfissao, cal, pTel, pTelComercial, pCelular, pEndereco, pEmail, pRg, pCpf);
		HttpSession session = request.getSession();
		RequestDispatcher view = null;

		cliente.atualizar();
		@SuppressWarnings("unchecked")
		ArrayList<ClienteTO> lista = (ArrayList<ClienteTO>) session
				.getAttribute("lista");
		int pos = busca(cliente, lista);
		lista.remove(pos);
		lista.add(pos, cliente.getTO());
		session.setAttribute("lista", lista);
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

package command;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;

public class EditarCliente implements Command {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pId = request.getParameter("id");	
		String pNome = request.getParameter("nome");
		String pSexo = request.getParameter("sexo");
		String pProfissao = request.getParameter("profissao");
		Calendar cal = Calendar.getInstance();
		//String pDataNascimento = request.getParameter("dataNascimento");
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

		Cliente cliente = new Cliente (idd, pNome, pSexo, pProfissao, cal, pTel, pTelComercial, pCelular, pEndereco, pEmail, pRg, pCpf);
		RequestDispatcher view = null;

		cliente.carregar();
		request.setAttribute("cliente", cliente.getTO());
		view = request.getRequestDispatcher("AlterarCliente.jsp");

		view.forward(request, response);

	}
}

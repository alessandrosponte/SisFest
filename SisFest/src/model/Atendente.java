package model;

import java.util.ArrayList;

import dao.AtendenteDAO;
import to.ClienteTO;

public class Atendente {
	public ArrayList<ClienteTO> listarClientes(){
		ArrayList<ClienteTO> lista;
		AtendenteDAO dao = new AtendenteDAO();
		lista = dao.listarClientes();
		return lista;
	}
	public ArrayList<ClienteTO> listarClientes(String chave){
		ArrayList<ClienteTO> lista;
		AtendenteDAO dao = new AtendenteDAO();
		lista = dao.listarClientes(chave);
		return lista;
	}
	
	public ArrayList<ClienteTO> clienteDetalhe(String chave){
		ArrayList<ClienteTO> lista;
		AtendenteDAO dao = new AtendenteDAO();
		lista = dao.clienteDetalhe(chave);
		return lista;
	}
	
	/*
	public ArrayList<CursoTO> listarCursos(){
		ArrayList<CursoTO> lista;
		AtendenteDAO dao = new AtendenteDAO();
		lista = dao.listarCursos();
		return lista;
	}

	public ArrayList<CursoTO> listarCursos(String chave){
		ArrayList<CursoTO> lista;
		AtendenteDAO dao = new AtendenteDAO();
		lista = dao.listarCursos(chave);
		return lista;
	}
	
	*/

}

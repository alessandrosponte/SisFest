package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import factory.ConnectionFactory;
import to.ClienteTO;

public class AtendenteDAO {

	public ArrayList<ClienteTO> listarClientes() {
		ClienteTO to;
		ArrayList<ClienteTO> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, sexo, profissao, dataNascimento, tel, telComercial, celular, endereco, email, rg, cpf FROM cliente";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while(rs.next()) {
					
					to = new ClienteTO();
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setSexo(rs.getString("sexo"));
					to.setProfissao(rs.getString("profissao"));
					Calendar cal= Calendar.getInstance();
					cal.setTime(rs.getDate("dataNascimento"));
					to.setDataNascimento(cal);
					to.setTel(rs.getString("tel"));
					to.setTelComercial(rs.getString("telComercial"));
					to.setCel(rs.getString("celular"));
					to.setEndereco(rs.getString("endereco"));
					to.setEmail(rs.getString("email"));
					to.setRG(rs.getString("rg"));
		            to.setCPF(rs.getString("cpf"));
					lista.add(to);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
	public ArrayList<ClienteTO> listarClientes(String chave) {
		ClienteTO to;
		ArrayList<ClienteTO> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, sexo, profissao, dataNascimento, tel, telComercial, celular, endereco, email, rg, cpf FROM cliente where upper(nome) like ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setString(1, "%" + chave.toUpperCase() + "%");
			try (ResultSet rs = stm.executeQuery();) {
				while(rs.next()) {
					to = new ClienteTO();
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setSexo(rs.getString("sexo"));
					to.setProfissao(rs.getString("profissao"));
					Calendar cal= Calendar.getInstance();
					cal.setTime(rs.getDate("dataNascimento"));
					to.setDataNascimento(cal);
					to.setTel(rs.getString("tel"));
					to.setTelComercial(rs.getString("telComercial"));
					to.setCel(rs.getString("celular"));
					to.setEndereco(rs.getString("endereco"));
					to.setEmail(rs.getString("email"));
					to.setRG(rs.getString("rg"));
		            to.setCPF(rs.getString("cpf"));
					lista.add(to);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
	public ArrayList<ClienteTO> clienteDetalhe(String chave) {
		ClienteTO to;
		ArrayList<ClienteTO> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, sexo, profissao, dataNascimento, tel, telComercial, celular, endereco, email, rg, cpf FROM cliente where upper(id) like ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setString(1, "%" + chave.toUpperCase() + "%");
			try (ResultSet rs = stm.executeQuery();) {
				while(rs.next()) {
					to = new ClienteTO();
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setSexo(rs.getString("sexo"));
					to.setProfissao(rs.getString("profissao"));
					Calendar cal= Calendar.getInstance();
					cal.setTime(rs.getDate("dataNascimento"));
					to.setDataNascimento(cal);
					to.setTel(rs.getString("tel"));
					to.setTelComercial(rs.getString("telComercial"));
					to.setCel(rs.getString("celular"));
					to.setEndereco(rs.getString("endereco"));
					to.setEmail(rs.getString("email"));
					to.setRG(rs.getString("rg"));
		            to.setCPF(rs.getString("cpf"));
					lista.add(to);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
	/*
	
	public ArrayList<CursoTO> listarCursos() {
		CursoTO to;
		ArrayList<CursoTO> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, dataInicio, dataTermino, hora, vagas, valor FROM curso";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while(rs.next()) {
					to = new CursoTO();
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setDataInicio(rs.getString("dataInicio"));
					to.setDataTermino(rs.getString("dataTermino"));
					to.setHora(rs.getString("hora"));
					to.setVagas(rs.getInt("vagas"));
		            to.setValor(rs.getDouble("valor"));
					lista.add(to);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
	public ArrayList<CursoTO> listarCursos(String chave) {
		CursoTO to;
		ArrayList<CursoTO> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, dataInicio, dataTermino, hora, vagas, valor FROM curso where upper(nome) like ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setString(1, "%" + chave.toUpperCase() + "%");
			try (ResultSet rs = stm.executeQuery();) {
				while(rs.next()) {
					to = new CursoTO();
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setDataInicio(rs.getString("endereco"));
					to.setDataTermino(rs.getString("telefone"));
					to.setHora(rs.getString("hora"));
					to.setVagas(rs.getInt("vagas"));
		            to.setValor(rs.getDouble("valor"));
					lista.add(to);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
	*/

}

package dao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import factory.ConnectionFactory;
import to.ClienteTO;

public class ClienteDAO {

	public void incluir(ClienteTO to) {
		String sqlInsert = "INSERT INTO cliente(nome, sexo, profissao, dataNascimento, tel, telComercial, celular, endereco, email, rg, cpf, dataCadastro ,dataAtualizacao) VALUES (?,?,?,?,?,?,?,?,?,?,?,now(),now())";
		
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement st = conn.prepareStatement(sqlInsert);){
	         st.setString(1,to.getNome());
	         st.setString(2,to.getSexo());
	         st.setString(3,to.getProfissao());
			 st.setDate(4,new Date(to.getDataNascimento().getTimeInMillis()));
	         st.setString(5,to.getTel());
	         st.setString(6,to.getTelComercial());
	         st.setString(7,to.getCel());
	         st.setString(8,to.getEndereco());
	         st.setString(9,to.getEmail());
	         st.setString(10,to.getRG());
	         st.setString(11,to.getCPF());
	         st.execute();
	         String sqlSelect = "SELECT LAST_INSERT_ID()";
				try(PreparedStatement stm1 = conn.prepareStatement(sqlSelect);
						ResultSet rs = stm1.executeQuery();){
						if(rs.next()){
							to.setId(rs.getInt(1));
						}
				}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(ClienteTO to) {
		String sqlDelete = "DELETE FROM cliente WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement st = conn.prepareStatement(sqlDelete);) {
			st.setInt(1, to.getId());
			st.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ClienteTO carregar(int id) {
		ClienteTO to = new ClienteTO();
		String sqlSelect = "SELECT id, nome, sexo, profissao, dataNascimento, tel, telComercial, celular, endereco, email, rg, cpf FROM cliente WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement st = conn.prepareStatement(sqlSelect);) {
			st.setInt(1, id);
			try (ResultSet rs = st.executeQuery();) {
				if (rs.next()) {
					
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
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return to;
	}
	
	public void atualizar(ClienteTO to) {
		String sqlUpdate = "UPDATE cliente SET nome = ?, sexo = ?, profissao = ?, dataNascimento = ?,tel = ?, telComercial = ?, celular = ?, endereco = ?, email = ?, rg = ?, cpf = ?,  dataAtualizacao = now() WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
			PreparedStatement st = conn.prepareStatement(sqlUpdate);){
			 st.setString(1,to.getNome());
	         st.setString(2,to.getSexo());
	         st.setString(3,to.getProfissao());
	         st.setDate(4, new Date(to.getDataNascimento().getTimeInMillis()));
	         st.setString(5,to.getTel());
	         st.setString(6,to.getTelComercial());
	         st.setString(7,to.getCel());
	         st.setString(8,to.getEndereco());
	         st.setString(9,to.getEmail());
	         st.setString(10,to.getRG());
	         st.setString(11,to.getCPF());
	         st.setInt(12,to.getId());
	         st.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}

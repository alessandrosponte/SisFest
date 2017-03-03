package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import dao.ClienteDAO;
import to.ClienteTO;

public class Cliente {
	private int id;
	private String nome;
	private String sexo;
	private String profissao;
	private Calendar dataNascimento;
	private String tel;
	private String telComercial;
	private String cel;
	private String endereco;
	private String email;
	private String rG;
	private String cPF;

	public Cliente(int i, String n, String s, String p, Calendar dN, String t, String tC, String c, String e, String eM, String rg, String cpf){
		setId(i);
		setNome(n);
		setSexo(s);
		setProfissao(p);
		setDataNascimento(dN);
		setTel(t);
		setTelComercial(tC);
		setCel(c);
		setEndereco(e);
		setEmail(eM);
		setRG(rg);
		setCPF(cpf);
	}
	public Cliente(){

	}

	//set's
	public void setId(int i){
		this.id = i;
	}
	public void setNome(String n){
		this.nome = n;
	}
	public void setSexo (String s){
		this.sexo = s;
	}
	public  void setProfissao (String p){
		this.profissao = p;
	}
	public void setDataNascimento (Calendar dN){
		this.dataNascimento = dN;
	}
	public void setTel (String t){
		this.tel = t;
	}
	public void setTelComercial (String t){
		this.telComercial = t;
	}
	public void setCel (String c){
		this.cel = c;
	}
	public void setEndereco(String e){
		this.endereco = e;
	}
	public void setEmail (String e){
		this.email = e;
	}
	public void setRG (String r){
		this.rG = r;
	}
	public void setCPF(String c){
		this.cPF = c;
	}

	//get's
	public int getId(){
		return id;
	}
	public String getNome(){
		return nome;
	}
	public String getSexo (){
		return sexo;
	}
	public String getProfissao (){
		return profissao;
	}
	public Calendar getDataNascimento (){
		return dataNascimento;
	}
	public String getTel (){
		return tel;
	}
	public String getTelComercial (){
		return telComercial;
	}
	public String getCel (){
		return cel;
	}
	public String getEndereco(){
		return endereco;
	}
	public String getEmail (){
		return email;
	}
	public String getRG (){
		return rG;
	}
	public String getCPF(){
		return cPF;
	}

	public void criar() {
		ClienteDAO dao = new ClienteDAO();
		ClienteTO to = getTO();
		dao.incluir(to);
		this.id = to.getId();
	}
	
	public void excluir() {
		ClienteDAO dao = new ClienteDAO();
		ClienteTO to = new ClienteTO();
		to.setId(id);
		dao.excluir(to);
   }
	
	public void carregar() {
		ClienteDAO dao = new ClienteDAO();
		ClienteTO to = dao.carregar(id);
		id = to.getId();
		nome = to.getNome();
		sexo = to.getSexo();
		profissao = to.getProfissao();
		dataNascimento = to.getDataNascimento();
		tel = to.getTel();
		telComercial = to.getTelComercial();
		cel = to.getCel();
		endereco = to.getEndereco();
		email = to.getEmail();
		rG = to.getRG();
		cPF = to.getCPF();
		
	}
	
	public void atualizar() {
		ClienteDAO dao = new ClienteDAO();
		ClienteTO to = getTO();
		dao.atualizar(to);
   }

	public ClienteTO getTO() {
		ClienteTO to = new ClienteTO();
		to.setId(id);
		to.setNome(nome);
		to.setSexo(sexo);
		to.setProfissao(profissao);
		to.setDataNascimento(dataNascimento);
		to.setTel(tel);
		to.setTelComercial(telComercial);
		to.setCel(cel);
		to.setEndereco(endereco);
		to.setEmail(email);
		to.setRG(rG);
		to.setCPF(cPF);	
		return to;
	}
	
	public Calendar stringToCalendar (String data){
		Calendar cal = Calendar.getInstance();
		try {
			SimpleDateFormat formatoData = new SimpleDateFormat("yyyy-MM-dd");
			cal.setTime(formatoData.parse(data));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return cal;
		
	}
	
	public String calendarToString (Calendar cal) throws ParseException{
		String retorno = "";
		SimpleDateFormat formatoData = new SimpleDateFormat("yyyy-MM-dd");
		retorno = formatoData.format(cal.getTime());
		return retorno;
		
	}

}

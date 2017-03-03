package to;

import java.util.Calendar;

public class ClienteTO {
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

	public ClienteTO(int i, String n, String s, String p, Calendar dN, String t, String tC, String c, String e, String eM, String rg, String cpf){
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
	public ClienteTO(){
		
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
}


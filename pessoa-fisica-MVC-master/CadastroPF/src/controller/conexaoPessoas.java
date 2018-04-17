package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.PessoaFisicaA;

public class conexaoPessoas {

	private Connection conn;
	
	public conexaoPessoas(Connection conn) {
		this.conn = conn;
	}
	
	public void salvar(PessoaFisicaA c) throws SQLException{
		String sql = "insert into pessoafisica (rg, nome,endereco,bairro,cep, cidade,estado,telefone,celular,cpf, sexo) values ('"+c.getRg()+"','"+c.getNome()+"','"+c.getEndereco()+"','"+c.getBairro()+"','"+c.getCep()+"','"+c.getCidade()+"','"+c.getEstado()+"','"+c.getTelefone()+"','"+c.getCelular()+"','"+c.getCpf()+"','"+c.getSexo()+"');";
		System.out.println(sql);
		PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
		preparedStatement.executeUpdate();
		preparedStatement.close();
	}
	public void excluir (int rg) {
		String sql = "delete from alunos where rg='"+rg+"';";
		System.out.println(sql);
		try {
			PreparedStatement prepareStatement = this.conn.prepareStatement(sql);
			prepareStatement.executeUpdate();
			prepareStatement.close();
		}catch (SQLException e){
			e.printStackTrace();
		}


	}
}

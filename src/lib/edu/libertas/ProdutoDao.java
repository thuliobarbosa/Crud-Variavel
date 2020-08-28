package lib.edu.libertas;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class ProdutoDao {
	
	public void inserir(Produto p) {
			
		Conexao con = new Conexao();
		
		try {
			
			String sql = "INSERT INTO produto "
					     + "(descricao, marca, precoCusco, precoVenda, saldoEstoque) "
					     + "VALUES (?, ?, ?, ?, ?)";
		
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setString(1, p.getDescricao());
			prep.setString(2, p.getMarca());
			prep.setDouble(3, p.getPrecoCusto());
			prep.setDouble(4, p.getPrecoVenda());
			prep.setInt(5, p.getSaldoEstoque());
			prep.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
	}
	
	public LinkedList<Produto> listar() {
		
		Conexao con = new Conexao();
		LinkedList<Produto> lista = new LinkedList<Produto>();
		
		try {
			
			String sql = "SELECT * FROM produto";
			Statement instrucao = con.getConexao().createStatement();
			ResultSet res = instrucao.executeQuery(sql);
			
			while (res.next()) {
				Produto p = new Produto();
				p.setDescricao(res.getString("descricao"));
				p.setMarca(res.getString("marca"));
				p.setPrecoCusto(res.getDouble("precoCusco"));
				p.setPrecoVenda(res.getDouble("precoVenda"));
				p.setSaldoEstoque(res.getInt("saldoEstoque"));
				lista.add(p);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		
		return lista;
	}
	
}

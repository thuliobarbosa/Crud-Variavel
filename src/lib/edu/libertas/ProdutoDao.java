package lib.edu.libertas;

import java.util.LinkedList;

public class ProdutoDao {

	private static LinkedList<Produto> lista = new LinkedList<Produto>();
	
	public void inserir(Produto p) {
		lista.add(p);
	}
	
	public LinkedList<Produto> listar() {
		return lista;
	}
	
}

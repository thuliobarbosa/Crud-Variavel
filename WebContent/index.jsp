<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="lib.edu.libertas.*" %>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Lista de produtos</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	</head>
	<body>
		<div class="container d-flex justify-content-center">
			<div class="row ">
				<h1 class="display-2 ">Lista de produtos</h1>
			</div>
		</div>
		<hr>
		<br><br><br>
		<div class="container">
			<table class="table table-hover">
				<thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">Descrição</th>
				      <th scope="col">Marca</th>
				      <th scope="col">Preço de custo</th>
				      <th scope="col">Preço de venda</th>
				      <th scope="col">Saldo em estoque</th>
				    </tr>
		    	</thead>
	
				<%
					ProdutoDao pdao = new ProdutoDao();
			
					int cont = 0;
				
					for(Produto p: pdao.listar()){
					cont++;
				%>
				
			    <tbody>
				    <tr>
				       <td><%= cont %></td>
				       <td><%= p.getDescricao() %></td>
				       <td><%= p.getMarca() %></td>
				       <td><%= p.getPrecoCusto() %></td>
				       <td><%= p.getPrecoVenda() %></td>
				       <td><%= p.getSaldoEstoque() %></td>
				     </tr>
			     </tbody>
			     
				<% 
					}
				%>
				
			</table>
		</div>
	
		<br><br>
		<div class="container d-flex justify-content-center">
		  	<button type="submit" onclick="window.open('produto.jsp')" class="btn btn-primary btn-lg">INCLUIR NOVO REGISTRO</button>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

	</body>
</html>
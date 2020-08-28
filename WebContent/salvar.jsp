<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lib.edu.libertas.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		Produto p = new Produto();
		p.setDescricao(request.getParameter("descricao"));
		p.setMarca(request.getParameter("marca"));
		p.setPrecoVenda(Double.parseDouble(request.getParameter("precoVenda")));
		p.setPrecoCusto(Double.parseDouble(request.getParameter("precoCusto")));
		p.setSaldoEstoque(Integer.parseInt(request.getParameter("saldoEstoque")));
		
		ProdutoDao pdao = new ProdutoDao();
		pdao.inserir(p);
		
		response.sendRedirect("index.jsp");
	%>
	
</body>
</html>
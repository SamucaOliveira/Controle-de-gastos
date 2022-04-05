<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Custo"%>
<%@page import="DAO.DAOCusto"%>

<%
  Custo cst = new Custo();
  DAOCusto dcst = new DAOCusto();
  try{
      String nome_comprador = request.getParameter("nome_comprador");
      String nome_loja = request.getParameter("nome_loja");
      Float valor_compra = Float.parseFloat(request.getParameter("valor_compra"));
      String forma_pagamento = request.getParameter("forma_pagamento");
      String data_pagamento = request.getParameter("data_pagamento");
      cst.setNome_comprador(nome_comprador);
      cst.setNome_loja(nome_loja);
      cst.setValor_compra(valor_compra);
      cst.setForma_pagamento(forma_pagamento);
      cst.setData_pagamento(data_pagamento);
      dcst.InserirCusto(cst); //executa o método
      out.print("Gasto inserido com sucesso!");
      out.print("<meta http-equiv='refresh' content='2, url=index.jsp'>");
  }catch(Exception erro){
      throw new RuntimeException("Erro executar inserir custo:" + erro);
  };
%>
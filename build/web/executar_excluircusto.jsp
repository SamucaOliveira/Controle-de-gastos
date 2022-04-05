<%@page import="MODEL.Custo"%>
<%@page import="DAO.DAOCusto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir custo</title>
    </head>
    <body>
        <%      Custo cst= new Custo();
                DAOCusto dcst = new DAOCusto();
            try{
               
                cst.setId_nota(Integer.valueOf(request.getParameter("id_nota")));
                dcst.excluirCustoId(cst);
                out.print("Custo excluido com sucesso!");
                out.print("<meta http-equiv='refresh' content='2, url=consultar_custo.jsp'>");
  }catch(Exception erro){
      throw new RuntimeException("Erro executar excluir cliente:" + erro);
  }
        %>
    </body>
</html>


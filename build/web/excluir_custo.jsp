<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Custo"%>
<%@page import="DAO.DAOCusto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir notas cadastradas</title>
    </head>
    <body>
        <h1>Excluir Notas</h1>
        <form action='executar_excluircusto.jsp' method="post">
            <label>Id</label>
            <input type='text' name="id_nota" placeholder='Digite o id que deseja excluir:'/>
            <button type="submit">Excluir</button><br><br>
        </form><br>
        <br><a href="consultar_custo.jsp">Voltar para página principal</a>
    </body>
</html>

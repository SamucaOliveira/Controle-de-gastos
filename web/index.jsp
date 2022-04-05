<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de controle</title>
    </head>
    <body>
        <h1>Bem vindo!</h1>
        <p>Para informar uma nova compra, clique abaixo: <br>
            <form method="get" action="novo_custo.jsp">
            <button class="btn" type="submit">Cadastro</button>
            </form></p>
        <p>Para consultar os gastos cadastrados, clique abaixo: <br>
            <form method="get" action="consultar_custo.jsp">
            <button class="btn" type="submit">Consulta</button>
            </form></p>
    </body>
</html>

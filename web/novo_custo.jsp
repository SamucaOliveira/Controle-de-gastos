<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Página de Cadastro de Gasto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0=device-width, initial-sca">
    </head>
    <body>
        <div><h1>Formulário de cadastro</h1>
            <form method="post" action="executar_inserircusto.jsp">
                <label for="nome_comprador"> Nome </label><br>
                <input type="text" name="nome_comprador"><br>
                <label for="nome_loja"> Descrição da compra </label><br>
                <textarea type="text" id="nome_loja" name="nome_loja"></textarea><br>
                <label for="valor_compra"> Valor Compra </label><br>
                <input type="float" name="valor_compra"><br>
                <label for="forma_pagamento"> Forma de pagamento </label><br>
                <input type="text" name="forma_pagamento"><br>
                <label for="data_pagamento"> Data do pagamento </label><br>
                <input type="date" name="data_pagamento"><br>
                <input type="submit" value="Enviar" class="btn"><br>
            </form><br>
            <a href="index.jsp">Voltar para página principal</a>
        </div>
    </body>
</html>
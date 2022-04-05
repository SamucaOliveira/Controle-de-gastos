<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Custo"%>
<%@page import="DAO.DAOCusto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar clientes cadastrados</title>
    </head>
    <body>
        <h1>Consultar Clientes Cadastrados</h1>
        <form action='consultar_custo.jsp' method="post">
            <label>Pesquisar por nome</label>
            <input type='text' name="nome_comprador" placeholder='Digite o nome'/>
            <input type="submit" value='Pesquisar'/><br><br>
        </form><br>
        <%
            out.print("<table border='1' align='center'>");
                out.print("<tr>");
                    out.print("<th>ID</th>");
                    out.print("<th>Nome do comprador</th>");
                    out.print("<th>Nome da loja</th>");
                    out.print("<th>Valor gasto (R$)</th>");
                    out.print("<th>Forma de pagamento</th>");
                    out.print("<th>Data_pagamento</th>");
                    out.print("<th colspan='2'>Funções</th>");
                    out.print("</tr>");
                DAOCusto cst = new DAOCusto();
                if(request.getParameter("nome_comprador")=="" || request.getParameter("nome_comprador")==null){ // se o valor de nome for vazio ou nulo, executa o listarCliente
                    ArrayList<Custo> lista = cst.listarCusto();//size tamanho da lista, vai preenchendo de 1 em 1, arrayList importa a lista
                    for(int i=0;i<lista.size();i++){// indice =0 ou menor que a lista, soma um valor novo
                        out.print("<tr>");
                            out.print("<td>"+lista.get(i).getId_nota()+"</td>"); //carrega o valor da lista no índice pegando o id
                            out.print("<td>"+lista.get(i).getNome_comprador()+"</td>");
                            out.print("<td>"+lista.get(i).getNome_loja()+"</td>");
                            out.print("<td>"+lista.get(i).getValor_compra()+"</td>");
                            out.print("<td>"+lista.get(i).getForma_pagamento()+"</td>");
                            out.print("<td>"+lista.get(i).getData_pagamento()+"</td>");
                            out.print("<td><a href='excluir_custo.jsp?id=" 
                            + lista.get(i).getId_nota() + "'> Excluir </a></td>");
                        out.print("</tr>");
                        }
                }else{ //pesquisar por nome
                    ArrayList<Custo> lista = cst.listarCustoNome(request.getParameter("nome_comprador"));
                    for(int i=0;i<lista.size();i++){ 
                        out.print("<tr>");
                            out.print("<td>"+lista.get(i).getId_nota()+"</td>");
                            out.print("<td>"+lista.get(i).getNome_comprador()+"</td>");
                            out.print("<td>"+lista.get(i).getNome_loja()+"</td>");
                            out.print("<td>"+lista.get(i).getValor_compra()+"</td>");
                            out.print("<td>"+lista.get(i).getForma_pagamento()+"</td>");
                            out.print("<td>"+lista.get(i).getData_pagamento()+"</td>");
                        out.print("</tr>");
                        }
                }
            out.print("</table>");  
        %>
        <br><a href="index.jsp">Voltar para página principal</a>
    </body>
</html>

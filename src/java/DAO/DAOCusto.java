package DAO;

import MODEL.Custo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOCusto {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Custo> lista = new ArrayList<>();
    
    public DAOCusto () {
        conn = new Conexao().getConexao();
    }
    public void InserirCusto(Custo custo) throws SQLException {
        String sql = "insert into tb_gastos (nome_comprador, nome_loja, valor_compra, forma_pagamento, data_pagamento) values (?, ?, ?, ?, ?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, custo.getNome_comprador());
            stmt.setString(2, custo.getNome_loja());
            stmt.setFloat(3, custo.getValor_compra());
            stmt.setString(4, custo.getForma_pagamento());
            stmt.setString(5, custo.getData_pagamento());
            stmt.execute();
            stmt.close();
        }catch(Exception erro) {
            throw new RuntimeException("Erro inserir custo:" + erro);
        }
    }
    public ArrayList<Custo> listarCusto(){
        String sql = "SELECT * FROM tb_gastos";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Custo custo = new Custo();
                custo.setId_nota(rs.getInt("id_nota"));
                custo.setNome_comprador(rs.getString("nome_comprador"));
                custo.setNome_loja(rs.getString("nome_loja"));
                custo.setValor_compra(rs.getFloat("valor_compra"));
                custo.setForma_pagamento(rs.getString("forma_pagamento"));
                custo.setData_pagamento(rs.getString("data_pagamento"));
                lista.add(custo);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro listar todos os gastos: " + erro);
        }
        return lista;
    }
    public ArrayList<Custo> listarCustoNome(String valor){
        String sql = "SELECT * FROM tb_gastos WHERE nome_comprador LIKE '%"+valor+"%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Custo custo = new Custo();
                custo.setId_nota(rs.getInt("id_nota"));
                custo.setNome_comprador(rs.getString("nome_comprador"));
                custo.setNome_loja(rs.getString("nome_loja"));
                custo.setValor_compra(rs.getFloat("valor_compra"));
                custo.setForma_pagamento(rs.getString("forma_pagamento"));
                custo.setData_pagamento(rs.getString("data_pagamento"));
                lista.add(custo);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro listar todos os gastos: " + erro);
        }
        return lista;
    }
    public void excluirCustoId(Custo cst){
        String sql = "DELETE FROM tb_gastos WHERE id_nota = ?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, cst.getId_nota());
            
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro excluir o custo: " + erro);
        }
    }
}

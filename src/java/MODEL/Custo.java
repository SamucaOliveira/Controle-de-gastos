
package MODEL;

public class Custo {
    private int id_nota;
    private String nome_comprador;
    private String nome_loja;
    private Float valor_compra;
    private String forma_pagamento;
    private String data_pagamento;

    public int getId_nota() {
        return id_nota;
    }

    public void setId_nota(int id_nota) {
        this.id_nota = id_nota;
    }

    public String getNome_comprador() {
        return nome_comprador;
    }

    public void setNome_comprador(String nome_comprador) {
        this.nome_comprador = nome_comprador;
    }

    public String getNome_loja() {
        return nome_loja;
    }

    public void setNome_loja(String nome_loja) {
        this.nome_loja = nome_loja;
    }

    public Float getValor_compra() {
        return valor_compra;
    }

    public void setValor_compra(Float valor_compra) {
        this.valor_compra = valor_compra;
    }

    public String getForma_pagamento() {
        return forma_pagamento;
    }

    public void setForma_pagamento(String forma_pagamento) {
        this.forma_pagamento = forma_pagamento;
    }

    public String getData_pagamento() {
        return data_pagamento;
    }

    public void setData_pagamento(String data_pagamento) {
        this.data_pagamento = data_pagamento;
    }
    
    
}

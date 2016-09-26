/**
 * Created by christian on 26/09/16.
 */

function adiciona_carrinho(evento){
    debugger;
    var botao = evento.target;
    var id_produto = $(botao).val();
    //var seletor_linha = "#linha_estoque_" + id_produto;
    //$(seletor_linha).prop("disabled",true);
    $(botao).prop("disabled",true);

    //fazer cópia da linha

}

function remove_carrinho(evento){
    debugger;
    var botao = evento.target;
    var id_produto = $(botao).val();
    var seletor_botao = "#bt_add_" + id_produto;
    $(seletor_botao).prop("disabled",false);

    //remover linha da tabela
}


function calcula_valor_carrinho(){

}

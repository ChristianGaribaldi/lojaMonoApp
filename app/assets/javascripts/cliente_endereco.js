/**
 * Created by christian on 19/09/16.
 */


function atualizaEndereco(){
    var cep = $( "#cliente_cep").val();
    if(cep != "" && cep.length == 8){
        var url = "https://viacep.com.br/ws/" + cep + "/json/";
        $.ajax({
            url: url ,
            context: document.body
        }).done(function(dados) {
            if(!("erro" in dados)) {
                $("#cliente_rua").val(dados.logradouro);
                $("#cliente_bairro").val(dados.bairro);
                $("#cliente_cidade").val(dados.localidade);
                $("#cliente_estado").val(dados.uf);
                $(".painelEndereco").show();
                $( "#cliente_numero" ).focus();
            }
            else{
                alert("CEP não encontrado!");
                $( "#cliente_cep").val("");
                $("#cliente_rua").val("");
                $("#cliente_bairro").val("");
                $("#cliente_cidade").val("");
                $("#cliente_estado").val("");
            }
        }).fail(function() {
            alert("CEP não encontrado!");
            $( "#cliente_cep").val("");
        })
    }
}

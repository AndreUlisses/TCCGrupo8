/* 
 * Mascara para os campos de entrada.
 * @Autor: Márcio Soares
 * @Data: 03/06/2015
 */

$(function() {
    $("#hora").mask("999:99");
    
    $('.cnpj').mask('999.999.999/9999-99');
    $('.cpf').mask('999.999.999-99');
    
    $('.telefone').mask('(99) 9999-9999');
    
    $('.percent').mask('99.99 %');
});
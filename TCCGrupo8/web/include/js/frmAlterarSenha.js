/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function() {
    $('#rodapeSenha button').click(function(){  
        var button = $(this);
        var inputs = $('form input');
        var progress = $('.progress');
        var progressBar = $('.progress-bar');
        $('#tituloSenha').text("Alterar Senha");
        
        if (($("#txtSenha").val()==="")&&($("#txtNovaSenha").val()==="")&&($("#txtCNS").val()===""))
            exit();

        $.ajax({
            type: "POST",
            url: "sistema/AlterarSenha",
            data: { txtSenha: $("#txtSenha").val(), txtNovaSenha: $("#txtNovaSenha").val(), txtCNS: $("#txtCNS").val() },
            success: function( data ) {  
                if(!data) {
                    $("#alterarSenhaErro").hide();
                    inputs.attr("disabled", "disabled");
                    button.hide();
                    progress.show();
                    $('.progress-bar').css({ "width" : "0%" });
                    progressBar.animate({width : "100%"}, 100);
                    progress.delay(1000).fadeOut(600);
                    button.text("Fechar").removeClass("btn-primary").addClass("btn-success").blur().delay(1600)
                    .fadeIn(function(){
                        $('#tituloSenha').text("Senha alterada com sucesso");
                        $('#btnSenha').attr("data-dismiss", "modal");
                        $("#txtSenha").val("");
                        $("#txtNovaSenha").val(""); 
                        $("#txtCNS").val("");
                    });   
                } else { 
                    if(data === "erro1") {
                        $("#alterarSenhaErro").hide();
                        inputs.attr("disabled", "disabled");
                        button.hide();
                        progress.show();
                        $('.progress-bar').css({ "width" : "0%" });
                        progressBar.animate({width : "100%"}, 100);
                        progress.delay(1000).fadeOut(600);
                        button.text("ok").addClass("btn-primary").blur().delay(1600)
                        .fadeIn(function(){
                            $("#txtSenha").val("");
                            $("#txtNovaSenha").val(""); 
                            $("#txtCNS").val("");
                            $('#alterarSenhaErro').hide().html("<div class='alert alert-danger'>A confirmação de senha não confere!</div>").fadeIn('slow');
                            $('form input').removeAttr("disabled");
                        });
                    } else { 
                        $("#alterarSenhaErro").hide();
                        inputs.attr("disabled", "disabled");
                        button.hide();
                        progress.show();
                        $('.progress-bar').css({ "width" : "0%" });
                        progressBar.animate({width : "100%"}, 100);
                        progress.delay(1000).fadeOut(600);
                        button.text("ok").addClass("btn-primary").blur().delay(1600)
                        .fadeIn(function(){
                            $("#txtSenha").val("");
                            $("#txtNovaSenha").val(""); 
                            $("#txtCNS").val("");
                            $('#alterarSenhaErro').hide().html("<div class='alert alert-danger'>A senha atual está incorreta!</div>").fadeIn('slow');
                            $('form input').removeAttr("disabled");
                        });
                    } 
                }   
            }
        }); 
    });
});
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Iris</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">


        <script src="include/js/jquery-1.11.3.min.js"></script>
        <script src="include/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="include/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="include/css/login_novo.css"> 
        <script src="include/js/jquery-validate.js"></script>
        <script src="include/js/parsley.js"></script>
        <link href="include/css/parsley.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-latest.js"></script>

        <!-- Le styles -->
        <style>
            body {
                margin: 0;
                background: url('include/img/iris-wallpaper.jpg');
                background-size: 1440px 800px;
                background-repeat:no-repeat;
                display: compact;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="row vertical-offset-100">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">                                
                            <div class="row-fluid user-row">
                                <img src="include/img/iris-logo.png" class="img-responsive" alt="Iris">
                            </div>
                        </div>
                        <div class="panel-body">
                            <form id="formLogin" class="form-vertical" method="post" action="./dashboard.html" novalidate="novalidate">        

                                <div class="form-group">
                                    <div class="input-group">
                                        <span id="span-email" class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="email" name="email" type="email" placeholder="Email" class="form-control"> 
                                    </div>      
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <span id="span-senha" class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input name="senha" type="password" placeholder="Senha" class="form-control" required="" aria-required="true">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label></label>
                                    <a class="pull-right link_login" href="#esqueciSenha" data-toggle="modal">Esqueceu a senha?</a>  
                                    <a class="pull-left link_login" href="#cadastrarModal" data-toggle="modal">Registrar</a>  
                                </div>  

                                <div class="form-actions" style="text-align: center">
                                    <button id="btAcessar" class="btn btn-primary btn-block" >Acessar</button>
                                </div>
                            </form>          
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="footer" class="remote-nav">
            <div class="wrapper">
                <p id="copyright" class="guest"><span>Iris Communication</span> <em>© 2015</em></p>
            </div>
        </div>


        <!--        <a href="iris/#notification" id="call-modal" role="button" class="btn" data-toggle="modal" style="display: none ">notification</a>
                <div id="notification" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content"> 
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 id="myModalLabel">Iris</h4>
                            </div>
                            <div class="modal-body">
                                <h5 style="text-align: center">Os dados de acesso estão incorretos, por favor tente novamente!</h5>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Fechar</button>
                            </div>
                        </div>
                    </div>
                </div>-->

        <div id="cadastrarModal" class="modal fade">
            <div class="modal-open">
                <div class="row vertical-offset-100">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Cadastrar</h4>
                                <div id="feedbackCadastro">
                                </div>
                            </div>
                            <div class="container">
                                <div class="modal-body">
                                    <div class="container">
                                        <form method="post" action="Servlet" name="frmPrincipal" id="frmPrincipal">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="txtNome">Informe seu nome</label>
                                                        <input type="text" class="form-control" id="txtNome" name="txtNome" placeholder="Nome">
                                                    </div>    
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="txtEmail">Informe seu email</label>
                                                        <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="Email">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="txtSenha">Informe sua senha</label>
                                                        <input type="password" class="form-control" id="txtSenha" name="txtSenha" placeholder="Senha">
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="reset" class="btn btn-default btn-lg">Limpar</button>
                                            <button id="cadastrar" type="button"  class="btn btn-default btn-lg">Cadastrar</button>

                                            <input type="hidden" name="txtObjeto" id="txtObjeto" value="Usuario">
                                            <input type="hidden" name="txtMetodo" id="txtMetodo" value="Cadastrar">
                                        </form>
                                    </div> <!-- /container -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="esqueciSenha" class="modal fade">
            <div class="modal-open">
                <div class="row vertical-offset-100">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Esqueci minha senha</h4>
                            </div>
                            <div class="container">
                                <div class="modal-body">
                                    <div class="container">
                                        <form method="post" action="Servlet" name="frmEsqueceuSenha" id="frmEsqueceuSenha">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="txtEmailEqueceuSenha">Informe seu email</label>
                                                        <input type="email" class="form-control" id="txtEmailEqueceuSenha" name="txtEmailEqueceuSenha" placeholder="Email">
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-default btn-lg">Enviar</button>
                                        </form>
                                    </div> <!-- /container -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="include/js/jquery.js"></script>
        <script src="include/js/bootstrap-transition.js"></script>
        <script src="include/js/bootstrap-alert.js"></script>
        <script src="include/js/bootstrap-modal.js"></script>
        <script src="include/js/bootstrap-dropdown.js"></script>
        <script src="include/js/bootstrap-scrollspy.js"></script>
        <script src="include/js/bootstrap-tab.js"></script>
        <script src="include/js/bootstrap-tooltip.js"></script>
        <script src="include/js/bootstrap-popover.js"></script>
        <script src="include/js/bootstrap-button.js"></script>
        <script src="include/js/bootstrap-collapse.js"></script>
        <script src="include/js/bootstrap-carousel.js"></script>
        <script src="include/js/bootstrap-typeahead.js"></script>

        <script>
            $("#cadastrar").click(function () {
                $("#feedbackCadastro").load("Servlet", {
                    txtObjeto: 'Usuario'
                    , txtMetodo: 'Cadastrar'
                    , txtSenha: document.getElementById("txtSenha").value
                    , txtNome: document.getElementById("txtNome").value
                    , txtEmail: document.getElementById("txtEmail").value

                }, function () {
                    var feedback = ${feedback}
                    if (feedback) {
                        $("#feedbackCadastro").attr("class", "alert alert-success")
                        document.getElementById("feedbackCadastro").innerHTML = "Cadastro realizado com sucesso!";
                    } else {
                        $("#feedbackCadastro").attr("class", "alert alert-danger")
                        document.getElementById("feedbackCadastro").innerHTML = "Ocorreu um erro durante o cadastro.";
                    }
                });
            });
        </script>
        <script type="text/javascript">

            $(document).ready(function () {

                $('#email').focus();
                $("#formLogin").validate({
                    rules: {
                        email: {required: true, email: true},
                        senha: {required: true}
                    },
                    messages: {
                        email: {required: '', email: ''},
                        senha: {required: ''}
                    },
                    submitHandler: function (form) {
                        var dados = $(form).serialize();

                        $.ajax({
                            type: "POST",
                            url: "iris/logar?ajax=true",
                            data: dados,
                            dataType: 'json',
                            success: function (data)
                            {
                                if (data.result === true) {
                                    window.location.href = "iris/sistema";
                                }
                                else {
                                    $('#call-modal').trigger('click');
                                }
                            }
                        });

                        return false;
                    },
                    errorClass: "help-block",
                    errorElement: "span",
                    highlight: function (element, errorClass, validClass) {
                        $(element).parents('.form-group').addClass('has-error');
                        $(element).parents(".input-group-addon").addClass("danger");
                        $(".input-group-addon").attr("title", "Existe(m) erro(s) no(s) campo(s) em vermelho. Verifique!");
                    },
                    unhighlight: function (element, errorClass, validClass) {
                        $(element).parents('.form-group').removeClass('has-error');
                        $(element).parents('.form-group').addClass('has-success');
                        $(element).parents(".input-group-addon").removeClass("danger");
                        $(element).parents(".input-group-addon").addClass("success");
                    }
                });

            });
        </script>

    </body>
</html>
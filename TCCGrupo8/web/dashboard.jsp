<%@page import="entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Iris</title>
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
        <meta content="Sistema de Gerenciamento de Informações da Conceitual + Iris web communication" name="description">

        <!-- ================== BEGIN BASE CSS STYLE ================== -->
        <link href="include/css/jquery-ui.min.css" rel="stylesheet">
        <link href="include/css/bootstrap.min.css" rel="stylesheet">
        <link href="include/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="include/css/animate.min.css" rel="stylesheet">
        <link href="include/css/style.min.css" rel="stylesheet">
        <link href="include/css/style-responsive.min.css" rel="stylesheet">
        <link href="include/css/default.css" rel="stylesheet" id="theme">
        <link href="include/css/canvas.css" rel="stylesheet">
        <link href="include/css/settings.css" rel="stylesheet">
        <!-- ================== END BASE CSS STYLE ================== -->

        <!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
        <link href="include/css/parsley.css" rel="stylesheet">
        <link href="include/css/bootstrap-datepicker3.css" rel="stylesheet">
        <link href="include/css/bootstrap-datetimepicker.css" rel="stylesheet">
        <link href="nanoscroller.css" rel="stylesheet" >
        <!-- ================== END PAGE LEVEL STYLE ================== -->

        <!-- ================== BEGIN BASE JS ================== -->
        <script src="include/js/pace.min.js"></script>
        <script src="include/js/jquery-1.11.3.min.js"></script>
        <script src="include/js/jquery-1.9.1.min.js"></script>
        <script src="include/js/jquery.nanoscroller"></script>
        <!-- ================== END BASE JS ================== -->

        <style>.cke{visibility:hidden;}</style>
    </head>
    <%
        Usuario usuario;
        usuario = (Usuario) session.getAttribute("usuarioLogado");
        String nomeUsuario = "teste";

//        try {
//            nomeUsuario = usuario.getNome();
//            if (usuario == null) {
//                throw new ServletException("Não há usuário logado");
//            }
//        } catch (NullPointerException e) {
//            throw new ServletException("Não há usuário logado");
//        }

    %>
    <body class="pace-done">
        <div class="pace  pace-inactive">
            <div class="pace-progress" data-progress-text="100%" data-progress="99" style="width: 100%;">
                <div class="pace-progress-inner">
                </div>
            </div>
            <div class="pace-activity">
            </div>
        </div>
        <div id="page-loader" class="fade in hide">
            <span class="spinner">
            </span>
        </div>

        <div id="page-container" class="fade page-sidebar-fixed page-header-fixed in">
            <div id="header" class="header navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="./dashboard.jsp" class="navbar-brand"><span class="navbar-logoC"><img src="include/img/conceitual.gif" width="30" height="30"></span> Conceitual</a>
                        <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                            <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                        </button>
                    </div>

                    <ul class="nav navbar-nav navbar-right">

                        <li><div style="margin: 18px;">Versão: 1.0</div></li>
                        <li>
                            <form class="navbar-form full-width">
                                <div class="form-group">
                                    <input type="text" id="txtBuscador" class="form-control" placeholder="Buscar">
                                    <button type="submit" class="btn btn-search">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </form>
                        </li>
                        <li class="dropdown navbar-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <img src="include/img/usuario.jpg" width="100" height="100" alt=""> <span class="hidden-xs"> <%=nomeUsuario%></span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu animated fadeInLeft">
                                <li class="arrow"></li>
                                <li><a href="/mural#" data-toggle="modal" data-target="#Modal-AlterarSenha"><i class="fa fa-user"></i>&nbsp;
                                        Alterar Senha</a></li>
                                <li class="divider"></li>
                                <li><a id="sair" href="./index.jsp"><i class="fa fa-sign-out"></i>&nbsp; Sair</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" id="btnChat"><i class="fa fa-comment"></i></a>
                        </li>
                    </ul>
                </div>
            </div>





            <!--CHAT CHAT CHAT-->
            <div id="chat" class="collapse">
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Matheus dos Santos Fraga</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                      
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Márcio da Silva</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>  
                
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Cláudio Provesano Reis</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Maria do Carmo Provesano Reis</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Raíssa Provesano Reis</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Rian Provesano Reis</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Adriano da Silva Souza</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Pablo Prazeres</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Francisco Chico</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Andrew Constantino</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Fábio Silva Pinto</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Cláudio Roberto Tenfen</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Márcio Soares</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Patrick Machado</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Rafael Mateus</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Nilton deolindo</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Vanderleia</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Silvana Souza</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Ana Priscila Teste</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                <a class="lv-item" href="javascript:;">
                    <div class="media-body p-l-5 p-b-10">
                        <div>
                        <div class="pull-right p-r-10 m-2">
                            <img src="include/img/usuario.jpg" width="32" height="32" alt="" class="img-circle">
                        </div>
                            <div class="lv-item">Jannifer Barbosa Teste Souza</div>
                            <div class="icon-online"><small class="lv-small p-l-5">Online</small></div>
                        </div>
                    </div>
                </a>     
                      
                
                
            </div>
            <!--CHAT CHAT CHAT-->






            <div id="sidebar" class="sidebar">
                <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div data-scrollbar="true" data-height="100%" style="overflow: hidden; width: auto; height: 100%;">
                        <ul class="nav">
                            <li class="nav-profile">
                                <div class="image">
                                    <a href="javascript:;"><img src="include/img/usuario.jpg" width="100" height="100" alt=""></a>
                                </div>
                                <div class="info">
                                    <%=nomeUsuario%>
                                </div>
                            </li>
                        </ul>
                        <ul class="nav">
                            <li class="nav-header">Menu</li>
                            <li class="has-sub active"><a href="./dashboard.jsp"><i class="fa fa-comment"></i>
                                    <span>Mural</span></a></li>
                            <li class="has-sub ">
                                <a href="javascript:;"> <b class="caret pull-right"></b> <i class="fa fa-file-text"></i> <span>Procedimento<span class="label label-theme m-l-5">Novo</span></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class=""><a href="#procedimento">5W2H</a></li>
                                </ul>
                            </li>

                            <li class="has-sub ">
                                <a href="javascript:;"> <b class="caret pull-right"></b> <i class="fa fa-desktop"></i> <span>Desenvolvimento</span>
                                </a>
                                <ul class="sub-menu">
                                    <li class=""><a href="#activitys_log">Minhas atividades</a></li>
                                    <li class=""><a href="#services_order">Demandas</a></li>
                                    <li class=""><a href="#function_points">Ponto de função</a></li>
                                    <li class=""><a href="#ExtensaoHora">Extensão de horas</a></li>
                                </ul>
                            </li>
                            <li class="has-sub ">
                                <a href="javascript:;"> <b class="caret pull-right"></b> <i class="fa fa-lightbulb-o"></i> <span>Gestão da Inovação</span>
                                </a>
                                <ul class="sub-menu">
                                    <li class=""><a href="#Activity_controller">Minhas
                                            atividades</a></li>
                                    <li class=""><a href="#listMyIdeas">Minhas
                                            ideias</a></li>
                                    <li class=""><a href="#Idea_controller">Ideias</a></li>
                                </ul>
                            </li>

                            <li class="has-sub ">
                                <a href="javascript:;"> <b class="caret pull-right"></b> <i class="fa fa-book"></i> <span>Biblioteca</span>
                                </a>
                                <ul class="sub-menu">
                                    <li class=""><a href="#livro">Livros</a></li>
                                    <li class=""><a href="#gerenciar">Gerenciamento de
                                            Livros</a></li>
                                </ul>
                            </li>

                            <li class="has-sub "><a href="javascript:;"> <b class="caret pull-right"></b> <i class="fa fa-tachometer"></i> <span>BI</span>
                                </a>
                                <ul class="sub-menu">
                                    <li class=""><a href="#BI">Dashboard Area</a></li>
                                </ul></li>

                            <li class="has-sub ">
                                <a href="javascript:;"><b class="caret pull-right"></b><i class="fa fa-bug"></i><span>Bugs</span></a>
                                <ul class="sub-menu">
                                    <li><a href="h#create">Reportar Bug</a></li>
                                </ul>
                            </li>

                            <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
                        </ul>
                    </div><div class="slimScrollBar ui-draggable" style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 745px; background: rgb(0, 0, 0);"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div></div>
            </div>
            <div id="content" class="content">
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                testetestetestetestetestetestetestetestetestetestetestetestetestetestetesteteste
                <script src="include/js/retira_tag_html.js"></script> 
                <script type="text/javascript">
                    $("#sair").click(function () {
                        alert("Saindo");
                    <%
                        usuario = null;
                        session.setAttribute("usuarioLogado", usuario);
                    %>
                    });</script>     
            </div>
            <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
        </div>

        <!-- ================== BEGIN BASE JS ================== -->
        <script src="include/js/jquery-migrate-1.1.0.min.js"></script>
        <script src="include/js/jquery-ui.min.js"></script>
        <script src="include/js/bootstrap.min.js"></script>
        <script src="include/js/jquery.slimscroll.min.js"></script>
        <script src="include/js/jquery.cookie.js"></script>
        <!-- ================== END BASE JS ================== -->

        <!-- ================== BEGIN PAGE LEVEL JS ================== -->
        <script src="include/js/ckeditor.js"></script>
        <script src="include/js/jquery.maskedinput.min.js"></script>
        <script src="include/js/mascara.js"></script>

        <script src="include/js/bootstrap-datepicker.js"></script>
        <script src="include/js/bootstrap-datepicker.pt-BR.min.js"></script>
        <script src="include/js/moment-with-locales.js"></script>
        <script src="include/js/bootstrap-datetimepicker.js"></script>

        <script src="include/js/table-manage-default.demo.min.js"></script>
        <script src="include/js/parsley.js"></script>
        <script src="include/js/apps.min.js"></script>
        <!-- ================== END PAGE LEVEL JS ================== -->

        <script>
                    $(document).ready(function () {
                        App.init();
                        TableManageDefault.init();
                    });
                    $("#btnChat").click(function () {
                        $("#chat").toggleClass('collapse sidebarRightContent');
                    });
                    $(function () {
                        $('#chat').slimScroll({
                            height: '0px',
                            color: '#00f',
                            size: '10px',
                            allowPageScroll: false,
                            railVisible: true,
                            alwaysVisible: true,
                        });
                    });
        </script>


        <script>
            //            $("#txtBuscador").on("keyup", buscar);
            //            function buscar() {
            //                var tarjetas = $(".panel");
            //                var texto = $("#txtBuscador").val();
            //                texto = texto.toLowerCase();
            //                tarjetas.show();
            //                for (var i = 0; i < tarjetas.size(); i++) {
            //                    var contenido = tarjetas.eq(i).text();
            //                    contenido = contenido.toLowerCase();
            //                    var index = contenido.indexOf(texto);
            //                    if (index === -1) {
            //                        tarjetas.eq(i).hide();
            //                    }
            //                }
            //            }
        </script>





        <script src="include/js/frmAlterarSenha.js"></script>
        <div class="modal fade" id="Modal-AlterarSenha" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div style="width: 300px;" class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="tituloSenha">Alterar Senha</h4>
                    </div>

                    <div class="modal-body">
                        <label>Contate seu admnistrador</label>
                    </div>

                    <div id="rodapeSenha" class="modal-footer">
                        <button id="btnSenha" class="form-control btn btn-primary">Ok</button>

                        <div class="progress">
                            <div id="testeLoad" class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="100" style="width: 0%;">
                                <span class="sr-only">progress</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
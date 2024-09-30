<%@page import="java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%
    // Verificando se ususario ta logado
    String email = (String) session.getAttribute("usuario");
    if (email == null) {
        response.sendRedirect("usuarioNaoLogado.html");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en>
      <head>
      <title>Departamento</title>
      <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand navbar-dark bg-primary">
            <div class="container-fluid">
                <a href="#menu-toggle" id="menu-toggle" class="navbar-brand">
                    <span class="navbar-toggler-icon"></span>
                </a>  
                <div class="sidebar-brand"> <a href="#">Start Bootstrap</a> </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarsExample02">
                    <ul class="navbar-nav mr-auto">
                        <!--TODO-->
                        <!--TODO-->
                        <!--TODO-->
                        <!--TODO-->
                        
                        <!-- Links para poder navegar entre as paginas -->
                        <li class="nav-item active"> <a class="nav-link" href="deptoCadastraHome.jsp">Cadastrar</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="deptoAlterarHome.jsp">Alterar</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="deptoExcluirHome.jsp">Excluir</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="deptoConsultaHome.jsp">Consulta específica</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="deptoListarTodosHome.jsp">Consulta geral</a> </li>

                       
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container mt-4">
        
        <!-- titulo da pagina e chamando a Alteracao do departamento -->
        <h1 style="margin-bottom: 30px">Alterar</h1>
        <form action="deptoAlterar.jsp">
           
            <div class="form-group">
                <label for="descDepto">Descrição do Departamento a Alterar</label>
                <input type="text" id="descDepto" name="descDepto" class="form-control" placeholder="Descrição:">
                
                 <label for="idDepto">Identificação do Departamento a Alterar</label>
                <input type="text" id="idDepto" name="idDepto" class="form-control" placeholder="Identificação">
            </div>
           
            <button type="submit" class="btn btn-primary btn-block">Salvar</button>
        </form>

    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>

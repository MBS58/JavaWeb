<%-- 
    Document   : deptoListarTodos
    Created on : 11 de set. de 2024, 08:17:07
    Author     : matheus_b_stein
--%>

<%@page import="controlefuncionario.Departamento"%>
<%@page import="java.util.List"%>
<%
//Metodo para Listar os Departamentos
    Departamento dep = new Departamento();
    List<Departamento> departamentos = dep.listarDeptos();

    for (Departamento depto : departamentos) {
        System.out.println("ID: " + depto.getIdDepto() + " - Descrição: " + depto.getDescDepto());
    }


%>

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
                        <!-- links de Navegacao -->
                        <li class="nav-item active"> <a class="nav-link" href="deptoCadastraHome.jsp">Cadastrar</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="deptoAlterarHome.jsp">Alterar</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="deptoExcluirHome.jsp">Excluir</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="#">Consulta específica</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="#">Consulta geral</a> </li>

                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container mt-4">
            
        <!-- Titulo da pagina e chamando a logica -->
        <form action="deptoConsulta.jsp">
            <h1 style="margin-bottom: 30px" >Listar Todos</h1>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Descrição</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Departamento depto : departamentos) {%>
                    <tr>
                        <td><%= depto.getIdDepto()%></td>
                        <td><%= depto.getDescDepto()%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>

            <button type="submit" class="btn btn-primary btn-block">Listar Todos Departamentos</button>
        </form>

    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

</body>
</html>
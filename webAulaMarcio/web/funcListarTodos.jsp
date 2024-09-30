<%-- 
    Document   : funcListarTodos
    Created on : 16 de set. de 2024, 07:55:48
    Author     : matheus_b_stein
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%@page import="java.util.List"%>
<%
//Metodo para Listar os Departamentos
    Funcionario func = new Funcionario();
    List<Funcionario> funcionarios = func.listarFuncionarios();

    for (Funcionario funcs : funcionarios) {
        System.out.println("ID: " + funcs.getIdFunc()+ " - Nome: " + funcs.getNomeFunc()+ " - Departamento: " + funcs.getIdDepto()
        + " - Salario Hora: " + funcs.getSalHora());
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
                        
                        <!-- Links para poder navegar entre as paginas -->
                        <li class="nav-item active"> <a class="nav-link" href="funcCadastraHome.jsp">Cadastrar</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="funcAlterarHome.jsp">Alterar</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="funcExcluirHome.jsp">Excluir</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="funcConsultaHome.jsp">Consulta específica</a> </li>
                        <li class="nav-item active"> <a class="nav-link" href="funcListarTodosHome.jsp">Consulta geral</a> </li>


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
                        <th>Nome</th>
                        <th>Departamento</th>
                        <th>Salário Hora</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Funcionario funcs : funcionarios) {%>
                    <tr>
                        <td><%= funcs.getIdFunc()%></td>
                        <td><%= funcs.getNomeFunc()%></td>
                        <td><%= funcs.getIdDepto()%></td>
                        <td><%= funcs.getSalHora()%></td>
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
<%-- 
    Document   : deptoAlterar
    Created on : 11 de set. de 2024, 08:15:46
    Author     : matheus_b_stein
--%>

<%@page import="controlefuncionario.Departamento"%>
<%
    //Chamando o metodo para Excluir
    int idDepto = Integer.parseInt("idDepto");
    
    Departamento depto = new Departamento();
    depto.setIdDepto(idDepto);
    
    if (depto.excluirDepartamento()){
        
    //redirecionamento para a pagina Home
        response.sendRedirect("deptoExcluirHome.jsp");
    }

%>
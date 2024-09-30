<%-- 
    Document   : incluirDepto
    Created on : 11 de set. de 2024, 07:54:42
    Author     : matheus_b_stein
--%>

<%@page import="controlefuncionario.Departamento"%>
<%
    //Chamando a classe para Cadastrar Departamento
    String descDepto =  request.getParameter("descDepto");
    
    Departamento depto = new Departamento();
    depto.setDescDepto(descDepto);
    
    if (depto.incluirDepartamento()){
        
    //redirecionamento para a home do cadastro
        response.sendRedirect("deptoCadastraHome.jsp");
    }

%>

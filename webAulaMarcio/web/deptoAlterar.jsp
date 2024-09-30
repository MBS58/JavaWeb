<%-- 
    Document   : deptoAlterar
    Created on : 11 de set. de 2024, 08:07:46
    Author     : matheus_b_stein
--%>

<%@page import="controlefuncionario.Departamento"%>
<%
    // Chamando a Classe do Java para poder realizar a Alteração no Site
    String descDepto =  request.getParameter("descDepto");
    String idDeptostr = request.getParameter("idDepto");
    int idDepto = Integer.parseInt(idDeptostr);
    
    Departamento depto = new Departamento();
    depto.setDescDepto(descDepto);
    depto.setIdDepto(idDepto);
    
    if (depto.alterarDepartamento()){
        
        response.sendRedirect("deptoAlterarHome.jsp");
    }

%>
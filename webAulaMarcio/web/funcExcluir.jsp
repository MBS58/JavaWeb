<%-- 
    Document   : funcExcluir
    Created on : 16 de set. de 2024, 07:55:22
    Author     : matheus_b_stein
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%
    //Chamando o metodo para Excluir
     String idFuncstr = request.getParameter("idFunc");
    int idFunc = Integer.parseInt(idFuncstr);
    
    Funcionario func = new Funcionario();
    func.setIdFunc(idFunc);
    
    if (func.excluirFuncionario()){
        
    //redirecionamento para a pagina Home
        response.sendRedirect("funcExcluirHome.jsp");
    }

%>

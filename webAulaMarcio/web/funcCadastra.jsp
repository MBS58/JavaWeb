<%-- 
    Document   : funcCadastra
    Created on : 16 de set. de 2024, 07:54:48
    Author     : matheus_b_stein
--%>

<%@page import="controlefuncionario.Funcionario"%>
<%
    // Chamando a Classe do Java para poder realizar a Alteração no Site
    String nomeFunc = request.getParameter("nomeFunc");
    
    String idDeptostr = request.getParameter("idDepto");
    int idDepto = Integer.parseInt(idDeptostr);
    
    String salHorastr = request.getParameter("salHora");
    float salHora = Float.parseFloat(salHorastr);

    Funcionario func = new Funcionario();
    func.setNomeFunc(nomeFunc);
    func.setIdDepto(idDepto);
    func.setSalHora(salHora);

    if (func.incluirFuncionario()) {

        response.sendRedirect("funcCadastraHome.jsp");
    }

%>
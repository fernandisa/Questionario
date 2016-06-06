<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String codigo = request.getParameter("txtIdDisciplina");
    String nome = request.getParameter("txtDiscNome");
    String codigocurso = request.getParameter("selcurso"); // Chave estrangeira
    String semestre = request.getParameter("txtsemestre");
    String professor = request.getParameter("selprofessor"); //Chave Estrangeira
    String area = request.getParameter()
    
 %>
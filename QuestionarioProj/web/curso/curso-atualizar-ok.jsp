<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%
    Long idCurso = Long.parseLong(request.getParameter("txtIdCurso"));
    String nome = request.getParameter("txtNome");
    String cursoArea = request.getParameter("txtCursoArea");
    
    CursoDAO dao = new CursoDAO();
    Curso obj = new Curso();
    
    obj.setCursoArea(cursoArea);
    obj.setIdCurso(idCurso);
    obj.setNome(nome);
    
    dao.alterar(obj);
%>
<h1 class="centro">Atualização de Cursos</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="curso.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%
    CursoDAO cDAO = new CursoDAO();
    List<Curso> clista = cDAO.listar();
%>
<div>
    <h1 class="centro">Cadastro de Disciplinas</h1>
    <form action="disciplina-cadastrar-ok.jsp" method="post">
        <label>Código:</label><input type="text" name="txtIdDisciplina" /><br />

            <label>Nome:</label><input type="text" name="txtDiscNome" /><br />
            <label>Area:</label><input type="text" 
                                           name="txtArea" /><br />
            <label>Curso</label>
            <select name="selcurso">
                <option value="">Selecione</option>
                <%                            //percorrer minha lista de cursos
                    for (Curso c : clista) {
                %>
                <option value="<%=c.getIdCurso()%>"><%=c%></option>
                <%
                    }
                %>
            </select><br />
            <label>Professor</label>
            <select name="selprofessor">
                <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                for (Professor p : pLista) {
                %>
                    <option value="<%=p.getSiape()%>"><%=p%></option>
                <%
                }
                %>
            </select>
            <br />
            <input type="reset" value="Limpar" />
            <input type="submit" value="Cadastrar" />
        </form>
    
</div>


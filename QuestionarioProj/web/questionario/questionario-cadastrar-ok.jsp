<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%
    Long idQuestionario = Long.parseLong(request.getParameter("txtIdQuestionario"));
    String questPeriodo = request.getParameter("txtQuestPeriodo");
    String pergunta1 = request.getParameter("txtPergunta1");
    String pergunta2 = request.getParameter("txtPergunta1");
    String pergunta3 = request.getParameter("txtPergunta1");
    String pergunta4 = request.getParameter("txtPergunta1");
    String pergunta5 = request.getParameter("txtPergunta1");
    String pergunta6 = request.getParameter("txtPergunta1");
    String pergunta7 = request.getParameter("txtPergunta1");
    String pergunta8 = request.getParameter("txtPergunta1");
    String pergunta9 = request.getParameter("txtPergunta1");
    String pergunta10 = request.getParameter("txtPergunta1");
    
    QuestionarioDAO dao = new QuestionarioDAO();
    Questionario obj = new Questionario();
    
    obj.setIdQuestionario(idQuestionario);
    obj.setPergunta1(pergunta1);
    obj.setPergunta2(pergunta2);
    obj.setPergunta3(pergunta3);
    obj.setPergunta4(pergunta4);
    obj.setPergunta5(pergunta5);
    obj.setPergunta6(pergunta6);
    obj.setPergunta7(pergunta7);
    obj.setPergunta8(pergunta8);
    obj.setPergunta9(pergunta9);
    obj.setPergunta10(pergunta10);
    
    dao.incluir(obj);
%>
<h1 class="centro">Cadastro de Questionários</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <a href="questionario.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>

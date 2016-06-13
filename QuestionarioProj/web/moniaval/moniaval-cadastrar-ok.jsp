<%@page import="java.math.BigInteger"%>
<%@page import="modelo.Questionario"%>
<%@page import="modelo.Monitor"%>
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%
    Long idMoniaval = Long.parseLong(request.getParameter("txtIdMoniaval"));
    Long idMonitor = Long.parseLong(request.getParameter("txtIdMonitor"));
    Long idQuestionario = Long.parseLong(request.getParameter("txtIdQuestionario"));
    String maPeriodo = request.getParameter("txtMaPeriodo");
    BigInteger maResposta1 = request.getParameter("txtMaResposta1");
    String maResposta2 = request.getParameter("txtMaResposta2");
    String maResposta3 = request.getParameter("txtMaResposta3");
    String maResposta4 = request.getParameter("txtMaResposta4");
    String maResposta5 = request.getParameter("txtMaResposta5");
    String maResposta6 = request.getParameter("txtMaResposta6");
    String maResposta7 = request.getParameter("txtMaResposta7");
    String maResposta8 = request.getParameter("txtMaResposta8");
    String maResposta9 = request.getParameter("txtMaResposta9");
    String maResposta10 = request.getParameter("txtMaResposta10");
    
    
    MoniAvalDAO dao = new MoniAvalDAO();
    MoniAval obj = new MoniAval();
    
    obj.setIdMoniaval(idMoniaval);
    obj.setMaPeriodo(maPeriodo);
    obj.setMaResposta1(maResposta1);
    
    Questionario objQues = new Questionario();
    objQues.setIdQuestionario(idQuestionario);
    
    Monitor objMon = new Monitor();
    objMon.setIdMonitor(idMonitor);
    
    dao.incluir(obj);
%>
<h1 class="centro">Cadastro de Avaliação de Monitores</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <a href="moniaval.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
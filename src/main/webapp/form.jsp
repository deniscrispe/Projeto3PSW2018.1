<%-- 
    Document   : form
    Created on : 23/03/2018, 15:25:07
    Author     : denis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="select" uri="WEB-INF/select.tld"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <title>Histórico de Alunos</title>
    </head>

    <style>
        div.container {
            position: absolute;
            top: 10%;
            left: 80%;
            transform: translateY(-60%) translateX(-60%);
        }
        
        form > div.form-group {
            position: absolute;
            top: 50%;
            left: 20%;
            transform: translateY(-50%) translateX(-50%);
        }
    </style>

    <body>
        <div class="container">
            <img src="cefet.jpg" />
        </div>
        <br>
        <form action="ServletIndex" method="POST">
                               
            <div class="form-group">
                <h5>Registro de Notas</h5>
                
                <label for="aluno">Aluno:</label>
                <input type ="text" class="form-control col-20 ${requestScope.validadeNome}" name="aluno" id="aluno" value="${param.aluno}" required >
                <div class="invalid-feedback">
                    ${requestScope.msgErroAluno}
                </div>
                    
                <label for="frequencia">Frequência:</label>
                <input type ="text" class="form-control col-20 ${requestScope.validadeFrequencia}" name="frequencia" id="frequencia" value="${param.frequencia}" required>
                <div class="invalid-feedback">
                    ${requestScope.msgErroFrequencia}
                </div>

                <label for="nota1">Nota1:</label>
                <input type ="text" class="form-control col-20 ${requestScope.validadeNota1}" name="nota1" id="nota1" value="${param.nota1}" required>
                <div class="invalid-feedback">
                    ${requestScope.msgErroNota1}
                </div>

                <label for="trabalho">Trabalho:</label>
                <input type="text" class="form-control col-20 ${requestScope.validadeTrabalho}" name="trabalho" id="trabalho" value="${param.trabalho}" required>
                <div class="invalid-feedback">
                    ${requestScope.msgErroTrabalho}
                </div>

                <label for="projeto">Projeto:</label>
                <input type="text" class="form-control col-20 ${requestScope.msgErroProjeto}" name="projeto" id="projeto" value="${param.projeto}" required>
                <div class="invalid-feedback">
                    ${requestScope.msgErroProjeto}
                </div>

                <label for="pf">PF:</label>
                <input type="text" class="form-control col-20 ${requestScope.msgErroPf}" name="pf" id="pf" value="${param.pf}" required>
                <div class="invalid-feedback">
                    ${requestScope.msgErroPf}
                </div>
                
                <br>
                Disciplina: 
                <select:SelectDisciplinaTag disciplinaSelecionada="${param.disciplina}"/>${msgErroDisciplina}<br>
                <br>
                <button type="submit" class="btn btn-primary"> Enviar </button>
                
            </div>

        </form>

        <script src="js/jquery-3.2.1.slim.min.js" ></script>
        <script src="js/popper.min.js" ></script>
        <script src="js/bootstrap.min.js" ></script>
    </body>
</html>

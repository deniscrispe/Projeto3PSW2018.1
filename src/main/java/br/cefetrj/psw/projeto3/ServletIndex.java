package br.cefetrj.psw.projeto3;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author denis
 * @version 3.0
 */
@WebServlet(name = "ServletIndex", urlPatterns = {"/ServletIndex"})
public class ServletIndex extends HttpServlet {

    /**
     * Método que realiza a validação do formulário, atribuição de variaveis
     * pelos valores passados nos campos e encaminhamento para página de
     * histórico.
     *
     * @param req objeto HttpServletRequest que contém a solicitação feita pelo
     * cliente do servlet.
     * @param resp objeto HttpServletResponse que contém a resposta que o
     * servlet envia para o cliente.
     * @throws ServletException se a requisição do POST não puder ser tratada.
     * @throws IOException se um erro de entrada ou saída for detectado.
     */

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean formValido = true;

        //Declaração das variaveis
   
        double frequencia = 0;
        double p1 = 0;
        double trabalho = 0;
        double projeto = 0;
        double pf = 0;

        //Efetua a validação
        //Pega os valores dos campos
        String aluno = req.getParameter("aluno");

        if (aluno.isEmpty() || aluno.length() <= 3) {
            req.setAttribute("msgErroAluno", "O nome deve ter mais de 3 caracters");
            formValido = false;
            String validadeNome = "is-invalid";
            req.setAttribute("validadeNome", validadeNome);
        }else{
            String validadeNome = "is-valid";
            req.setAttribute("validadeNome", validadeNome);
        }

        //Frequencia
        try {
            if (req.getParameter("frequencia").trim().length() == 0) {
                req.setAttribute("msgErroFrequencia", "Este campo é obrigatório");
                formValido = false;
                String validadeFrequencia = "is-invalid";
                req.setAttribute("validadeFrequencia", validadeFrequencia);
            } else {
                frequencia = Double.parseDouble(req.getParameter("frequencia").trim());
                String validadeFrequencia = "is-valid";
                req.setAttribute("validadeFrequencia", validadeFrequencia);
            }
            if (frequencia < 0 || frequencia > 100) {
                req.setAttribute("msgErroFrequencia", "A frequencia deve estar entre 0 e 100");
                formValido = false;
                String validadeFrequencia = "is-invalid";
                req.setAttribute("validadeFrequencia", validadeFrequencia);
            }
        } catch (NumberFormatException e) {
            req.setAttribute("msgErroFrequencia", "A frequencia deve ser um número inteiro");
            formValido = false;
            String validadeFrequencia = "is-invalid";
            req.setAttribute("validadeFrequencia", validadeFrequencia);
        }

        //Nota1
        try {
            if (req.getParameter("nota1").trim().length() == 0) {
                req.setAttribute("msgErroNota1", "Este campo é obrigatório");
                formValido = false;
                String validadeNota1 = "is-invalid";
                req.setAttribute("validadeNota1", validadeNota1);
            } else {
                p1 = Double.parseDouble(req.getParameter("nota1").trim());
                String validadeNota1 = "is-valid";
                req.setAttribute("validadeNota1", validadeNota1);
            }
            if (p1 < 0 || p1 > 10) {
                req.setAttribute("msgErroNota1", "A nota da P1 deve estar entre 0 e 10");
                formValido = false;
                String validadeNota1 = "is-invalid";
                req.setAttribute("validadeNota1", validadeNota1);
            }

        } catch (NumberFormatException e) {
            req.setAttribute("msgErroNota1", "A nota1 deve ser um número decimal");
            formValido = false;
            String validadeNota1 = "is-invalid";
            req.setAttribute("validadeNota1", validadeNota1);
        }

        //Trabalho
        try {
            if (req.getParameter("trabalho").trim().length() == 0) {
                req.setAttribute("msgErroTrabalho", "Este campo é obrigatório");
                formValido = false;
                String validadeTrabalho = "is-invalid";
                req.setAttribute("validadeTrabalho", validadeTrabalho);
            } else {
                trabalho = Double.parseDouble(req.getParameter("trabalho").trim());
                String validadeTrabalho = "is-valid";
                req.setAttribute("validadeTrabalho", validadeTrabalho);
            }

            if (trabalho < 0 || trabalho > 10) {
                req.setAttribute("msgErroTrabalho", "A nota do trabalho deve estar entre 0 e 10");
                formValido = false;
                String validadeTrabalho = "is-invalid";
                req.setAttribute("validadeTrabalho", validadeTrabalho);
            }

        } catch (NumberFormatException e) {
            req.setAttribute("msgErroTrabalho", "O trabalho deve ser um número decimal");
            formValido = false;
            String validadeTrabalho = "is-invalid";
            req.setAttribute("validadeTrabalho", validadeTrabalho);
        }

        //Projeto
        try {
            if (req.getParameter("projeto").trim().length() == 0) {
                req.setAttribute("msgErroProjeto", "Este campo é obrigatório");
                formValido = false;
                String validadeProjeto = "is-invalid";
                req.setAttribute("validadeProjeto", validadeProjeto);
            } else {
                projeto = Double.parseDouble(req.getParameter("projeto").trim());
                String validadeProjeto = "valid";
                req.setAttribute("validadeProjeto", validadeProjeto);
            }
            if (projeto < 0 || projeto > 10) {
                req.setAttribute("msgErroProjeto", "A nota do projeto deve estar entre 0 e 10");
                formValido = false;
                String validadeProjeto = "is-invalid";
                req.setAttribute("validadeProjeto", validadeProjeto);
            }
        } catch (NumberFormatException e) {
            req.setAttribute("msgErroProjeto", "O projeto deve ser um número decimalo");
            formValido = false;
            String validadeProjeto = "is-invalid";
                req.setAttribute("validadeProjeto", validadeProjeto);
        }

        //PF
        try {
            if (req.getParameter("pf").trim().length() == 0) {
                req.setAttribute("msgErroPf", "Este campo é obrigatório");
                formValido = false;
                String validadePf = "is-invalid";
                req.setAttribute("validadePf", validadePf);
            } else {
                pf = Double.parseDouble(req.getParameter("pf").trim());
                String validadePf = "is-valid";
                req.setAttribute("validadePf", validadePf);
            }
            if (pf < 0 || pf > 10) {
                req.setAttribute("msgErroPf", "A nota da PF deve estar entre 0 e 10");
                formValido = false;
                String validadePf = "is-invalid";
                req.setAttribute("validadePf", validadePf);
            }

        } catch (NumberFormatException e) {
            req.setAttribute("msgErroPf", "A PF deve ser um número decimal");
            formValido = false;
            String validadePf = "is-invalid";
            req.setAttribute("validadePf", validadePf);
        }
        
        //Disciplina
        String disciplina = req.getParameter("disciplina");
        
        if(disciplina == null || disciplina.equals("")){
            req.setAttribute("msgErroDisciplina", "A disciplina deve ser preenchida");
            formValido = false;
        }

        //Cria um objeto Aluno com os valores dos campos
        Aluno student = new Aluno(aluno, frequencia, p1, trabalho, projeto, pf, disciplina);
        
        //Verifica se o formulário é valido, cria o ArrayList de Alunos de histórico e encaminha para página de histórico
        if (formValido) {
            if (req.getServletContext().getAttribute("historico") == null) {
                ArrayList<Aluno> historico = new ArrayList<>();
                req.getServletContext().setAttribute("historico", historico);
            }
            ArrayList<Aluno> historico = (ArrayList) req.getServletContext().getAttribute("historico");
            historico.add(student);
            req.getRequestDispatcher("historico.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("form.jsp").forward(req, resp);
        }

    }
}

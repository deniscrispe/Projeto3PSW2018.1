/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cefetrj.psw.projeto3;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author denis
 */
public class SelectDisciplinaTag extends SimpleTagSupport {
    
    private String disciplinaSelecionada;
    
    /***
     * Método que faz uma tag e imprime no JSP
     * @throws JspException para indicar que ocorreu um erro durante o processamento dessa tag.
     * @throws IOException se um erro de entrada ou saída for detectado.
     */
    public void doTag() throws JspException, IOException{
        String selectHtml = 
        "<select name='disciplina'>" +
        "    <option value=''></option>" +
        "    <option value='PSW' " + ("PSW".equals(disciplinaSelecionada) ? "selected": "") +  " >PSW</option>" +
        "    <option value='POO' " + ("POO".equals(disciplinaSelecionada) ? "selected": "") +  " >POO</option>" +
        "    <option value='EDA' " + ("EDA".equals(disciplinaSelecionada) ? "selected": "") +  " >EDA</option>" +
        "    <option value='PAC' " + ("PAC".equals(disciplinaSelecionada)  ? "selected": "") + " >PAC</option>" +
        "</select>";
        getJspContext().getOut().print(selectHtml);
    }
    
     /*** Método para retorno da Discipliana Selecionada
     * 
     *   @return String - {@link #disciplinaSelecionada} */
    public String getDisciplinaSelecionada() {
        return disciplinaSelecionada;
    }
    
    /***
     * Método para determinar o valor da variável disciplinaSelecionada
     * @param disciplinaSelecionada "valor" da disciplina a ser determinada
     */
    public void setDisciplinaSelecionada(String disciplinaSelecionada) {
        this.disciplinaSelecionada = disciplinaSelecionada;
    }
    
}

package br.cefetrj.psw.projeto3;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import org.apache.log4j.Logger;

/**
 *
 * @author denis
 */
@WebFilter("/*")
public class ErroHandlerFilter implements Filter {
    
    /***
     * Método chamado para indicar que a um filtro que está sendo colocado em serviço.
     * @param filterConfig objeto de configuração de filtro usado para passar informações para um filtro durante a inicialização.
     * @throws ServletException se a requisição do POST não puder ser tratada.
     */
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }
    
    /***
     * Método chamado quando a uma solicitação do cliente, faz o filtro das exceções antes da execução do Servlet
     * @param request objeto HttpServletRequest que contém a solicitação feita pelo
     * cliente do servlet.
     * @param response objeto HttpServletResponse que contém a resposta que o
     * servlet envia para o cliente
     * @param chain 
     * @throws IOException se um erro de entrada ou saída for detectado.
     * @throws ServletException se a requisição do POST não puder ser tratada.
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try{
            chain.doFilter(request, response);
        }catch(Exception e){
            Logger lg = Logger.getLogger(ErroHandlerFilter.class);
            lg.error("Erro:", e);
            request.getRequestDispatcher("/erro.html").forward(request, response);
            
        }
    }
    
    /***
     * Método chamado para indicar a um filtro que está sendo retirado de serviço
     */
    @Override
    public void destroy() {
    }
    
    
    
}

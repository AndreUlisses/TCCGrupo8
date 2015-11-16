/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.UsuarioDao;
import entity.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;

/**
 *
 * @author andre ulisses
 */
public class Servlet extends HttpServlet {

    protected void processRequest(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("txtMetodo");
        HttpSession session = request.getSession();
        UsuarioDao dao = new UsuarioDao();
        Usuario usuario = new Usuario();
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        try (PrintWriter out = response.getWriter()) {
            if (action.equals("Cadastrar")) {
                usuario.setNome(request.getParameter("txtNome"));
                usuario.setEmail(request.getParameter("txtEmail"));
                usuario.setSenha(request.getParameter("txtSenha"));
                boolean feedback = true;
                try {
                    dao.saveOrUpdate(usuario);
                    feedback = true;
                } catch (HibernateException e) {
                    feedback = false;
                } catch (Exception e) {
                    feedback = false;
                }
                request.setAttribute("feedback", feedback);

            } else if (action.equals("Logar")) {
                try {
                    usuario.setEmail(request.getParameter("emailLogin"));
                    usuario.setSenha(request.getParameter("senhaLogin"));
                    Usuario usuarioLogado = dao.getAutenticacao(usuario.getEmail(), usuario.getSenha());
                    session.setAttribute("nomeUsuario", usuarioLogado.getNome());
                    session.setAttribute("usuarioLogado", usuarioLogado);
                    response.sendRedirect("dashboard.jsp");
                } catch (NullPointerException e) {
                    response.sendRedirect("index.jsp");
                } catch (Exception e) {
                    response.sendRedirect("index.jsp");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

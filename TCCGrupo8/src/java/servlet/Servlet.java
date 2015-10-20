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
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author andre ulisses
 */
public class Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("txtMetodo");
        RequestDispatcher rd;
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String jspPage = action.equals("Cadastrar") ? "UsuarioIncluir" : "UsuarioListar";

            if (action.equals("Cadastrar")) {
                rd = request.getRequestDispatcher(jspPage + ".jsp");
                rd.forward(request, response);
            }

            if (action.equals("Salvar")) {
                Usuario usuario = new Usuario();
                UsuarioDao dao = new UsuarioDao();

                usuario.setLogin(request.getParameter("txtLogin"));
                usuario.setNome(request.getParameter("txtNome"));
                usuario.setEmail(request.getParameter("txtEmail"));
                usuario.setSenha(request.getParameter("txtSenha"));
                dao.saveOrUpdate(usuario);

            }
            if (action.equals("Listar")) {
                UsuarioDao dao = new UsuarioDao();
                List<Usuario> usuarios = dao.listar();
                request.setAttribute("usuarios", usuarios);

                rd = request.getRequestDispatcher(jspPage + ".jsp");
                rd.forward(request, response);
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

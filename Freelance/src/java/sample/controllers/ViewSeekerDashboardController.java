/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sample.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.project.ProjectDAO;
import sample.project.ProjectDTO;
import sample.seeker.SeekerDTO;

/**
 *
 * @author Phat
 */
@WebServlet(name = "ViewSeekerDashboardController", urlPatterns = {"/ViewSeekerDashboardController"})
public class ViewSeekerDashboardController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ERROR = "error.html";
    private static final String SUCCESS = "seekerDashboard.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        HttpSession session = request.getSession();
        try {
            //favorite
            ProjectDAO dao = new ProjectDAO();
            SeekerDTO seeker = (SeekerDTO) session.getAttribute("USER_LOGIN");
            int seekerID = seeker.getSeekerID();
            List<ProjectDTO> listFavoriteProject = dao.getListFavoriteProject(seekerID);
            if (listFavoriteProject.size() > 0) {
                for (ProjectDTO projectDTO : listFavoriteProject) {
                    List<String> skillneed = dao.getSkillNeedOfProject(projectDTO.getProjectID());
                    projectDTO.setSkillneed(skillneed);
                }
                request.setAttribute("LIST_FAVORITE_PROJECT", listFavoriteProject);
                url = SUCCESS;
            }

            //all
            List<ProjectDTO> listAllProject = dao.getListAllProject();
            if (listAllProject.size() > 0) {
                for (ProjectDTO projectDTO : listAllProject) {
                    List<String> skillneed = dao.getSkillNeedOfProject(projectDTO.getProjectID());
                    projectDTO.setSkillneed(skillneed);
                }
                request.setAttribute("LIST_ALL_PROJECT", listAllProject);
                url = SUCCESS;
            }

            //best-match
            List<ProjectDTO> list = dao.getListProjectBestMatch(seekerID);
            if (!list.isEmpty()) {
                for (ProjectDTO projectDTO : list) {
                    List<String> skillneed = dao.getSkillNeedOfProject(projectDTO.getProjectID());
                    projectDTO.setSkillneed(skillneed);
                }
                request.setAttribute("LIST_BEST_MATCH_PROJECT", list);
                url = SUCCESS;
            }
        } catch (Exception e) {
            log("Error at ViewSeekerDashboardController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
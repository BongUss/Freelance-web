/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.proposal.ProposalDAO;

/**
 *
 * @author Admin
 */
@WebServlet(name = "FeedbackOfHirerController", urlPatterns = {"/FeedbackOfHirerController"})
public class FeedbackOfHirerController extends HttpServlet {

    private final static String ERROR = "ViewDoneContractHirerController";
    private final static String SUCCESS = "ViewHirerDashboardController";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            int proposalID = Integer.parseInt(request.getParameter("proposalID"));
            int seekerGrade = Integer.parseInt(request.getParameter("seekerGrade"));
            if (seekerGrade >= 1 && seekerGrade <= 5) {
                String clientComment = request.getParameter("clientComment");
            ProposalDAO dao = new ProposalDAO();
            boolean checkFeedback = dao.hirerFeedback(proposalID, seekerGrade, clientComment);
            
            if(checkFeedback){
                
                url = SUCCESS;
            }
            }else{
                request.setAttribute("ERROR_MESSAGE", "Oppss, Wrong format, Your Feedback is not save!!");
            }
            
        } catch (Exception e) {
            log("Error at FeedbackOfSeekerController: " + e.toString());
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

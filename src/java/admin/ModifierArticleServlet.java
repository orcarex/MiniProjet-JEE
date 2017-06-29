/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package admin;
//henry 引入產品控制類
import dao.ArticleDao;
import entities.Article;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author islem
 */
//henry 後台管理 商品更新控制 servlet 類 
public class ModifierArticleServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try
        {
            //henry 接收 request 各個參數
            String libelle = request.getParameter("libelle");
            double prix = Double.parseDouble(request.getParameter("prix"));
            int quantite = Integer.parseInt(request.getParameter("quantite"));
            
            int a = Integer.parseInt(request.getParameter("date_a"));
            int m = Integer.parseInt(request.getParameter("date_m"));;
            int j = Integer.parseInt(request.getParameter("date_j"));;
                
            Date dt = new Date(a, m, j);
            
            String img = request.getParameter("urlImage");
            String desc = request.getParameter("desc");
            //henry 年齡西元格式化
            int age = 2014 - a ;
            
            int id = Integer.parseInt(request.getParameter("id"));
            //建立新產品實體(帶入參數)
            Article ar = new Article(id, libelle, desc, prix, img, quantite, dt);
            ArticleDao dao = new ArticleDao();
            
            if(dao.update(ar))
            {
                //henry 更新成功跳轉頁面
                response.sendRedirect("Admin/ProduitListe.jsp?add=success");
            }else
            {
                //henry 更新失敗跳轉頁面
                response.sendRedirect("Admin/ProduitListe.jsp?add=fail");
            }
            
        }catch( Exception ex)
        {
            response.sendRedirect("Admin/ProduitListe.jsp?add=fail");
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

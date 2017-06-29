/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package admin;
//henry 引入產品控制器類
import dao.ArticleDao;
//henry 引入產品類
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
//henry後臺管理servelet (產品新增)  
public class AjouterArticleServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    //henry 預設請求處理方法
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try
        {   
            //henry 取得接收request到的各參數 並分別給予變數
            String libelle = request.getParameter("libelle");
            String desc = request.getParameter("desc");
            Double prix = Double.parseDouble(request.getParameter("prix"));
            int quantite=Integer.parseInt(request.getParameter("quantite"));
            
            int a = Integer.parseInt(request.getParameter("date_a"));
            int m = Integer.parseInt(request.getParameter("date_m"));;
            int j = Integer.parseInt(request.getParameter("date_j"));;
                
            Date dt = new Date(a, m, j);
            
            String img = request.getParameter("urlImage");
            //henry 將年齡格式化為西元格式
            int age = 2014 - a ;
            //henry 建立產品實體
            Article act = new Article(-1, libelle, desc, prix,img, quantite,dt);
            ArticleDao dao = new ArticleDao();
            //執行新增產品
            if(dao.add(act))
            {
                //如新增成功則跳轉成功頁面
                response.sendRedirect("Admin/ProduitListe.jsp?add=success");
            }else
            {
                //如新增成功則跳轉失敗頁面
                response.sendRedirect("Admin/ProduitListe.jsp?add=fail");
            }
            
        }catch( Exception ex)
        {
            //henry 如捕獲異常則跳轉到錯誤頁面
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

<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<!--henry 引入產品類-->
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<!--henry 引入產品控制類-->
<%@page import="dao.ArticleDao"%>
<!--henry 引入header.jsp-->
<%@include file="header.jsp" %>
<!--henry 產品詳情區域-->
<div class="RightSide">
    
    
      <div class="bredCrum" style="margin-bottom:38px;">
        <h4><a href="index.html"> 首頁 </a>   >>   <a href="#" class="select"> 產品介紹 </a> </h4>
      </div>
    
    <% 
            int NB_PRODUIT_PAGE = 9 ;
            
            int pageCourante = 1;
            if(request.getParameter("page") != null)
            {
                pageCourante = Integer.parseInt(request.getParameter("page"));
            }
    
            String keyword = "";
            //henry 判斷是否有使用關鍵字
            if(request.getParameter("keyword") != null)
                keyword = request.getParameter("keyword");
            
            
            ArticleDao dao = new ArticleDao();
            //henry 查詢所有關鍵字查詢到的產品
            Vector<Article> articles = dao.findAll(keyword);
            //henry 查詢後的產品顯示分頁處理
            int nbTotalePages = 0;
            if(articles != null)
                nbTotalePages = articles.size() / NB_PRODUIT_PAGE + 1;
            
            int init = ((pageCourante - 1) * NB_PRODUIT_PAGE);
            
            String cls = "";
            
            boolean arret = true ;
            int t = 0 ;
          %>
    
    <!-- DEBUT  BOUCLE !! -->
    
    
        
<% 
    //henry 如果小於三頁
while(t < NB_PRODUIT_PAGE/3 )
{
%>
      <div class="catrow">

        <ul>


   <% 
            for(int i = init; i < init + 3; i++)
            { 
                cls = "" ;
                if(articles == null || i >= articles.size())
                {
                    break;
                }

                if(i >= init + 2)
                { 
                    cls+= "last ";

                }

                if(articles.get(i).getDateAjout().getYear()+1900 >= 2014)
                {
                    cls+= "new ";
                }
        %>
 
          <li class="<%= cls %>"   >
              
              <div class="catThum">
                  <a href="article.jsp?id=<%= articles.get(i).getIdArticle() %>">
                      <img width="203" height="186" src="<%= articles.get(i).getImg() %>" alt="" />
                  </a>
<%
if(articles.get(i).getDateAjout().getYear()+1900 >= 2014)
{
%>
                <div class="new"></div>
                
<%}%>
            </div>
            <div class="catDetail">
              <h4><a href="article.jsp?id=<%= articles.get(i).getIdArticle() %>"><%= articles.get(i).getLibelle() %> </a></h4>
              <p><%= articles.get(i).getPrix() %>$</p>
            </div>
              
          </li>
          <% } %>
        
        </ul>
              
        <div class="clr"></div>
      </div>

<% 
t++ ;
init += 3 ;
}%>        
        <!-- FIN BOUCLE !! -->
      <!--henry 搜尋產品分頁下方狀態bar 上一頁 下一頁 -->
      <div class="paging">
        <div class="pagingDiv">
            <span class="label">Page 
                <b class="blue"><%= pageCourante %></b> à <%= nbTotalePages %></span>
                
                <% if(!(pageCourante <= 1) ){ %>
                <span class="back">
                    <a href="?page=<%= pageCourante - 1 %>"><img src="images/back.gif" alt="" /></a>
                </span>
                 <% } %>   
                 
                  <% if(!(pageCourante >= nbTotalePages) ){ %>
                <span class="next">
                    <a href="?page=<%= pageCourante + 1 %>"><img src="images/next.gif" alt="" /></a>
                </span>
                <% } %>
        </div>
                
        <div class="clr"></div>
      </div>
    </div>



<%@include file="footer.jsp" %>
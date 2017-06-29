<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<!--henry 引入 產品類-->
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<!--henry 引入 產品控制類->
<%@page import="dao.ArticleDao"%>
<!--henry 引入 header.jsp-->
<%@include file="header.jsp" %>


<div class="RightSide">
    
    <%
        //henry 如request中con參數為null 則顯示 
        if(request.getParameter("con") != null)
        {
    %>
    <div class="login">
        <p style="padding: 5px;"> 請登入會員帳號密碼...</p>
    </div>
    
    <% } %>
    
    
    <!--henry 引入 幻燈片 slideshow ->
    <%@include file="slideshow.jsp" %>
    
    
      <div class="bredCrum" style="margin-bottom:38px;">
        <h4>Nos derniers Produits..</h4>
      </div>
    
    <% 
        //henry 產品分頁
            int NB_PRODUIT_PAGE = 6 ;
            
            int pageCourante = 1;
            if(request.getParameter("page") != null)
            {
                pageCourante = Integer.parseInt(request.getParameter("page"));
            }
            
            ArticleDao dao = new ArticleDao();
            //henry取得所有產品
            Vector<Article> articles = dao.findAll();
            //henry 定義總頁數
            int nbTotalePages = articles.size() / NB_PRODUIT_PAGE + 1;
            //henry 初始頁
            int init = ((pageCourante - 1) * NB_PRODUIT_PAGE);
            
            String cls = "";
            
            boolean arret = true ;
            int t = 0 ;
          %>
    
    <!-- DEBUT  BOUCLE !! -->
    
    
        
<% 
while(t < 2 )
{
%>
      <div class="catrow">

        <ul>


   <% 
            for(int i = init; i < init + 3; i++)
            { 
                cls = "" ;
                if(i >= articles.size())
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
      <!--henry 分頁狀態顯示 上一頁  下一頁-->
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


<!--henry 引入 底部footer.jsp-->
<%@include file="footer.jsp" %>
<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<%@page import="dao.ArticleDao"%>
<%@include file="header.jsp" %>

<% 
    int id = -1;
    
    if(request.getParameter("id") != null)
     id = (Integer.parseInt(request.getParameter("id")));
    
    Article article = (new ArticleDao()).findByID(id);
    
    if(article == null)
        article = new Article("", "", 0, "", 0);
    
%>

<div class="RightSide">     

    <div class="bredCrum">
        <h4><a href="index.html">首頁</a>   >>   <a href="#" class="select"> <%= article.getLibelle() %></a></h4> 
    </div>
    <div class="productDetial">
        <div class="mainThumb"><img src="<%= article.getImg()%>" alt="" width="471" height="260"/></div>
        <div class="rightProduct">
            <!--<div class="thumb marRight"><img src="images/product-small.gif" alt=""/></div>
            <div class="thumb"><img src="images/product-small.gif" alt=""/></div>
            <div class="thumb marRight"><img src="images/product-small.gif" alt=""/></div>
            <div class="thumb"><img src="images/product-small.gif" alt=""/></div>
            -->
            <div class="cartBtn fl">
                <a href="PanierServlet?op=add&sender=article.jsp&id=<%= id %>" title="ADD to Cart" class="addToCart"></a>
            </div>
            <div class="clr"></div>	
        </div>
    </div>
    <div class="detailInfo">
        <h2>產品詳情 : </h2>
        <p> <%= article.getDesc() %> </p>
        <p class="add">添加產品 <%= article.getDateAjout()  %></p>
    </div>

    <div class="clr"></div>
    <div class="paging">
        <div class="pagingDiv price">$ <%= article.getPrix() %></div>
        
        <div class="pagingInfo">
            <img src="images/plus.gif" alt=""/>
            <a href="PanierServlet?op=add&sender=article.jsp&id=<%= id %>">加入購物車</a>
        </div>
        
        <div class="clr"></div> 
    </div>
</div>    



<%@include file="footer.jsp" %>
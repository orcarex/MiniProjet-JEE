<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="panier.LignePanier"%>
<%@page import="panier.Panier"%>
<%@page import="java.util.Calendar"%>
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<%@page import="dao.ArticleDao"%>
<%@include file="header.jsp" %>



<div class="RightSide">     

    <div class="bredCrum">
        <h4><a href="index.html">首頁</a>   >>  <a href="#" class="select">你的購物車 </a> </h4>
    </div>
    <div class="cartDetail">
        <div class="headings">
            <ul>
                <li class="perview">產品預覽</li>
                <li class="proName">產品名稱</li>
                <li class="priceHead">產品單價</li>
                <li class="quanitity">數量</li>
                <li class="total">總價格</li>
            </ul>
            <div class="clr"></div>
        </div>

<%
int i = 0 ;

for(LignePanier lp : panier.getLignesPanier())
{
    i++;
%>
        
        <div class="proList">
            <ul>
                <li class="number"> <%= i %>. </li>
                <li class="thumbMail">
                    <a href="#"><img width="82" height="60" src="<%= lp.getArticle().getImg() %>" alt=""/></a>
                </li>							
                
                <li class="proName">
                    <a href="#"><%= lp.getArticle().getLibelle()%></a>
                </li>
                
                <li class="priceHead">$<%= lp.getArticle().getPrix()%></li>
                
                <li class="quanitity">
                    <div class="icons">
                        <a href="PanierServlet?op=add&sender=panier.jsp&id=<%= lp.getArticle().getIdArticle() %>" title="plus-pro"><img src="images/plus-pro.gif" alt="plus-pro"/></a>
                        <a href="PanierServlet?op=sous&sender=panier.jsp&id=<%= lp.getArticle().getIdArticle() %>" title="minus-pro"><img src="images/minus-pro.gif" alt="minus-pro"/></a>
                    </div>
                    <div class="box"><%= lp.getQuantite() %></div>
                </li>
                
                <li class="total">$<%= lp.getArticle().getPrix()* lp.getQuantite() %>
                    <span><a href="PanierServlet?op=rem&sender=panier.jsp&id=<%= lp.getArticle().getIdArticle() %>" title="Remove"><img src="images/cross.gif" alt="Remove"/></a></span>
                </li>
                
                
            </ul>
            <div class="clr"></div>
        </div>
<%
}
%>
        <div class="totalShiping">
            <div class="txtTotal"><h4>總價格  =</h4></div>
            <div class="toalPrice">$ <%= prixT %></div>
        </div>
        <div class="clr"></div>
    </div>


    <div class="clr"></div>
    <div class="paging">
        
        <% 
        if(panier.getLignesPanier().size() > 0)
        {
        %>
        <div class="pagingDiv"><a href="CommanderServlet" title="Check Out"><img src="images/checkOutBtn.gif" alt="Check Out"/></a></div>
        <%}%>
        
        <div class="pagingInfo"><h4><a href="produits.jsp" title="CONTINUE SHOPPING">繼續選購</a></h4></div>
        <div class="clr"></div> 
    </div>
</div>    



<%@include file="footer.jsp" %>
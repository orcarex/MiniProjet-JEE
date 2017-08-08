<%-- 
    Document   : footerTop
    Created on : 2017/8/7, 下午 08:45:32
    Author     : USER
--%>

<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="entities.Article"%>
<%@page import="dao.ArticleDao"%>
<%@page import="panier.LignePanier"%>
<%@page import="panier.Panier"%>
<%@page import="entities.Client"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        
        
    </head>
    <body>
         <div class="headerTop">
            <div id="NewPanier">
            <div id="NewPanierBody">
   
     <ul>  
             <% 
    //henry 判斷是否已存在 購物車的session 沒有就建立購物車session
if(session.getAttribute("panier") == null )
{
    session.setAttribute("panier", new Panier());
}
 //henry 取得購物車session中的資料
Panier panier = (Panier)session.getAttribute("panier");
//henry 宣告 總價變數 prixT
double prixT = 0 ;
//henry 宣告一變數 lp 並將 panier.getLignesPanier() 回傳的購物車資料賦予給lp
for(LignePanier lp : panier.getLignesPanier())
    //henry 計算總價 pritX 購物車產品數量乘上產品單價
    prixT += lp.getQuantite()*lp.getArticle().getPrix();


%>         
        <li class="cart"><a href="panier.jsp">&nbsp;&nbsp;購物車</a></li>
        <li class="cart-value">
            <span class="blue"><a href="panier.jsp">
                    <!--henry 取得並顯示購物車產品數量 panier.getNumberArticle() -->
                   <%= panier.getNumberArticle() %>項產品</a></span> | <span>$<%= prixT %>  </span></li>
    </ul>
     <div class="NewSearchBody">
                      <ul>
                          <li class="search">
                             <form action="produits.jsp" method="GET">
                                 <input class="action" type="image"  src="images/search-action.jpg" />
                                 <input class="searchfeild" name="keyword" type="text"  />
                             </form>
                          </li>
                          </ul>
                     </div>
              </div>
              </div>   
             <div id="NewTop">
               <div class="NewTopBody">
                    
        <ul>
          <a href="index.jsp"><img height="75"src="images/Welife.png"/></a>
            <li> <a href="index.jsp">首頁</a></li>
            <li> <a href="produits.jsp">我們的產品</a></li>
            <li> <a href="mon_compte.jsp">會員專區</a></li>
          <li> <a href="contactez-nous.jsp">聯繫我們</a></li>
      
       
        </ul>
               </div>
             </div>
              <div id="NewSearch">
                 
                          
                      </ul>
                  </div>
              </div>         
             </div>
    </body>
</html>

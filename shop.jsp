<%-- 
    Document   : shop
    Created on : Nov 11, 2021, 5:08:40 PM
    Author     : quoch
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Product"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.product_model"%>
<jsp:include page="inc/header.jsp"/>
<c:if test="${empty requestScope.product_list}">
    <jsp:forward page="/product_controller?ac=viewallproduct"/>
</c:if>

<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4 style="margin-left: 20px;">All product</h4>
                </div>
            </div>
        </div>
        <div class="row property__gallery">
        <c:forEach items="${requestScope.product_list}" var="x" >
            <div class="col-lg-3 col-md-4 col-sm-6 mix ${x.getpGender()}  ">
                    <div class="product__item">
                        <div class="product__item__pic set-bg " data-setbg="${x.getImgs().get(0).getImgURL()}">
                            <div class="label new">New</div>
                            <ul class="product__hover">
                                <li><a href="img/product/p1.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>

                                <li><a href="cart.jsp?pid=${x.getpID()}"><span class="icon_bag_alt"></span></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">  
                            <a href="product-details.jsp?pid=${x.getpID()}">${x.getpName()}</a>
                            <div class="product__price">$ ${x.getpPrice()}</div>
                        </div>
                    </div>
            </div>
        </c:forEach>
        </div>
    </div>
</section>

<!-- Instagram Begin -->
<div class="instagram">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg" data-setbg="img/instagram/in1.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg" data-setbg="img/instagram/in2.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg" data-setbg="img/instagram/in3.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg" data-setbg="img/instagram/in4.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg" data-setbg="img/instagram/in5.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg" data-setbg="img/instagram/in6.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Instagram End -->


    
<jsp:include page="inc/footer.jsp"/>





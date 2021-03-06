<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/pages/template/header.jsp"%>

<div class="container-wrapper">
  <div class="container">
    <div class="page-header">
      <h1>Product Inventory Page</h1>
      <p class="lead" > This is a product Inventory Page</p>
    </div>

    <table class="table table-stripped table-hover">
      <thead>
      <tr class="bg-success">
        <th> Photo Thumbnail</th>
        <th> Product Name</th>
        <th> Category</th>
        <th> Condition</th>
        <th> Price</th>
        <th></th>

      </tr>


      </thead>

      <c:forEach items="${products}" var="product">
        <tr>
          <td><img src="#" alt="image"></td>
          <td>${product.productName}</td>
          <td>${product.productCategory}</td>
          <td>${product.productCondition}</td>
          <td>${product.productPrice}</td>
          <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />">
            <span class="glyphicon glyphicon-info-sign"></span> </a></td>
        </tr>
      </c:forEach>


    </table>
  </div>

<%@include file="template/footer.jsp"%>
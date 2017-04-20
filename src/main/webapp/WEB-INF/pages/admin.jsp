<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/WEB-INF/pages/template/header.jsp"%>

<div class="container-wrapper">
  <div class="container">
    <div class="page-header">
      <h1>Admin Page</h1>
      <p class="lead" >This is the administrator page</p>
    </div>

    <div class="container" >
      <h3>
        <a href="<c:url value="admin/productInventory"/> "> Product Inventory</a>
      </h3>


    </div>
  </div>

<%@include file="template/footer.jsp"%>
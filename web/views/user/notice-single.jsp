<%-- 
    Document   : notice-single
    Created on : Sep 21, 2022, 3:18:51 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

    <%@include file="headCSS.jsp" %>

    <body>
        <!-- header -->
        <%@include file="header.jsp" %>
        <!-- /header -->
        <!-- Modal -->

<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="notice.jsp">Notice</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">Notice Details</li>
        </ul>
        <p class="text-lighten">Our courses offer a good compromise between the continuous assessment favoured by some universities and the emphasis placed on final exams by others.</p>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- notice details -->
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="d-flex">
          <div class="text-center mr-4">
            <div class="p-4 bg-primary text-white">
                <span class="h2 d-block">30</span> APR,2019
            </div>
          </div>
          <!-- notice content -->
          <div>
            <h3 class="mb-4">Teaching Materials and Testing Methods</h3>
            <p>Lorem ipsum dolor sit amet, lectus molestie amet eget varius nulla ultricies, senectus vehicula wisi risus tellus nonummy. Urna volutpat, nunc doloremque risus felis lorem risus. Et suspendisse diam libero pulvinar, tristique ac cras luctus ornare. Quam justo. Non ligula turpis sem, velit dolor luctus venenatis. Eros eget at vitae, wisi diam ut ad convallis, in gravida nunc inceptos sed leo donec, duis dolorem adipiscing arcu facilisis. Purus lorem vulputate et condimentum in felis, porttitor accumsan id bibendum diam varius, lorem diam molestie erat a amet urna, dolor pellentesque lectus justo adipiscing. Laoreet est velit vestibulum, laoreet luctus bibendum sed ornare amet elementum, ullamcorper nibh in sollicitudin donec arcu lorem.</p>
            <p>Quam justo. Non ligula turpis sem, velit dolor luctus venenatis. Eros eget at vitae, wisi diam ut ad convallis, in gravida nunc inceptos sed leo donec, duis dolorem adipiscing arcu facilisis. Purus lorem vulputate et condimentum in felis, porttitor accumsan id bibendum diam varius, lorem diam molestie erat a amet urna, dolor pellentesque lectus justo adipiscing. Laoreet est velit vestibulum, laoreet luctus bibendum sed ornare amet elementum, ullamcorper nibh in sollicitudin donec arcu lorem.</p>
            <ul class="list-styled mb-5">
              <li>Digital Access to Scholarship at Smart</li>
              <li>institutes</li>
              <li>Smart-affiliated hospitals and research</li>
              <li>Smart Catalyst</li>
              <li>Smart Library Portal</li>
              <li>Smart research programs and departments</li>
            </ul>
            <a href="#" class="btn btn-primary">Download</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /notice details -->

        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- /footer -->

        <!-- jQuery -->
        <%@include file="scriptJS.jsp" %>

</body>
</html>
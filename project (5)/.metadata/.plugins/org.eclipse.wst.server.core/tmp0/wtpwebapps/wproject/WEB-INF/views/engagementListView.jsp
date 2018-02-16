<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet"
          href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css"
          id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon"
          href="WebContent/WEB-INF/views/dark-admin/img/WSO2_Software_Logo.png">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script type="text/javascript" src="js/jquery-latest.js"></script>
    <script type="text/javascript" src="js/jquery.tablesorter.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
                $("#myTable").tablesorter();
            }
        );
    </script>
</head>
<body>
<header class="header">
    <nav class="navbar navbar-expand-lg">


        <div
                class="container-fluid d-flex align-items-center justify-content-between">
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">
                    <div class="brand-text brand-big visible text-uppercase">
                        <strong class="text-primary">DASH</strong><strong>BOARD</strong>
                    </div>
                    <div class="brand-text brand-sm">
                        <strong class="text-primary">D</strong><strong>B</strong>
                    </div>
                </a>
                <button class="sidebar-toggle">
                    <i class="fa fa-long-arrow-left"></i>
                </button>
            </div>


        </div>
    </nav>
</header>

<div class="d-flex align-items-stretch">
    <!-- Sidebar Navigation-->
    <nav id="sidebar">
        <div class="sidebar-header d-flex align-items-center">
            <div>
                <img src="img/WSO2_Software_Logo.png" alt="..." class="img-fluid">
            </div>


        </div>

        <span class="heading">Main</span>
        <ul class="list-unstyled">
            <li><a href="${pageContext.request.contextPath}/engagementList">
                <i class="icon-page"></i>Ongoing Project
            </a></li>
            <li><a
                    href="${pageContext.request.contextPath}/Thisweekproject"> <i
                    class="icon-page"></i>This week project
            </a></li>
            <li><a
                    href="${pageContext.request.contextPath}/Lastweekproject"> <i
                    class="icon-page"></i>Last week project
            </a></li>
    </nav>
    <div class="page-content">


        <div class="page-header">
            <div class="container-fluid">
                <h2 class="h5 no-margin-bottom">Ongoing Engagements</h2>
            </div>
        </div>
        <section class="no-padding-top">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-12">
                        <p style="color: orange;">${errorString}</p>
                        <div class="block  table-responsive">

                            <table id="myTable" class="table table-striped table-sm">
                                <thead>
                                <tr>
                                    <th>Engagement ID</th>
                                    <th>Customer Name</th>
                                    <th>Project name</th>
                                    <th>Engagement Code</th>
                                    <th>Allocation Type</th>
                                    <th>Engagement nature</th>
                                    <th>Country</th>
                                    <th>start date</th>
                                    <th>End date</th>
                                    <th>Personal email</th>


                                </tr>
                                </thead>


                                <c:forEach items="${engagementList1}" var="engagement">
                                    <tr>
                                        <td>${engagement.getId()}</td>
                                        <td>${engagement.getCustomer_name()}</td>
                                        <td>${engagement.getProject_name()}</td>
                                        <td>${engagement.getEngagement_code()}</td>
                                        <td>${engagement.getAllocation_type2()}</td>
                                        <td>${engagement.getEngagement_nature()}</td>
                                        <td>${engagement.getCountry()}</td>
                                        <td>${engagement.getStart_date()}</td>
                                        <td>${engagement.getEnd_date()}</td>
                                        <td>${engagement.person_email()}</td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer">
            <div class="footer__block block no-margin-bottom">
                <div class="container-fluid text-center">
                    <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                    <p class="no-margin-bottom">2017 &copy; ****</p>
                </div>
            </div>
        </footer>
    </div>
</div>
<!-- Javascript files-->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js">

</script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js">

</script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="js/charts-home.js"></script>
<script src="js/front.js"></script>
<script src="js/sortcolumn.js"></script>


</body>
</html>





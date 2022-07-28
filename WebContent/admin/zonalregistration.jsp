
<!DOCTYPE html>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>


<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminWasteMart  | Book Services</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<%@ include file="adminheader.jsp" %>
<%@ include file="sidebar.jsp" %>

  <div class = "content-wrapper">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-6">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Zonal Registration</h3>
              </div>
              <br>
                <div class="row tm-welcome-row">
                    <div class="col-lg-6 mb-5 tm-contact-box">
                      <div class="tm-contact-form-wrap">
                        <form method="post" action="../ZonalController"  >
                            <div class="form-group">
                              <input type="text" name="name" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder=" Name" />
                            </div>
                    <div class="form-group">
                              <input type="email" name="email" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Email"  />
                            </div>
                            <div class="form-group">
                             &nbsp;&nbsp; <input type="radio"  name="gender" value="male" />Male
                              <input type="radio"  name="gender" value="female"/>Female
                            </div>
                            <div class="form-group">
                               <label>&nbsp;&nbsp;Zone</label>
                  <select name="zone" class="form-control select2" style="width: 100%;" >
                    <option selected="selected" value="north">north</option>
                    
                    <option value="south">south</option>
                    <option  value="east">east</option>
                    <option  value="west">west</option>
                    </select>
                    </div>
                             
                            
                             <div class="form-group">
                              <input type="text"  name="mobno" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder=" Mob No"  />
                            </div>
                             <div class="form-group">
                              <input type="hidden"  name="userid" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="UserID"  />
                            </div>
                            
                            <div class="form-group">
                              <input type="hidden"  name="password" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="password" />
                            </div>
                            
             <div class="form-group mb-0">
                             &nbsp;&nbsp; <button type="submit" >
                                Register
                              </button>
                            </div>
                          </form>
                          </div>
                          </div>
                          </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </section>
                       </div>
                                          
<%@ include file="adminfooter.jsp" %>
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
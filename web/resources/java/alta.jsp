<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/style.css">

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
</head>
<body>
  
  <%
    int txtMatricula = Integer.parseInt(request.getParameter("txtMatricula"));
    String txtNombre = request.getParameter("txtNombre");
    String txtApellido = request.getParameter("txtApellido");
    String txtApellidoM = request.getParameter("txtApellidoM");
    

    String query = "INSER INTO talumnos VALUES(" + txtMatricula + ", '" + txtNombre + "', '" + txtApellido + "', '" + txtApellidoM + "')";
    if(true) {
      %>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-6">
            <div class="alert alert-success" role="alert">
              <h4 class="alert-heading">Confirmación de Alta de Usuario</h4>
              <p>Se agregro de forma exitosa un nuevo alumno.</p>
              <p>
                Matricula: <%= txtMatricula %>
                <br>
                Nombre: <%= txtNombre %>
                <br>
                Apellido Paterno: <%= txtApellido %>
                <br>
                Apellido Materno: <%= txtApellidoM %>
                <br>
              </p>
              <hr>
              <p class="mb-0">
                Fecha y Hora del Sistema: <%= new Date() %>
              </p>
            </div>
          </div>
        </div>
      </div>
      <%
    }
  %>
  
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/bootstrap.bundle.min.js"></script>
</body>
</html>

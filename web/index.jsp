<%-- 
    Document   : index
    Created on : 17/11/2018, 12:53:34 AM
    Author     : FHGA
--%>

<%@page import="clinica.modelo.Usuario"%>
<%@page import="clinica.modelo.ClinicaAdministrativa"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://getbootstrap.com/docs/4.1/examples/sign-in/signin.css"/>
    </head>
    <body class="text-center">
        <div class="container">
        <form action="index.jsp" method="post" class="form-signin">
            <img class="mb-4" src="./resources/img/logo.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Inicia Sesión</h1>
            <label for="inputUsuario" class="sr-only">Usuario</label>
            <input type="text" name="txtUsuario" id="inputUsuario" class="form-control" placeholder="Usuario" required autofocus>

            <label for="inputClave" class="sr-only">Contraseña</label>
            <input type="password" name="txtClave" id="inputClave" class="form-control" placeholder="Contraseña" required>

            <button name="btnAceptar" class="btn btn-lg btn-primary btn-block" type="submit">Iniciar</button>

        </form> 
        <%
            if (request.getParameter("btnAceptar") != null) {
                clinica.modelo.ClinicaAdministrativa ca = new ClinicaAdministrativa();
                clinica.modelo.Usuario usuario = new Usuario();
                usuario.setNombreUsuario(request.getParameter("txtUsuario").toString());
                usuario.setContrasena(request.getParameter("txtClave").toString());
                String cargo = ca.validarLogin(usuario);
                if (request.getParameter("txtUsuario").compareTo("") == 0) {
                    out.println("Campos Requeridos <br>");
                } else if (cargo == null) {
                    %>
                   <div class="row">
                <div class="col-xs-6">
                    <div class="alert alert-success" role="alert">
                        Datos Incorrectos
                    </div>
                </div>
            </div>
                    <%
                    
                } else if (request.getParameter("txtUsuario").compareTo(cargo) == 0) {
                    out.println("Sesion iniciada<br>");
                    session.setAttribute("txtUsuario", request.getParameter("txtUsuario").toString());//para iniciar secion creada
                    response.sendRedirect("menuAdministrativo.jsp");  //direcionar despues del boton aceptar a otra pagina como dejar la pagina en blaco

                } else if (cargo.compareTo("Administrador") == 0) {
                    out.println("Sesion iniciada<br>");
                    session.setAttribute("txtUsuario", request.getParameter("txtUsuario").toString());//para iniciar secion creada
                    response.sendRedirect("administracionDeUsuarios.jsp");  //direcionar despues del boton aceptar a otra pagina como dejar la pagina en blaco
                } else if (cargo.compareTo("Enfermero") == 0) {
                    out.println("Sesion iniciada<br>");
                    session.setAttribute("txtUsuario", request.getParameter("txtUsuario").toString());//para iniciar secion creada
                    response.sendRedirect("menuEnfermero.jsp");  //direcionar despues del boton aceptar a otra pagina como dejar la pagina en blaco

                }else if (cargo.compareTo("Doctor") == 0) {
                    out.println("Sesion iniciada<br>");
                    session.setAttribute("txtUsuario", request.getParameter("txtUsuario").toString());//para iniciar secion creada
                    response.sendRedirect("menuMedico.jsp");  //direcionar despues del boton aceptar a otra pagina como dejar la pagina en blaco

                }
            }


        %>
        </div>
    </body>
</html>

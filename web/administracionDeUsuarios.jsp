<%-- 
    Document   : administracionDeUsuarios
    Created on : 24/11/2018, 03:05:56 PM
    Author     : FHGA
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clinica.modelo.Usuario"%>
<%@page import="clinica.modelo.ClinicaAdministrativa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-primary" >
            <a class="navbar-brand" href="#">Clinica Garagoa</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="registrarPersonal.jsp">Registrar Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="administracionDeUsuarios.jsp">Administracion de usuarios</a>
                    </li>
                    <li>
                        <a class="nav-link" href="index.jsp">Salir</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h1>Administración de Usuario</h1>
            <div class="row">
                <div class="col-xs-12" >
                    <form class="form-inline">
                        <div class="form-group mb-3">
                            <label for="Buscar" class="sr-only">Buscar</label>
                            <input type="text" readonly class="form-control-plaintext" id="Buscar" value="Buscar Usuario">
                        </div>
                        <div class="form-group mx-sm-3 mb-2">
                            <label for="inputIdentificacion" class="sr-only">Password</label>
                            <input type="tex" class="form-control" id="inputIdentificacion" placeholder="Identificacion">
                        </div>
                        <button type="submit" class="btn btn-primary mb-2">Buscar</button>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <table class="table" style="margin-top: 30px">
                        <thead>
                            <tr>

                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Identificación</th>
                                <th scope="col">Cargo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                clinica.modelo.ClinicaAdministrativa ca = new ClinicaAdministrativa();
                                ArrayList<Usuario> usuarios = ca.obtenerUsuarios();
                                for (Usuario u : usuarios) {
                            %>
                            <tr>
                                <td><%= u.getNombre()%></td>
                                <td><%= u.getApellido()%></td>
                                <td><%= u.getCedula()%></td>
                                <td><%= u.getCargo()%></td>
                            </tr>  
                            <%
                                }
                            %>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : registrarPersonal
    Created on : 17/11/2018, 01:46:37 AM
    Author     : FHGA
--%>

<%@page import="clinica.modelo.ClinicaAdministrativa"%>
<%@page import="clinica.modelo.Usuario"%>
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
            <a class="navbar-brand" href="menuMedico.jsp">Clinica Garagoa</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="registrarPersonal.jsp">Registrar usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="administracionDeUsuarios.jsp">Administracion de usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Salir</a>
                    </li>
                </ul>
            </div>
        </nav>  
        <div class="container">
            <h1>Complete El Registro!</h1>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4" >
                    <form>
                        <div class="form-group" >
                            <label for="inputNombre">Nombre</label>
                            <input type="text" name="txtNombre" class="form-control" id="inputNombre" placeholder="Nombre" required autofocus>
                        </div>

                        <div class="form-group">
                            <label for="inputApellido">Apellido</label>
                            <input type="text" name="txtApellido" class="form-control" id="inputApellido" placeholder="Apellido" required>
                        </div>

                        <div class="form-group">
                            <label for="inputIdentificacion">Identificacion</label>
                            <input type="text" name="txtCedula" class="form-control" id="inputIdentificacion" placeholder="Identificacion" required>
                        </div>

                        <div class="form-group">
                            <label for="inputTelefono">Telefono</label>
                            <input type="text" name="txtTelefono" class="form-control" id="inputTelefono" placeholder="Telefono" required>
                        </div>
                        <div class="form-group">
                            <label for="inputNombreUsuario">Nombre De Usuario</label>
                            <input type="text" name="txtNombreUsuario" class="form-control" id="inputNombreUsuario" placeholder="Nombre De Usuario" required>
                        </div>

                        <div class="form-group">
                            <label for="inputClave">Contraseña</label>
                            <input type="password" name="txtContrasenia" class="form-control" id="inputClave" placeholder="Contraseña" required>
                        </div>



                        <div class="form-group">
                            <label for="inputCargo">Tipo de Perfil</label>
                            <select class="form-control form-control-sm" name="inputCargo">
                                <option value="-----">------</option>
                                <option value="Doctor">Doctor</option>
                                <option value="Enfermero">Enfermero(a)</option>
                            </select>
                        </div>



                        <div class="col-md-offset-2   col-md-2">
                            <button class="btn btn-info submit-form" type="submit" name="btnAceptar">
                                Aceptar
                            </button>
                        </div>
                        </table>
                        <%
                            if (request.getParameter("btnAceptar") != null) {
                                clinica.modelo.ClinicaAdministrativa ca = new ClinicaAdministrativa();
                                clinica.modelo.Usuario usuario = new Usuario();
                                usuario.setNombre(request.getParameter("txtNombre"));
                                usuario.setApellido(request.getParameter("txtApellido"));
                                usuario.setCargo(request.getParameter("inputCargo"));
                                usuario.setCedula(request.getParameter("txtCedula"));
                                usuario.setNombreUsuario(request.getParameter("txtNombreUsuario"));
                                usuario.setContrasena(request.getParameter("txtContrasenia"));
                                usuario.setTelefono(request.getParameter("txtTelefono"));

                                if (usuario.getNombre().compareTo("") == 0
                                        || usuario.getApellido().compareTo("") == 0
                                        || usuario.getCedula().compareTo("") == 0
                                        || usuario.getTelefono().compareTo("") == 0
                                        || usuario.getNombreUsuario().compareTo("") == 0
                                        || usuario.getContrasena().compareTo("") == 0
                                        || usuario.getCargo().compareTo("inputCargo") == 0){

                                } else {

                                    out.println("Registrado Usuario <br>");
                                    ca.aggUsuario(usuario);

                                }
                            }
                        %>
                    </form>
                </div>
            </div>

        </div>

    </body>
</html>

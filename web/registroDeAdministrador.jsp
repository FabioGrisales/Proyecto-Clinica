<%-- 
    Document   : registroDeAdministrador
    Created on : 21/11/2018, 01:19:01 AM
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
        <div class="container">
            <div style="float: right">
                <a href="index.jsp">Salir</a>
            </div>
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
                             <div class="form-check">
                            <input class="form-check-input" type="radio" name="RaCargo" id="exampleRadios1" value="Administrador" checked>
                            <label class="form-check-label" for="inputCargo">
                                Administrador
                            </label>
                        </div>
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
                                usuario.setCargo(request.getParameter("RaCargo"));
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
                                        || usuario.getCargo().compareTo("") == 0)
                                         {

                                } else {

                                    out.println("Registrado Administrador <br>");
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

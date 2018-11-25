<%-- 
    Document   : registroDePacientes
    Created on : 24/11/2018, 04:35:15 PM
    Author     : FHGA
--%>

<%@page import="clinica.modelo.Paciente"%>
<%@page import="clinica.modelo.Usuario"%>
<%@page import="clinica.modelo.ClinicaAdministrativa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                        <a class="nav-link" href="registroDeAdministrador.jsp">Registrar Administrador</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="administracionDeUsuarios.jsp">Administracion de usuarios</a>
                    </li>
                </ul>
            </div>
        </nav>  
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
                            <label for="inputEps">Eps</label>
                            <input type="tex" name="txtEps" class="form-control" id="inputEps" placeholder="Eps a la que pertenece" required>

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
                                clinica.modelo.Paciente paciente = new Paciente();
                                paciente.setNombre(request.getParameter("txtNombre"));
                                paciente.setApellido(request.getParameter("txtApellido"));
                                paciente.setIdentificacion(request.getParameter("txtCedula"));
                                paciente.setTelefono(request.getParameter("txtTelefono"));

                                if (paciente.getNombre().compareTo("") == 0
                                        || paciente.getApellido().compareTo("") == 0
                                        || paciente.getIdentificacion().compareTo("") == 0
                                        || paciente.getTelefono().compareTo("") == 0)
                                         {

                                } else {

                                    out.println("Registrado Administrador <br>");
                                    ca.aggPaciente(paciente);

                                }
                            }
                        %>
                    </form>
                </div>
            </div>

        </div>
    </body>
</html>

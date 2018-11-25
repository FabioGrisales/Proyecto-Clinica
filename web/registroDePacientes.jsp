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
                        <a class="nav-link" href="registroDePacientes.jsp">Registro De Paciente</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="administracionDePacientes.jsp">Administracion De pacientes</a>
                    </li>

                    <li>
                        <a class="nav-link" href="index.jsp">Salir</a>
                    </li>
                </ul>
            </div>
        </nav>  
        <div class="container">
            <% String accion="";
            clinica.modelo.Paciente p = new Paciente();
            String cedula=request.getParameter("cedula");
            if(cedula==null){
                accion="agregar";
            }else{
                accion="editar";
                clinica.modelo.ClinicaAdministrativa caed= new ClinicaAdministrativa();
                p=caed.obtenerPacientes(cedula).get(0);
                
            }
            
            
            
            %>
            <h1>Complete El Registro!</h1>
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
                            || paciente.getTelefono().compareTo("") == 0) {

                    } else  {
                        if(request.getParameter("txtAccion")=="agregar"){
                        ca.aggPaciente(paciente);
                        }else{
                            ca.editarPacientes(paciente);
                        }
            %>
            <div class="row">
                <div class="col-xs-12">
                    <div class="alert alert-success" role="alert">
                        Se ha Creado El Usuario
                    </div>
                </div>
            </div>
            <%
                    }
                }
            %>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4" >
                    <form>
                        <div class="form-group" >
                            <label for="inputNombre">Nombre</label>
                            <input type="text" name="txtNombre" class="form-control" id="inputNombre" placeholder="Nombre" value="<%= p.getNombre() %>" required autofocus>
                        </div>

                        <div class="form-group">
                            <label for="inputApellido">Apellido</label>
                            <input type="text" name="txtApellido" class="form-control" id="inputApellido" placeholder="Apellido" value="<%= p.getApellido()%>" required>
                        </div>

                        <div class="form-group">
                            <label for="inputIdentificacion">Identificacion</label>
                            <input type="text" name="txtCedula" class="form-control" id="inputIdentificacion" placeholder="Identificacion" value="<%= p.getIdentificacion() %>" required>
                        </div>

                        <div class="form-group">
                            <label for="inputTelefono">Telefono</label>
                            <input type="text" name="txtTelefono" class="form-control" id="inputTelefono" placeholder="Telefono" value="<%= p.getTelefono() %>" required>
                        </div>


                        <div class="col-md-offset-2   col-md-2">
                            <button class="btn btn-info submit-form" type="submit" name="btnAceptar">
                                Aceptar
                            </button>
                        </div>
                        </table>
                        
                        <input type="hidden" name="txtAccion" value="<%= accion %>"
                    </form>
                </div>
            </div>

        </div>
    </body>
</html>

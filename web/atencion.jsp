<%-- 
    Document   : atencion
    Created on : 17/11/2018, 11:08:00 AM
    Author     : FHGA
--%>

<%@page import="clinica.modelo.ClinicaAdministrativa"%>
<%@page import="clinica.modelo.Paciente"%>
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
            <a class="navbar-brand" href="menuAdministrativo.jsp">Clinica Garagoa</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="listaPacientes.jsp">Lista De Pacientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Salir</a>
                    </li>
                </ul>
            </div>
        </nav>
        <h2>Paciente</h2>
        <%
            clinica.modelo.Paciente p = new Paciente();
            String cedula = request.getParameter("cedula");
            clinica.modelo.ClinicaAdministrativa caed = new ClinicaAdministrativa();
            p = caed.obtenerPacientes(cedula).get(0);


        %>


        <div class="container">

            <%        if (request.getParameter("btnAceptar") != null) {
                    if (request.getParameter("txtaFormulacion").compareTo("") != 0
                            || request.getParameter("txtExamenes").compareTo("") != 0
                            || request.getParameter("textaSintomas").compareTo("") != 0) {
            %><div class="row">
                <div class="col-xs-12">
                    <div class="alert alert-success" role="alert">
                        Se ha Guardado Correctamente La Informacion
                    </div>
                </div>
            </div><%
            } else {
            %><div class="row">
                <div class="col-xs-12">
                    <div class="alert alert-success" role="alert">
                    Imposible mandar al pasiente sin unos examenes o unos medicamentos para la mejora de su salud
                    </div>
                </div>
            </div><%
                        

                    }
                }

            %>
            <div class="row">
                <div class="col-xs-12">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputNombew">Nombre</label>
                                <input type="text" class="form-control" id="inputNombew" disabled value="<%= p.getNombre()%>">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputApellido">Apellido</label>
                                <input type="text" class="form-control" id="inputApellido" disabled value="<%= p.getApellido()%>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputIdentificacion">identificacion</label>
                            <input type="text" class="form-control" id="inputIdentificacion" disabled  value="<%= p.getIdentificacion()%>">
                        </div>
                        <div class="form-group">
                            <label for="inputTelefono">Telefono</label>
                            <input type="text" class="form-control" id="inputAddress2" disabled  value="<%= p.getTelefono()%>">
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputSintomas">Sintomas</label>
                                <textarea name="txtaSintomas" rows="7" class="form-control" id="inputCity" cols="25"> </textarea>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputFormulacion">Formulacion</label>
                                <textarea name="txtaFormulacion" rows="7" class="form-control" id="inputCity" cols="25"> </textarea>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputExamenes">Examenes</label>
                                <textarea name="txtaExamenes" rows="7" class="form-control" id="inputCity" cols="25"> </textarea>
                            </div>
                        </div>
                            <input type="hidden" name="cedula" value="<%= p.getIdentificacion()%>" />
                        <button name="btnAceptar" type="submit" class="btn btn-primary">Aceptar</button>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>

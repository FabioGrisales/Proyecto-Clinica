<%-- 
    Document   : prueba
    Created on : 30/11/2018, 12:39:39 AM
    Author     : FHGA
--%>

<%@page import="clinica.modelo.ClinicaAdministrativa"%>
<%@page import="clinica.modelo.Usuario"%>
<%@page import="clinica.modelo.Paciente"%>
<%@page import="clinica.modelo.Atencion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <% 
           clinica.modelo.Paciente p = new Paciente();
            String cedula = request.getParameter("cedula");
            clinica.modelo.ClinicaAdministrativa caed = new ClinicaAdministrativa();
            p = caed.obtenerPacientes(cedula).get(0);
            
        %>
        
        <form>
             <input type="hidden" name="cedula" value="<%= p.getIdentificacion()%>" />
        </form>
    </body>
</html>

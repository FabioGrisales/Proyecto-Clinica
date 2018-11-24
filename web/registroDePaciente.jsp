<%-- 
    Document   : registroDePaciente
    Created on : 17/11/2018, 10:10:35 AM
    Author     : FHGA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            td {
                padding: 5px;
            }
            table {
                width: 300px;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <div style="float: right">
             <a href="index.jsp">Salir</a>
        </div>
        <h1>Registre Completamente Al Paciente!</h1>
        <form>
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="txtNombre" id="nombre"/></td>  
                </tr>
                <tr>
                    <td>Apellido:</td>
                    <td><input type="text" name="txtApellido" id="apellido"/></td>  
                </tr>
                <tr>
                    <td>Cedula:</td>
                    <td><input type="text" name="txtCedula" id="cedula"/></td>  
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td><input type="tel" size="10" name="txtTelefono" id="telefono"/></td>  
                </tr>
                <tr>
                    <td>Sintomas:</td>
                    <td><textarea  rows="5" name="txtSintomas" id="sintomas"/> </textarea></td>  
                </tr>
                <tr>
                    <td>Triaje </td>
                    <td>
                        <div style="display: inline-block">
                            I<input type="radio" name="rbtn" value="Triaje I" style="margin-right:  15px">
                       II<input type="radio" name="rbtn" value="Triaje II" style="margin-right:  15px"> 
                       III<input type="radio" name="rbtn" value="Triaje III" style="margin-right:  15px"> 
                       IV<input type="radio" name="rbtn" value="Triaje IV" style="margin-right: 15px"> 
                    </div>
                       </td>
                <tr>
                    <td>Fecha:</td>
                    <td><input type="datetime-local" name="dateFecha" id="fecha"/></td>  
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="btnAceptar" id="aceptar" value="Aceptar"/></td>
                </tr>


            </table>
            <%
                if (request.getParameter("btnAceptar") != null) {
                    if (request.getParameter("txtNombre").compareTo("") == 0 ||
                        request.getParameter("txtApellido").compareTo("") == 0 ||
                        request.getParameter("txtCedula").compareTo("") == 0 || 
                        request.getParameter("txtCargo").compareTo("") == 0 ||
                        request.getParameter("txtTelefono").compareTo("") == 0 || request.getParameter("dateFecha").compareTo("") == 0){
                        out.println("Campos Requeridos <br>");
                    } else {
                        out.println("Datos Guardados <br>");

                    }
                }
            %>
        </div>

    </form>
</body>
</html>

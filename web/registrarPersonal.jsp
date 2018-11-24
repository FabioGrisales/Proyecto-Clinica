<%-- 
    Document   : registrarPersonal
    Created on : 17/11/2018, 01:46:37 AM
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
                font-size: 20px;
                padding:7px;

            }
        </style>
    </head>
    <body>
        <div style="float: right">
            <a href="index.jsp">Salir</a>
        </div>
        <h1>Complete El Registro!</h1>
        <div style="padding: 7% 25%  10% 40% ">
            <form>
                <table>
                    <tr>
                        <tr>
                        <td>Nombre De Usuario:</td>
                        <td><input type="text" name="txtNombreUsuario" id="NombreUsuario"/></td>  
                    </tr>
                    <tr>
                        <td>Contrasenia:</td>
                        <td><input type="password" name="txtContrasenia" id="contrasenia"/></td>  
                    </tr>
                    <tr>
                        <td>Confirmar Contrasenia:</td>
                        <td><input type="password" name="txtConfirContrasenia" id="confirContrasenia"/></td>  
                    </tr>
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
                        <td>Cargo:</td>
                        <td><select>
                                <option value="---">------</option>
                                 <option value="Doctor">Doctor</option>
                                  <option value="Doctor">Enfermero</option>
                            </select>  
                    </tr>
                    
                    <tr>
                        <td>Telefono:</td>
                        <td><input type="tel" size="10" name="txtTelefono" id="telefono"/></td>  
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
                            request.getParameter("txtTelefono").compareTo("") == 0 ||
                            request.getParameter("txtNombreUsuario").compareTo("") == 0 || 
                            request.getParameter("txtContrasenia").compareTo("") == 0||
                            request.getParameter("txtConfirContrasenia").compareTo("") == 0){
                            
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

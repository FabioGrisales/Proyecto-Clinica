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
    </head>
    <body>
        <h1>Hello World!</h1>
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
                        <td>
                            <input type="radio" name="RaCargo" value="administrador" >Administrador </td> 
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
                    clinica.modelo.ClinicaAdministrativa ca = new ClinicaAdministrativa();
                    clinica.modelo.Usuario usuario = new Usuario();
                    usuario.setNombre(request.getParameter("txtNombre"));
                   usuario.setApellido(request.getParameter("txtApellido"));
                   usuario.setCargo(request.getParameter("RaCargo"));
                   usuario.setCedula(request.getParameter("txtCedula"));
                   usuario.setNombreUsuario(request.getParameter("txtNombreUsuario"));
                   usuario.setContrasena(request.getParameter("txtContrasenia"));
                   usuario.setTelefono(request.getParameter("txtTelefono"));
                  
                   
                            if (usuario.getNombre().compareTo("") == 0 || 
                            usuario.getApellido().compareTo("") == 0 || 
                            usuario.getCedula().compareTo("") == 0 || 
                            usuario.getTelefono().compareTo("") == 0 ||
                            usuario.getNombreUsuario().compareTo("") == 0 || 
                            usuario.getContrasena().compareTo("") == 0||
                            usuario.getCargo().compareTo("")==0||
                            request.getParameter("txtConfirContrasenia").compareTo("") == 0){
                            
                       
                        } else {
                            
                            out.println("Registrado Administrador <br>");
                            ca.aggUsuario(usuario);

                        }
                    }
                %>
        </div>

    </form>
</body>
    </body>
</html>

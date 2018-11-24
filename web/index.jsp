<%-- 
    Document   : index
    Created on : 17/11/2018, 12:53:34 AM
    Author     : FHGA
--%>

<%@page import="clinica.modelo.Usuario"%>
<%@page import="clinica.modelo.ClinicaAdministrativa"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            td {
                font-size: 20px;
                padding:10px;

            } 
        </style>
    </head>
    <body>
        <div>
            <!--  
             clinica.modelo.ClinicaAdministrativa ca=new ClinicaAdministrativa();
            clinica.modelo.Usuario usuario=new Usuario();
            usuario.setNombre(request.getAttribute("txtUsuario").toString());
            
             <input type="radio" name="cargo" value="administrador" checked>Administrador</td>
              }-->

            <%
                if (request.getParameter("btnAceptar") != null) {
                    clinica.modelo.ClinicaAdministrativa ca = new ClinicaAdministrativa();
                    clinica.modelo.Usuario usuario = new Usuario();
                    usuario.setNombreUsuario(request.getParameter("txtUsuario").toString());
                    usuario.setContrasena(request.getParameter("txtClave").toString());
                    String cargo = ca.validarLogin(usuario);
                    if (request.getParameter("txtUsuario").compareTo("") == 0) {
                        out.println("Campos Requeridos <br>"); 
                    } else if (cargo == null) {
                        out.println("Datos Incorrectos");
                    } else if (request.getParameter("txtUsuario").compareTo(cargo) == 0) {
                        out.println("Sesion iniciada<br>");
                        session.setAttribute("txtUsuario", request.getParameter("txtUsuario").toString());//para iniciar secion creada
                        response.sendRedirect("registroDeAdministrador.jsp");  //direcionar despues del boton aceptar a otra pagina como dejar la pagina en blaco

                    } else if (cargo.compareTo("Doctor") == 0) {
                        out.println("Sesion iniciada<br>");
                        session.setAttribute("txtUsuario", request.getParameter("txtUsuario").toString());//para iniciar secion creada
                        response.sendRedirect("atencion.jsp");  //direcionar despues del boton aceptar a otra pagina como dejar la pagina en blaco
                    } else if (cargo.compareTo("Enfermero") == 0) {
                        out.println("Sesion iniciada<br>");
                        session.setAttribute("txtUsuario", request.getParameter("txtUsuario").toString());//para iniciar secion creada
                        response.sendRedirect("registroDePaciente.jsp");  //direcionar despues del boton aceptar a otra pagina como dejar la pagina en blaco

                    }
                }


            %>

            <div style="padding: 20% 40%  20% 40% ">
                <form action="index.jsp" method="post">
                          <table>
                        <tr>
                            <td>Usuario: </td>
                            <td><input type="text" name="txtUsuario" id="usr"/></td>
                        </tr>  
                        <tr>

                            <td>Contraseña: </td> 
                            <td><input type="password" name="txtClave" id="psw"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" name="btnAceptar" id="aceptar" value="Aceptar"/></td>
                        </tr>
                    </table>
            </div>
        </form> 
    </div>
</body>
</html>

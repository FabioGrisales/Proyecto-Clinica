<%-- 
    Document   : atencion
    Created on : 17/11/2018, 11:08:00 AM
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
                font-size: 17px;
                padding:7px;

            }
        </style>
    </head>
    <body>
         <div style="float: right">
             <a href="index.jsp">Salir</a>
        </div>
        <h2>Paciente</h2>
       
        <form>
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><label>Fabio</label> </td>
                </tr>
                <tr>
                    <td>Apellido:</td>
                    <td><label>Grisales</label> </td>
                </tr>

                <tr>
                    <td>Identificacion:</td>
                    <td><label>1083043782</label> </td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td><label>3043313120</label> </td>    
                </tr>
                <tr>
                    <td>Sintomas:</td>
                    <td><textarea readonly rows="10" cols="40">Fiebre alta y vomito </textarea> </td>
                </tr>
                <tr>
                    <td>Formulacion:</td>
                    <td><textarea rows="10" cols="40" name="txtFormulacion" id="formulacion"></textarea></td>
                </tr>
                <tr>
                    <td>Examenes:</td>
                    <td><textarea rows="10" cols="40" name="txtExamenes" id="examenes"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="btnAceptar" id="aceptar" value="Aceptar"/></td>
                </tr>
            </table>
           
            <%
                if (request.getParameter("btnAceptar") != null) {
                    if (request.getParameter("txtFormulacion").compareTo("")!= 0 ||
                        request.getParameter("txtExamenes").compareTo("")!=0){
                        out.println("Datos Guardados <br>");
                    } else {
                          out.println("Imposible mandar al pasiente sin unos examenes o unos medicamentos para la mejora de su salud");
                           
                    }
                }   
                
            %>
        </form>
    </body>
</html>

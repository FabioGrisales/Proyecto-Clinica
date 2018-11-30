<%-- 
    Document   : entregaME
    Created on : 30/11/2018, 02:11:52 AM
    Author     : FHGA
--%>

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
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputNombew">Nombre</label>
                            <input type="text" class="form-control" id="inputNombew" disabled value="">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputApellido">Apellido</label>
                            <input type="text" class="form-control" id="inputApellido" disabled value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputIdentificacion">identificacion</label>
                        <input type="text" class="form-control" id="inputIdentificacion" disabled  value="">
                    </div>
                    <div class="form-group">
                        <label for="inputTelefono">Telefono</label>
                        <input type="text" class="form-control" id="inputAddress2" disabled  value="">
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
                    <input type="hidden" name="cedula" value="" />
                    <button name="btnAceptar" type="submit" class="btn btn-primary">Aceptar</button>
                </form>
            </div>
        </div>
    </div>
</div>
</html>

<%-- 
    Document   : index
    Created on : May 15, 2016, 2:18:13 AM
    Author     : leona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Calcular IMC</title>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/materialize.min.css"  media="screen,projection"/>


    </head>
    <body>
        <div class="row">
        <div class="col m6 offset-m3">
            <div class="container">
                <h3>IMC</h3>
                <hr>
                <div class="container-fluid">
                    <div class="row">
                        <div class="input-field col m8 offset-m2">
                            <input id="peso" type="text" class="validate">
                            <label for="peso">Peso</label>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="input-field col m8 offset-m2">
                            <input id="altura" type="text" class="validate">
                            <label for="altura">Altura</label>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="input-field col m8 offset-m2">
                            <select id="sexo">
                              <option value="masculino">Masculino</option>
                              <option value="feminino">Feminino</option>
                            </select>
                            <label for="sexo">Sexo</label>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col m8 offset-m2">
                            <button class="waves-effect waves-light btn" onclick="calculate()">Calcular</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/materialize.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>
</html>

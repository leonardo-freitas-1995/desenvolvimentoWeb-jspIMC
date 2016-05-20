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
                <form>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="input-field col m8 offset-m2">
                                <input name="peso" id="peso" type="text" class="validate">
                                <label for="peso">Peso</label>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="input-field col m8 offset-m2">
                                <input name="altura" id="altura" type="text" class="validate">
                                <label for="altura">Altura</label>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="input-field col m8 offset-m2">
                                <select name="sexo" id="sexo">
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
                                <button class="waves-effect waves-light btn">Calcular</button>
                            </div>
                        </div>
                    </div>
                </form>
                <hr>
                <%
                    try{
                        String altura = request.getParameter("altura");
                        String peso = request.getParameter("peso");
                        String sexo = request.getParameter("sexo");
                        altura = altura.replace(",", ".");
                        peso = peso.replace(",", ".");
                        if (altura != null && peso != null && sexo != null){
                            double imc = Double.parseDouble(peso) / (Double.parseDouble(altura) * Double.parseDouble(altura));
                            String imcMessage;
                            if (sexo.equals("masculino")){
                                if (imc < 20.7){
                                    imcMessage = "<div class='card-panel red white-text'>IMC: " + imc + " <br><b>Cuidado!</b> Você está abaixo do peso.</div>";
                                }
                                else if (imc < 26.4){
                                    imcMessage = "<div class='card-panel green white-text'>IMC: " + imc + " <br><b>Otimo!</b> Você no peso normal.</div>";
                                }
                                else if (imc < 27.8){
                                    imcMessage = "<div class='card-panel yellow darken-2 white-text'>IMC: " + imc + " <br><b>Atenção!</b> Você marginalmente acima do peso.</div>";
                                }
                                else if (imc < 31.1){
                                    imcMessage = "<div class='card-panel orange white-text'>IMC: " + imc + " <br><b>Cuidado!</b> Você acima do peso ideal.</div>";
                                }
                                else {
                                    imcMessage = "<div class='card-panel red white-text'>IMC: " + imc + " <br><b>Cuidado!</b> Você na faixa de obesidade.</div>";
                                }
                            }
                            else{
                                if (imc < 19.1){
                                    imcMessage = "<div class='card-panel red white-text'>IMC: " + imc + " <br><b>Cuidado!</b> Você abaixo do peso.</div>";
                                }
                                else if (imc < 25.8){
                                    imcMessage = "<div class='card-panel green white-text'>IMC: " + imc + " <br><b>Otimo!</b> Você no peso normal.</div>";
                                }
                                else if (imc < 27.3){
                                    imcMessage = "<div class='card-panel yellow darken-2 white-text'>IMC: " + imc + " <br><b>Atenção!</b> Você marginalmente acima do peso.</div>";
                                }
                                else if (imc < 32.3){
                                    imcMessage = "<div class='card-panel orange white-text'>IMC: " + imc + " <br><b>Cuidado!</b> Você acima do peso ideal.</div>";
                                }
                                else {
                                    imcMessage = "<div class='card-panel red white-text'>IMC: " + imc + " <br><b>Cuidado!</b> Você na faixa de obesidade.</div>";
                                }
                            }
                            out.print(imcMessage);
                        }
                    }
                    catch(Exception e){
                        
                    }
                %>
            </div>
        </div>
    </div>


    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/materialize.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>
</html>

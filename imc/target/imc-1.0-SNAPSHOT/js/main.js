var imcTable = {
    feminino: {
        abaixo: {max: 19.1},
        normal: {min: 19.1, max: 25.8},
        acima: {min: 15.8, max: 27.3},
        muitoAcima: {min: 27.3, max: 32.3},
        obeso: {min: 32.3}
    },
    masculino: {
        abaixo: {max: 20.7},
        normal: {min: 20.7, max: 26.4},
        acima: {min: 26.4, max: 27.8},
        muitoAcima: {min: 27.8, max: 31.1},
        obeso: {min: 31.1}
    }
};

function calculate(){
    var pesoString = $("#peso").val();
    var alturaString = $("#altura").val();
    pesoString = pesoString.replace(",", ".");
    alturaString = alturaString.replace(",", ".");
    var peso = parseFloat(pesoString);
    var altura = parseFloat(alturaString);
    var sexo = $("#sexo").val();
    if (!isNaN(peso) && !isNaN(altura)){
        var imc = peso / (Math.pow(altura, 2));
        var compTable = imcTable[sexo];
        switch (true) {
            case (imc < compTable.abaixo.max):
                sendMessage("IMC: " + imc + " / Abaixo do peso");
                break;
            case (imc >= compTable.normal.min && imc < compTable.normal.max):
                sendMessage("IMC: " + imc + " / No peso normal");
                break;
            case (imc >= compTable.acima.min && imc < compTable.acima.max):
                sendMessage("IMC: " + imc + " / Marginalmente acima do peso");
                break;
            case (imc >= compTable.muitoAcima.min && imc < compTable.muitoAcima.max):
                sendMessage("IMC: " + imc + " / Acima do peso ideal");
                break;
            case (imc >= compTable.obeso.min):
                sendMessage("IMC: " + imc + " / Obesidade");
                break;
            default:
                sendMessage("Um erro inesperado ocorreu.");
                break;
        }
    }
	else{
		sendMessage("Preencha todos os campos corretamente.");
	}
}

function sendMessage(message){
    Materialize.toast(message, 4000);
}

$(document).ready(function() {
   $('select').material_select();
 });

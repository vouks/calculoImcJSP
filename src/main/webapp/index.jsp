<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Cálculo IMC</title>

    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
    
  </head>
  <body>
      

    <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend><b>Calculadora de IMC</b></legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="peso">Peso</label>  
  <div class="col-md-4">
  <input id="peso" name="peso" type="text" placeholder="Digite aqui o peso em KG" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="altura">Altura</label>  
  <div class="col-md-4">
  <input id="altura" name="altura" type="text" placeholder="Digite aqui a altura em M" class="form-control input-md">
    
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="sexo">Sexo</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="sexo-0">
      <input type="radio" name="sexo" id="sexo-0" value="1" checked="checked">
      Masculino
    </label>
	</div>
  <div class="radio">
    <label for="sexo-1">
      <input type="radio" name="sexo" id="sexo-1" value="2">
      Feminino
    </label>
	</div>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="calcular"></label>
  <div class="col-md-4">
    <button id="calcular" name="calcular" class="btn btn-primary">Calcular</button>
    <button id="calcular" name="ajuda" class="btn btn-primary">Ajuda</button>
  </div>
</div>

</fieldset>
</form>

<%
String Pesostr = request.getParameter("peso");
String Alturastr = request.getParameter("altura");
String resultado = "";

      Alturastr = Alturastr == null ? "0" : Alturastr;
      Pesostr = Pesostr == null ? "0" : Pesostr;
      
double altura = Double.parseDouble(Alturastr);
double peso = Double.parseDouble(Pesostr);
      
      double imc = peso/(altura*altura);
%>

  
<% if (imc<18.5) { resultado = "Abaixo do peso";} %>


<% if(imc>=18.5 && imc<25) { resultado="Com peso normal.";} %>


<% if(imc>=25 && imc<30) { resultado="Com sobrepeso.";} %>


<% if(imc>=30 && imc<35) { resultado="Com obesidade grau 1.";} %>


<% if(imc>=35 && imc<40) { resultado="Com obesidade grau 2.";} %>


<% if(imc>=40) { resultado="Com obesidade mórbia.";} %>

<div class="alert alert-success" role="alert" style="margin-top:45px"><%=resultado%></div>

  </body>
</html>
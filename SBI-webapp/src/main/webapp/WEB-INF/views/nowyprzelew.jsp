<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="pl">
<head>
  <title>Bankowość Internetowa</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Logo</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="#">Klienci indywidualni</a></li>
              <li><a href="#">Bankowość prywatna</a></li>
              <li><a href="#">Biznes</a></li>
              <li><a href="#">Przedsiębiorstwa</a></li>
              <li><a href="#">O banku</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#">
              	<select name="chooseLang">
                    <option value="1"><img src="image/en.png" alt="logo" /></option>
                    <option value="2"><img src="image/en.png" alt="logo" /></option>
              	</select>
              </a></li>
              <li><a href="#">Kontakt</a></li>
            </ul>
          </div>
        </div>
      </nav>

      <div class="panel">
      	<nav class="navbar navbar-default">
        <div class="panel-body">
          <div class="navbar-header">
          </div>
          <div id="navbar" class="navbar-collapse collapse">

       <form:form method="POST" modelAttribute="przelew">   <!-- modelAttribute - klasa, którą wysłał kontroler-->
                                    <!-- Pola form:input odpowiadają polom tej klasy -->
                <table>
         
        <tr>
              <th>Podaj numer rachunku docelowego:</th>
              <td><form:input type="text" path="rachunekDoc" /><form:errors path="rachunekDoc" /></td>
	</tr>
        
        <tr>
              <th>Podaj kwotę przelewu:</th>
              <td><form:input type="number" path="kwota" /><form:errors path="kwota" /></td>
	</tr>
        
        <tr>
              <th>Podaj walutę:</th>
              <td><form:input type="text" path="waluta" /><form:errors path="waluta" /></td>
	</tr>
        
        <tr>
              <th>Podaj tytuł:</th>
              <td><form:input type="tytul" path="tytul" /><form:errors path="tytul" /></td>
	</tr>

              </table>
        
        
        
        
        
          <div class="form-group"> 
                  <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" input type="submit" class="btn btn-default">Dodaj</button>
                  </div>
          </div>

      
              </form:form>
              
              
              
          </div>
        </div>
      </nav>
      </div>
    </div>
</body>
</html>
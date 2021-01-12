<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Guess</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container mt-5 text-center">
    <div class = "row justify-content-center">
    <form action="/check" method="POST">
    <p class="text-danger"><c:out value="${ error }" /></p>
    <div class="form-group">
    <h3><label>Can you guess the code?</label></h3>
    <input type="text" name="guess" class="form-control" />
    <button class="btn btn-dark btn-sm mt-2" type="submit">Guess!</button>
    </div>
    </form>
    </div>
  </div>
</body>
</html>
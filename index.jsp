<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body style="background-color:#059292;
color:white;">

<h1 style="font-family:arial"><%= "Expense tracker " %>
</h1>
<br/>
<h2 style="font-family: arial">Bienvenue!<br> Connectez-vous ou inscrivez-vous! </h2>
<a href="hello-servlet">Hello Servlet</a>
<div>


    <div id="id01" class="modal">

        <form class="modal-content animate" action="/action_page.php" method="post">
            <div class="imgcontainer">

                <img src="https://cdn-icons-png.flaticon.com/512/727/727399.png?w=740&t=st=1689840940~exp=1689841540~hmac=b815e91d2b16cf61467f1436c665cb09e0fc54944586fc1b34717d4082e893c6 " alt="Avatar" class="avatar" height="60" width="60">
            </div>

            <div class="container">
                <label style="font-family: arial"></label>
                <input type="text" placeholder="Email" name="uname" required>
                <br>

                <label style="font-family: arial"></label>
                <input type="password" placeholder="Mot de passe" name="psw" required>
                <br>

                <button type="submit" style="font-family: arial">Se connecter</button>
                <label style="font-family: arial">
                    <input type="checkbox" checked="checked" name="remember" > Remember me
                </label>

            </div>

            <div class="container" >

                <span class="psw" style="font-family: arial" style="color: white"> <a href="#">Mot de passe oublié?</a></span>
            </div>
        </form>
        <br>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</div>

<div>
    <b style="font-family: arial">Nouveau, inscrivez-vous!</b><br>
    <label style="font-family: arial"></label>
    <input type="first_name" placeholder="Prénom" name="nom" required>
    <br>
    <label style="font-family: arial"></label>
    <input type="last_name" placeholder="Nom" name="nom" required>
    <br>
    <label style="font-family: arial"></label>
    <input type="email" placeholder="Email" name="email" required>
    <br>
    <label style="font-family: arial"></label>
    <input type="password" placeholder="Mot de passe" name="psw" required>
    <br>
    <label style="font-family: arial"></label>
    <input type="password" placeholder="Confirmez votre mot de passe" name="psw" required>
    <br>
    <button type="submit" style="font-family: arial">Créer un compte</button>

</div>
</body>
</html>
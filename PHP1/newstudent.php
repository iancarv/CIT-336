<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Smashing HTML5!</title>
 
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript" src="js/script.js"></script>
</head>
 
<body id="index" class="home"> 
    <form id="searchform">
                <input list="students" onkeyup = "showResult(this.value)" placeholder="Search">
                <datalist id="students">
                </datalist>
                </form>
    <header class="body"><h1>CIT366 Web Page</h1>
        <nav id="menu"><ul>
            <li><a href="index.php">Home</a></li>
            <li class="active"><a href="#">Insert New Students</a></li>
        </ul></nav>
    </header><!-- /#banner -->  
    <section id="content" class="body">
        <article>
            <header>
                <h2>Insert a new student</h2>
            </header>
            <form action="insert.php" method="post">
                <p>
                    <label for="id">UID:</label>
                    <input type="text" name="id" id="id">
                </p>
                <p>
                    <label for="name">Name:</label>
                    <input type="text" name="name" id="name">
                </p>
                <input type="submit" value="PHP Form">
                <input type="button" value="AJAX Form" onclick="sendForm()">
            </form>
            
        </article>
    </section>
    <footer id="pageinfo" class="body">
        <p class="center">Created by Ian Carvalho</p>
    </footer>
 
</body>
</html>

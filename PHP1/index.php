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
            <li><a href="#">Home</a></li>
            <li class="active"><a href="newstudent.php">Insert New Students</a></li>
        </ul></nav>
    </header><!-- /#banner -->  
    <section id="content" class="body">
        <article>
            <header>
                <h2>This is the CIT366 Roster</h2>
            </header>
            <?php include 'output.php';?>
        </article>
    </section>
    <footer id="pageinfo" class="body">
        <p class="center">Created by Ian Carvalho</p>
    </footer>
 
</body>
</html>

function sendForm() {
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
      } else {  // code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange=function() {
        console.log(xmlhttp.readyState);
        console.log(xmlhttp.status);
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
         alert(xmlhttp.responseText);
        }
      }
    var id=encodeURIComponent(document.getElementById("id").value)
    var name=encodeURIComponent(document.getElementById("name").value)
    var parameters="id="+id+"&name="+name
    xmlhttp.open("POST", "insert.php", true)
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
    xmlhttp.send(parameters)
}

function showResult(str) {
    if (str.length == 0) {
               document.getElementById("students").innerHTML = "";
               return;
            }
            
            if (window.XMLHttpRequest) {
               xmlhttp = new XMLHttpRequest();
            }
            else {
               xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            
            xmlhttp.onreadystatechange = function() {
        console.log(xmlhttp.readyState);
        console.log(xmlhttp.status);
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                  console.log(xmlhttp.responseText)
                    document.getElementById("students").innerHTML = xmlhttp.responseText;
                }
            }
            var auto = encodeURIComponent(str)
            var parameters = "q="+auto;
      xmlhttp.open("POST", "autocomplete.php", true)
      xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
      xmlhttp.send(parameters)
  }

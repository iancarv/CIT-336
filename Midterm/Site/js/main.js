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
    var flavor=encodeURIComponent(document.getElementById("flavor").value);
    var scoops=encodeURIComponent(document.getElementById("scoops").value);
    var parameters="flavor="+flavor+"&scoops="+scoops;
    xmlhttp.open("GET", "sale.php?"+parameters, true);
    xmlhttp.send()
}

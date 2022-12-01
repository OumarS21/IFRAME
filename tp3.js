function tableau(){
    document.write("<table border=2 width=30%;>");
    for (var i = 0 ; i <=5; i++){
        document.write("<tr> <td>*</td> <td>*</td> <td>*</td> </tr>")
    }
    document.write("</table");
}


function tableau2 (){
    var ligne = prompt("Donner le nombre de lignes à afficher.");
    document.write("<table border=2 width=30%;>");
    for(i = 1 ; i <= ligne; i++){
        document.write("<tr> <td>" +i+"</td> <td>*</td> <td>*</td> </tr>")
    }
    document.write("</table>");
}

function seconnecter(){
    var id = prompt("Donner votre nom d'utilisateur");
    var mdp = prompt("Entrer votre mot de passe");
    if( id == "admin" && mdp == "admin"){
        document.write("Bienvenue :     "+ id);
    }
    else{
        alert("Accès refusé");
    }
}

function connexion2(){
    var i =0
    do {
    var id = prompt("Donner votre nom d'utilisateur");
    var mdp = prompt("Entrer votre mot de passe");
    if( id == "admin" && mdp == "admin")
    {
        document.write("Bienvenue :     "+ id);
        break;   
    }

    else
    alert("Accès refusé");
    i+=1;

    } while (i<3);
    if (i ==3);
    alert("delai dépassé");

}
function cdc(){
    var chaine = prompt("Donnez un mot")
    document.write(chaine.toUpperCase()+ "<br>");
    document.write(chaine.toLowerCase()+ "<br>");
    document.write("la chaine contient    "+chaine.length+" caractères "+" <br>");
    document.write("La premier lettre est  " +chaine.substr(0,1)+ "<br>");
}

function Switch(){
    var color = prompt("Entrez une couleur")
    switch(color){
        case "rouge" :
            document.body.style.background = "red" ;;
            break ;
        case "ROUGE" :
            document.body.style.background = "red" ;;
            break ;
        case "bleu" :
            document.body.style.background = "blue" ;;
            break ;
        case "BLEU" :
            document.body.style.background = "blue" ;;
            break ;
        default : alert("Couleur non définie");
    }
}

function Bonus(){
        var price
        var quantity
        var res 
        var total=0;
    
        do{
            article = prompt("Votre article");
            price = prompt("Le prix");
            quantity = prompt("La quantité");

            res = Number(price)* Number(quantity);
            total = total + res;
    
            alert("Votre facture :  "+total);
    
            next = prompt("Voulez vous continuer (OUI/STOP) ?")
        }
        while(next != "STOP")
    }



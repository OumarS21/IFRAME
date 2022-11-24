function calcul_moyenne()
{
    var note1= prompt("Donner la premiere note /20:");
    var note2= prompt("Donner la deuxieme note /20:");
    var note3= prompt("Donner la troisieme note /20:");

    var somme = Number(note1)+Number(note2)+Number(note3);

    document.write ("Voici la somme :" + somme + "<br>");
    var moyenne= somme/3;

    document.write("Voici la moyenne :" + moyenne + "/20" + "<br>");

    if (moyenne<10)
    {
        document.write("Vous etes redoublant");
        document.body.style.background = "red";
    }
    else
    {
        document.write("vous etes admis");
        document.body.style.background = "green";
    }
}    

function test_age()
{
    var age= prompt("donnez votre age")
    if (age <18)
    {
        document.write("t'es mineur, attend tes 18 ans pour faire des bails")
    document.body.style.background = "red";
    }
    
    else
    {
    document.write("vous etes majeur,")
    document.body.style.background = "green";
    }    
}

function simple_affichage()
{
    var nom = prompt("donner votre nom");
    var prenom = prompt("donner votre prenom");

    document.write("<div style=' margin:auto ; width:300px ; border:2px solid blue; '>");
    document.write("Bonjour " + prenom + " " + nom);
    document.write("</div");

}

function test_couleur()
{
    var c =prompt("donner une couleur");
    if (c =="rouge" || c == "ROUGE" || c=="R")
    document.body.style.background = "red";
    else if (c == "bleu" || c== "BLUE")
    document.body.style.background = "blue";
    else
    document.write("couleur non comprise");

}
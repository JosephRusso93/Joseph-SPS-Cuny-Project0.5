


var requestURL = 'https://mdn.github.io/learning-area/javascript/oojs/json/superheroes.json';
var request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();

request.onload = function () {
    
    var superHeroes = request.response;
    
        populateHeader(superHeroes);

        showHeroes(superHeroes);

};
var header = document.querySelector('header');
var section = document.querySelector('section');

function populateHeader(Heros) {
    var heading1 = document.createElement('h1');
    heading1.innerText =Heros['squadName'];
    header.appendChild(heading1);

    var info = document.createElement('p');
    info.textContent = 'Hometown: ' + Heros['homeTown'] + ' // Formed: ' + Heros['formed'];
    header.appendChild(info);
}

function showHeroes(Heros) {
    var herolist = Heros['members'];
    for (var i = 0; i < herolist.length; i++) {
        var ListofHeros = document.createElement('article');
        var H2 = document.createElement('h2');
        var p1 = document.createElement('p');
        var p2 = document.createElement('p');
        var p3 = document.createElement('p');
        var list = document.createElement('ul');
        H2.textContent = herolist[i].name;
        p1.textContent = 'Secret identity: ' + herolist[i].secretIdentity;
        p2.textContent = 'Age: ' + herolist[i].age;
        p3.textContent = 'Superpowers:';
        var superPowers = herolist[i].powers;
        for (var j = 0; j < superPowers.length; j++) {
            var listItem = document.createElement('li');
            listItem.textContent = superPowers[j];
            list.appendChild(listItem);
        }
        ListofHeros.appendChild(H2);
        ListofHeros.appendChild(p1);
        ListofHeros.appendChild(p2);
        ListofHeros.appendChild(p3);
        ListofHeros.appendChild(list);
        section.appendChild(ListofHeros);
    }
}
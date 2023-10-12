document.addEventListener('DOMContentLoaded', function () {
  var kundenBtn = document.getElementById('kundenBtn');
  kundenBtn.addEventListener('click', function (e) {
    e.preventDefault();

    let data;

    fetch('/selectKunden')
      .then((response) => response.text())
      .then((result) => {
        data = JSON.parse(result);
        console.log(data);
      });

    let showDataDiv = document.getElementById('showData');
    showDataDiv.innerHTML = '';

    let table = document.createElement('table');
    let th = document.createElement('th');
    let tr = document.createElement('tr');
    let td1 = document.createElement('td');

    showDataDiv.appendChild(table);
    table.appendChild(th);
    th.appendChild(tr);
    tr.appendChild(td);
    td.innerHTML = 'Kunden Name';
  });

  var fahrzeugeBtn = document.getElementById('fahrzeugeBtn');
  fahrzeugeBtn.addEventListener('click', function (e) {
    e.preventDefault();

    let data;

    fetch('/selectFahrzeuge')
      .then((response) => response.text())
      .then((result) => {
        data = JSON.parse(result);
        console.log(data);
      });

    let showDataDiv = document.getElementById('showData');
    showDataDiv.innerHTML = '';
    let h1 = document.createElement('h1');
    h1.innerHTML = 'Select Fahrzeuge';
    showDataDiv.appendChild(h1);
  });

  var mitarbeiterBtn = document.getElementById('mitarbeiterBtn');
  mitarbeiterBtn.addEventListener('click', function (e) {
    e.preventDefault();

    let data;

    fetch('/selectMitarbeiter')
      .then((response) => response.text())
      .then((result) => {
        data = JSON.parse(result);
        console.log(data);
      });

    let showDataDiv = document.getElementById('showData');
    showDataDiv.innerHTML = '';
    let h1 = document.createElement('h1');
    h1.innerHTML = 'Select Mitarbeiter';
    showDataDiv.appendChild(h1);
  });
});

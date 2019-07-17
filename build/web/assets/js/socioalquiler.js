$(document).ready(function(){
    window.chartColors = {
          red: 'rgb(255, 99, 132)',
            orange: 'rgb(255, 159, 64)',
    yellow: 'rgb(255, 205, 86)',
    green: 'rgb(75, 192, 192)',
    blue: 'rgb(54, 162, 235)',
    purple: 'rgb(153, 102, 255)',
    grey: 'rgb(201, 203, 207)'
};
var listacolores=[];
          var colorName = Object.keys(window.chartColors);
          var num=colorName.length;
          for(var index=0; index<2;index ++){
            var newColor = window.chartColors[colorName[index%num]];
            listacolores.push(newColor);
              }
        var datos = {
    type: "pie",
    data : {
                datasets :[{
                    data : ${valor},
        backgroundColor: listacolores ,
            }],
        labels : ${label}
        },
    options : {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Alquiler por socio'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };
           

    var canvas = document.getElementById('chart').getContext('2d');
    window.pie = new Chart(canvas, datos);
            var datos1 = {
    type: "doughnut",
    data : {
                datasets :[{
                    data : ${valor},
        backgroundColor: listacolores ,
            }],
        labels : ${label}
        },
    options : {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Alquiler por socio'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };
            var canvas1 = document.getElementById('chart1').getContext('2d');
    window.pie = new Chart(canvas1, datos1);

});
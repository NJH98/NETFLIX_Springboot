<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
        <title>Admin</title>
        <script>
            var ctx = document.getElementById("logChart").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["남자 회원", "여자 회원"],
                    datasets: [{
            
            
                        data: ['${menCount}', '${womenCount}'], //컨트롤러에서 모델로 받아온다.
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)'
            
                        ],
                        borderColor: [
                            'rgba(255,99,132,1)',
                            'rgba(54, 162, 235, 1)'
            
                        ],
                        borderWidth: 1
                    }
                    ]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero:true
                            }
                        }]
                    }
                }
            });
            </script>
            
    </head>

    <body>
        <script

	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
        <div style="width:60%">

            <div>
        
                <canvas id="canvas" height="450" width="600"></canvas>
        
            </div>
        
        </div> 
    </body>

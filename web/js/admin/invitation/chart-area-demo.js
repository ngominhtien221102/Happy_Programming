// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';
// Area Chart Example
const MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
function months(index) {
    values = MONTHS.slice(0, index);
    return values;
}

var datamonth = [];
var dataAccept = [];
var dataProcess = [];
var dataCancel = [];
var dataReject = [];
var dataClose = [];
$(document).ready(function () {
    $.ajax({
        url: "/Happy_Programming/invitationChart",
        type: 'GET',
        success: function (data) {
            var list_raw = data.split("||");
            for (let i = 0; i < list_raw.length; i++) {
                var s1 = list_raw[i].split("-");
                for (let j = 0; j < s1.length; j++) {
                    let x = parseInt(s1[j]);
                    switch (i) {
                        case 0:
                            datamonth.push(x);
                            break;
                        case 1:
                            dataAccept.push(x);
                            break;
                        case 2:
                            dataProcess.push(x);
                            break;
                        case 3:
                            dataCancel.push(x);
                            break;
                        case 4:
                            dataReject.push(x);
                            break;
                        case 5:
                            dataClose.push(x);
                            break;
                    }

                }
            }


            // Area Chart Example
            var ctx = document.getElementById("myAreaChart");
            var myLineChart = new Chart(ctx, {

                type: 'line',
                data: {
                    labels: months(datamonth.length),
                    datasets: [
                        
//                        {
//                            label: "Dataset1: ",
//                            lineTension: 0.3,
//                            backgroundColor: "rgba(78, 115, 223, 0.05)",
//                            borderColor: "rgba(78, 115, 223, 1)",
//                            pointRadius: 3,
//                            pointBackgroundColor: "rgba(78, 115, 223, 1)",
//                            pointBorderColor: "rgba(78, 115, 223, 1)",
//                            pointHoverRadius: 3,
//                            pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
//                            pointHoverBorderColor: "rgba(78, 115, 223, 1)",
//                            pointHitRadius: 10,
//                            pointBorderWidth: 2,
//                            data: datamonth
//                        },
                        {
                            label: "Accepted: ",
                            lineTension: 0,
                            backgroundColor: "rgba(255,255,255,0)",
                            borderColor: "rgb(255, 87, 51)",
                            pointBackgroundColor: "rgb(255, 87, 51)",
//                            yAxisID: 'y1',
                            data: dataAccept,
                        },
                        {
                            label: "Processing: ",
                            lineTension: 0,
                            backgroundColor: "rgba(255,255,255,0)",
                            borderColor: "rgb(255, 196, 51)",
                            pointBackgroundColor: "rgb(255, 196, 51)",
//                            yAxisID: 'y2',
                            data: dataProcess
                        },
                        {
                            label: "Cancel: ",
                            lineTension: 0,
                            backgroundColor: "rgba(255,255,255,0)",
                            borderColor: "rgb(190, 255, 51 )",
                            pointBackgroundColor: "rgb(190, 255, 51 )",
//                            yAxisID: 'y3',
                            data: dataCancel
                        },
                        {
                            label: "Rejected: ",
                            lineTension: 0,
                            backgroundColor: "rgba(255,255,255,0)",
                            borderColor: "rgb(51, 255, 212)",
                            pointBackgroundColor: "rgb(51, 255, 212)",
//                            yAxisID: 'y4',
                            data: dataReject
                        },
                        {
                            label: "Closed: ",
                            lineTension: 0,
                            backgroundColor: "rgba(255,255,255,0)",
                            borderColor: "rgba(184, 51, 255 )",
                            pointBackgroundColor: "rgb(184, 51, 255 )",
//                            yAxisID: 'y5',
                            data: dataClose
                        }
                    ]
                },
                options: {
                    interaction: {
                        mode: 'index',
                        intersect: false
                    },
                    stacked: false,
                    maintainAspectRatio: false,
                    layout: {
                        padding: {
                            left: 10,
                            right: 25,
                            top: 25,
                            bottom: 0
                        }
                    },
                    scales: {
                        xAxes: [{

                                time: {
                                    unit: 'date'
                                },
                            }],
                        yAxes: [{

                                ticks: {
                                    maxTicksLimit: 15,
                                    padding: 20,
                                    // Include a dollar sign in the ticks
                                    callback: function (value, index, values) {
                                        return '' + value;
                                    }
                                },
                                gridLines: {
//                                    color: "rgb(234, 236, 244)",
//                                    zeroLineColor: "rgb(234, 236, 244)",
//                                    drawBorder: false,
//                                    borderDash: [2],
//                                    zeroLineBorderDash: [2]
                                }
                            }],
                    },
                    legend: {
//                        display: false
                    }
                }
            });
// Bar Chart Example
            var ctx1 = document.getElementById("myBarChart");
            var myLineChart1 = new Chart(ctx1, {
                type: 'bar',
                data: {
                    labels: months(datamonth.length),
                    datasets: [{
                            label: "Total",
                            backgroundColor: "rgba(2,117,216,1)",
                            borderColor: "rgba(2,117,216,1)",
                            data: datamonth,
                        }],
                },
                options: {
                    maintainAspectRatio: false,
                    scales: {
                        xAxes: [{
                                time: {
                                    unit: 'month'
                                },
                                gridLines: {
                                    display: false
                                },
                            }],
                        yAxes: [{
                                ticks: {
//                                    min: 0,
//                                    max: 50,
                                    maxTicksLimit: 15,
                                },
                                gridLines: {
                                    display: true
                                }
                            }],
                    },
                    legend: {
                        display: false
                    }
                }
            });
        }
    });
});


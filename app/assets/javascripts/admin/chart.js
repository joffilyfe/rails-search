$(document).ready(function() {
  var ctx = $("#chartSearch");
  var chart = {
    data: {
      labels: [],
      datasets: [        {
            data: [],
            backgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ]
        }]
    }
  };

  chart.populate = function() {
    var info = ctx.data('info');
    for (key in info) {
      chart.data.labels.push(key);
      chart.data.datasets[0]['data'].push(info[key]);
      if (chart.data.labels.length >= 3)
        return;
    }
  }

  chart.show = function() {
    var pie = new Chart(ctx, {
      type: 'pie',
      data: chart.data,
      options: {
        xAxes: [{
          display: false
        }]
      }
    });
  }

  chart.populate();
  chart.show();
});

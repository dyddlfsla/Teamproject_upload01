// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';


var ctx = document.getElementById("myAreaChart");

$.ajax({
	type:"post",
	url:"/prj03/ps.do?method=areaChart",
	dataType:"json",
	success:function(data){
		ctx = document.getElementById("myAreaChart");
		//alert("호출:");
		//console.log(data.areachart);
		//console.log(data.areachart.lebels);
		//console.log(data.areachart.datas);
		var myLineChart = new Chart(ctx, {
			  type: 'line',
			  data: {
			    labels:data.areachart.labels,
			    datasets: [{
			      label: "건",
			      lineTension: 0.3,
			      backgroundColor: "rgba(2,117,216,0.2)",
			      borderColor: "rgba(2,117,216,1)",
			      pointRadius: 5,
			      pointHoverRadius: 5,
			      pointHitRadius: 50,
			      pointBorderWidth: 2,
			      data: data.areachart.datas
			    }],
			  },
			  options: {
			    scales: {
			      xAxes: [{
			        time: {
			          unit: 'date'
			        },
			        gridLines: {
			          display: false
			        },
			        ticks: {
			          maxTicksLimit: 7
			        }
			      }],
			      yAxes: [{
			        ticks: {
			          min: 5,
			          max: 50,
			          maxTicksLimit: 10
			        },
			        gridLines: {
			          color: "rgba(0, 0, 0, .125)",
			        }
			      }],
			    },
			    legend: {
			      display: false
			    }
			  }
			});		
	},
	error:function(err){
		console.log(err);
	}
});

/*
var labelsData = ['홍길동','김길동','신길동'];
//["Mar 1", "Mar 2", "Mar 3", "Mar 4", "Mar 5", "Mar 6", "Mar 7", "Mar 8", "Mar 9", "Mar 10", "Mar 11", "Mar 12", "Mar 13"]
//data ajax
var showData = [10000,20000,30000];
//[10000, 30162, 26263, 18394, 18287, 28682, 31274, 33259, 25849, 24159, 32651, 31984, 38451]
var myLineChart = new Chart(ctx, {
type: 'line',
data: {
labels:labelsData,
datasets: [{
  label: "Sessions",
  lineTension: 0.3,
  backgroundColor: "rgba(2,117,216,0.2)",
  borderColor: "rgba(2,117,216,1)",
  pointRadius: 5,
  pointBackgroundColor: "rgba(2,117,216,1)",
  pointBorderColor: "rgba(255,255,255,0.8)",
  pointHoverRadius: 5,
  pointHoverBackgroundColor: "rgba(2,117,216,1)",
  pointHitRadius: 50,
  pointBorderWidth: 2,
  data: showData,
}],
},
options: {
scales: {
  xAxes: [{
    time: {
      unit: 'date'
    },
    gridLines: {
      display: false
    },
    ticks: {
      maxTicksLimit: 7
    }
  }],
  yAxes: [{
    ticks: {
      min: 0,
      max: 40000,
      maxTicksLimit: 5
    },
    gridLines: {
      color: "rgba(0, 0, 0, .125)",
    }
  }],
},
legend: {
  display: false
}
}
});
*/

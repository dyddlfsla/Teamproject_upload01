// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';



var ctx = document.getElementById("myBarChart_PM");

$.ajax({ 
	type:"post",
	url:"/prj03/ps.do?method=bar_pmChart",
	dataType:"json",
	success:function(data){ 
		ctx = document.getElementById("myBarChart_PM");
		//alert(data.barchart.labels);
		//console.log(data.barchart.lebels);
		//console.log(data.barchart.datas);
		var myLineChart = new Chart(ctx, {
		  type: 'bar',
		  data: {
		    labels: data.pm_barchart.labels,
		    datasets: [{
		      label: "개",
		      backgroundColor: "rgba(2,117,216,1)",
		      borderColor: "rgba(2,117,216,1)",
		      data: data.pm_barchart.datas
		    }],
		  },
		  options: {
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'month'
		        },
		        gridLines: {
		          display: false
		        },
		        ticks: {
		          maxTicksLimit: 10,
		          fontSize:8
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          min: 0,
		          max: 10,
		          maxTicksLimit: 10
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
	},
	error:function(err){ 
		console.log(err);
	}
	
});

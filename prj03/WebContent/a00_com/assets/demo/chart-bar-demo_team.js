// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';



var ctx = document.getElementById("myBarChart");

$.ajax({ 
	type:"post",
	url:"/prj03/ps.do?method=barChart",
	dataType:"json",
	success:function(data){ 
		ctx = document.getElementById("myBarChart");
		//alert(data.barchart.labels);
		//console.log(data.barchart.lebels);
		//console.log(data.barchart.datas);
		var myLineChart = new Chart(ctx, {
		  type: 'bar',
		  data: {
		    labels: data.barchart.labels,
		    datasets: [{
		      label: "%",
		      backgroundColor: "rgba(2,117,216,1)",
		      borderColor: "rgba(2,117,216,1)",
		      data: data.barchart.datas
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
		          min: 10,
		          max: 100,
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

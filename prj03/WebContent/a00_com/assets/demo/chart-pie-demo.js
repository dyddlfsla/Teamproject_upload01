// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");

$.ajax({ 
	type:"post",
	url:"/prj03/ps.do?method=PmpieChart",
	dataType:"json",
	success:function(data){ 
		ctx = document.getElementById("myPieChart");
		var myPieChart = new Chart(ctx, {
			  type: 'pie',
			  data: {
			    labels: data.pmpiechart.labels,
			    datasets: [{
			      label:"건",
			      data: data.pmpiechart.datas,
			      backgroundColor: ['#007bff','#ffc107', '#28a745','#dc3545'],
			    }],
			  },
			});
	},
	errro:function(err){ 
		console.log(err);
	}
	
});



<?php
include('koneksidb.php');
$label = ["India","Japan","S.Korea","Turkey","Vietnam","Taiwan","Iran","Indonesia","Malaysia","Israel"];

for($covid = 1;$covid < 11;$covid++)
{
	$query = mysqli_query($conn,"select sum(totaldeaths) as totaldeaths from tb_covid19 where id_covid='$covid'");
	$row = $query->fetch_array();
	$jumlah_produk[] = $row['totaldeaths'];
}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Membuat Grafik Menggunakan Chart JS</title>
		<script type="text/javascript" src="Chart.js"></script>
	</head>
	<body>
		<div style="width: 800px; height: 400px; display: inline-block;">
			<canvas id="lineChart"></canvas>
		</div>

		<script>
			var ctx1 = document.getElementById("lineChart").getContext('2d');
			var lineChart = new Chart(ctx1, {
				type: 'line',
				data: {
					labels: <?php echo json_encode($label); ?>,
					datasets: [{
						label: 'Grafik Total Death Covid',
						data: <?php echo json_encode($jumlah_produk); ?>,
						borderColor: 'blue',
						fill: false
					}]
				},
				options: {
					scales: {
						y: {
							beginAtZero: true
						}
					}
				}
			});
		</script>
	</body>
</html>
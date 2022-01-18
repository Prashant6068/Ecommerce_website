@extends('layouts.app')

<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {
            'packages': ['corechart']
        });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable([
                ['Users', 'Role type'],
                <?php echo $details ?>
            ]);

            var options = {
                title: 'Sales Report'
            };
            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>
</head>
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="container border rounded shadow">
    <div id="piechart" style="width: 900px; height: 500px;"></div>
</div>
<style>
    .container {
        width: 500px;
        /* border: 1px solid black; */
        display: flex;
        margin-left: 500px;
        justify-content: flex-end;
    }
</style>
@stop
<!-- /.content-wrapper -->
<!-- left content -->
<div class="col-md-8">
	<ol class="breadcrumb">
		<li><i class="glyphicon glyphicon-home"></i></li>
		<li><a href="<?php echo base_url()?>">Home</a></li>
		<li><a href="#"><?php echo $title;?></a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-heading"><strong>LIHAT LOKASI</strong></div>
		<div class="panel-body">
			<h2><?php echo $data_set->name;?></h2>
			<hr>
			<p><?php echo $data_set->info;?></p>
			<div class="well" id="map" style="height:380px;"></div>
		</div>
	</div>
</div>

<!-- Maps -->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript">
	function initialize() {
	  var myLatlng = new google.maps.LatLng(<?php echo $data_set->latitude?>,<?php echo $data_set->langitude?>);
	  var mapOptions = {
	    zoom: 15,
	    center: myLatlng
	  }
	  var map = new google.maps.Map(document.getElementById('map'), mapOptions);

	  var marker = new google.maps.Marker({
	      position: myLatlng,
	      map: map,
	      title: 'Candi Sambisari!'
	  });
	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>
<div class="row">
	<div class="col-lg-12">
		<h3><?php echo $title;?></h3>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url()?>admin/dashboard">Dashboard</a></li>
			<li class="active">Lokasi Candi</li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">

		<div class="panel panel-info">
			<div class="panel-heading">Peta Lokasi Candi</div>
			<div class="panel-body">
				<div class="table-responsive">
					<div id="map" style="height:380px;"></div>
				</div>
				<hr>
				<?php echo form_open('admin/map',array('class'=>'form-horizontal'));?>
				<div class="form-group">
					<?php echo form_label('Latitude','latitude',array('class'=>'col-md-2 control-label'));?>
					<div class="col-md-3">
						<?php $latitude = isset($data_set) ? $data_set->latitude : '';?>
						<?php echo inputText('Map','latitude',$latitude,array('class'=>'form-control'))?>
					</div>
					<?php echo form_label('langitude','langitude',array('class'=>'col-md-2 control-label'));?>
					<div class="col-md-3">
						<?php $langitude = isset($data_set) ? $data_set->langitude : '';?>
						<?php echo inputText('Map','langitude',$langitude,array('class'=>'form-control'));?>
					</div>
				</div>
				<div class="form-group">
					<?php echo form_label('Nama','name',array('class'=>'col-md-2 control-label'));?>
					<div class="col-md-10">
						<?php $name = isset($data_set) ? $data_set->name : '';?>
						<?php echo inputText('Map','name',$name,array('class'=>'form-control','style'=>'width:79%'));?>
					</div>
				</div>
				<div class="form-group">
					<?php echo form_label('Informasi','info',array('class'=>'col-md-2 control-label'));?>
					<div class="col-md-10">
						<?php $info = isset($data_set) ? $data_set->info : '';?>
						<?php echo inputTextArea('Map','info',$info,array('rows'=>5,'class'=>'form-control','style'=>'width:80%;'))?>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<input type="hidden" name="id_map" value="<?php echo isset($data_set->id_map) ? $data_set->id_map : ''?>">
						<button type="reset" name="batal" class="btn btn-danger">Reset</button>
						<button type="submit" name="simpan" class="btn btn-info">Simpan</button>
					</div>
				</div>
				<?php echo form_close();?>
			</div>
		</div>
	</div>
</div>

<!-- Maps -->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript">
	function initialize() {
		var $latitude = document.getElementById('Map_latitude');
		var $langitude = document.getElementById('Map_langitude');
		var latitude = -7.762480;
		var langitude = 110.447043;
		var zoom = 13;
		
		var LatLng = new google.maps.LatLng(latitude, langitude);
		
		var mapOptions = {
			zoom: zoom,
			center: LatLng,
			panControl: false,
			zoomControl: false,
			scaleControl: true,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		}	
		
		var map = new google.maps.Map(document.getElementById('map'),mapOptions);
      
		
		var marker = new google.maps.Marker({
			position: LatLng,
			map: map,
			title: 'Geser Lokasi!',
			draggable: true
		});
		
		google.maps.event.addListener(marker, 'dragend', function(marker){
			var latLng = marker.latLng;
			$latitude.value = latLng.lat();
			$langitude.value = latLng.lng();
		});
		
		
	}
	initialize();

	$(document).ready(function(){
		$("#Map_latitude").val(-7.762834261027358);
		$("#Map_langitude").val(110.38574337301634);
	});
</script>
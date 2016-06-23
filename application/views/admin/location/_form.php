<?php echo form_open_multipart($form_action, array('class'=>'form-horizontal'));?>
<div class="panel panel-success">
	<div class="panel-heading">
		<h3 class="panel-title">Form Lokasi Sekitar</h3>
	</div>
	<div class="panel-body">
		<div class="form-group">
			<?php echo form_label('Nama','name',array('class'=>'col-md-2 control-label'));?>
			<div class="col-md-10">
				<?php $name = isset($data_set) ? $data_set->name : '';?>
				<?php echo inputText('Location','name',$name,array('class'=>'form-control','style'=>'width:45%;'))?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label('Alamat','alamat',array('class'=>'col-md-2 control-label'));?>
			<div class="col-md-10">
				<?php $alamat = isset($data_set) ? $data_set->alamat : '';?>
				<?php echo inputTextArea('Location','alamat',$alamat,array('rows'=>3,'class'=>'form-control','style'=>'width:45%;'))?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label('No Telelpon','no_telp',array('class'=>'col-md-2 control-label'));?>
			<div class="col-md-10">
				<?php $no_telp = isset($data_set) ? $data_set->no_telp : '';?>
				<?php echo inputText('Location','no_telp',$no_telp,array('class'=>'form-control','style'=>'width:45%;'))?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label('Email','email',array('class'=>'col-md-2 control-label'));?>
			<div class="col-md-10">
				<?php $email = isset($data_set) ? $data_set->email : '';?>
				<?php echo inputText('Location','email',$email,array('class'=>'form-control','style'=>'width:45%;'))?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label('Gambar','image',array('class'=>'col-md-2 control-label'));?>
			<div class="col-md-10">
				<?php $image = isset($data_set) ? $data_set->image : '';?>
				<?php echo form_upload('image',$image);?>
			</div>
		</div>
		<div class="form-group">
			<?php echo form_label('Deskripsi','description',array('class'=>'col-md-2 control-label'));?>
			<div class="col-md-10">
				<?php $description = isset($data_set) ? $data_set->description : '';?>
				<?php echo inputTextArea('Location','description',$description,array('rows'=>5,'class'=>'form-control','style'=>'width:80%;'))?>
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-12">
				<button type="reset" name="batal" class="btn btn-danger">Reset</button>
				<button type="submit" name="simpan" class="btn btn-info">Simpan</button>
			</div>
		</div>
	</div>
</div>
<?php echo form_close();?>
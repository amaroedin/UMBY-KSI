<?php echo form_open_multipart($form_action, array('class'=>'form-horizontal'));?>
<div class="panel panel-success">
	<div class="panel-heading">
		<h3 class="panel-title">Form Post Kategori</h3>
	</div>
	<div class="panel-body">
		<div class="form-group">
			<?php echo form_label('Nama','name',array('class'=>'col-md-2 control-label'));?>
			<div class="col-md-10">
				<?php $name = isset($data_set) ? $data_set->name : '';?>
				<?php echo inputText('PostCategory','name',$name,array('class'=>'form-control','style'=>'width:30%;'))?>
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
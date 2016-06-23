<div class="row">
	<div class="col-lg-12">
		<h3><?php echo $title;?></h3>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url()?>admin/dashboard">Dashboard</a></li>
			<li class="active">Lokasi Sekitar</li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<p><a href="<?php echo base_url()?>admin/location/create" class="btn btn-success" title="tambah data">Tambah Data</a></p>

		<div class="panel panel-info">
			<div class="panel-heading">Data Lokasi Sekitar</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th width="3%">No</th>
								<th width="5%">Aksi</th>
								<th width="15%">Gambar</th>
								<th>Nama</th>
								<th>Alamat</th>
								<th>No Telepon</th>
								<th>Email</th>
								<th>Website</th>
							</tr>
						</thead>
						<tbody>
							<?php if($total_data > 0) {?>
							<?php 	$no=1; foreach($data_obj as $row) {?>
							<tr>
								<td class="text-center"><?php echo $no;?></td>
								<td class="text-center">
									<a href="<?php echo base_url()?>admin/location/update/<?php echo $row->id_location;?>" title="edit"><i class="fa fa-pencil"></i></a>
									<a href="<?php echo base_url()?>admin/location/delete/<?php echo $row->id_location;?>" class="delete" title="delete"><i class="fa fa-trash-o"></i></a>
								</td>
								<td><img src="<?php echo base_url();?><?php echo get_image($row->image);?>" width="150"></td>
								<td><?php echo $row->name;?></td>
								<td><?php echo $row->alamat;?></td>
								<td><?php echo $row->no_telp;?></td>
								<td><?php echo $row->email;?></td>
								<td><?php echo $row->url_website;?></td>
							</tr>
							<?php 	$no++; }?>
							<?php }else{?>
							<tr>
								<td colspan="8"><?php echo data_empty;?></td>
							</tr>
							<?php }?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
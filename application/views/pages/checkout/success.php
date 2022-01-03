<div class="container">
	<div class="row mt-4">
		<div class="col">
			<div class="card">
				<h5 class="card-header">Checkout Berhasil</h5>	
				<div class="card-body">
					<h4><strong>Nomor Pesanan : <?= $content['invoice'] ?></strong></h4>
					<p>Terima kasih telah belanja.</p>
					<br>
					<p>Tolong lakukan pembayaran dengan prosuder berikut:</p>
					<ol>
						<li>Lakukan pembayaran ke akun <strong>BankXX 0123456789</strong></li>
						<li>Tambahkan informasi dengan nomor pesanan <strong><?= $content['invoice'] ?></strong></li>
						<li>Total pembayaran <strong>Rp. <?= number_format($content['total'], 0, ',', '.') ?></strong></li>
					</ol>
					<p>Jika anda telah melakukan pembayaran tolong kirim bukti pembayarannya dan untuk melanjutkan pembayaran lanjut <a href="<?= base_url('myorder/detail/' . $content['invoice']) ?>"> ke link ini</a></p>
					<a href="<?= base_url('home') ?>" class="btn btn-primary btn-sm">Kembali</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="show_commodity" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalLabel"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-lg-12">
            <label for="item_code"><b>Kode File</b></label>
            <input type="text" name="" class="form-control" id="item_code" placeholder="" disabled>
          </div>
        </div>
        <hr>
        <div class="row">
          <table class="table">
            <tr>
              <td style="width: 145px;">
                <b>Nama File</b>
              </td>
              <td style="width: 20px;">:</td>
              <td id="name"></td>
            </tr>
            <tr>
              <td>
                <b>Jenis File</b>
              </td>
              <td>:</td>
              <td id="commodity_location_id"></td>
            </tr>
          </table>
        </div>
        <hr>
        <div class="row">
          <div class="col-lg-6">
            <label for="brand"><b>File</b></label>
            <input type="text" name="" class="form-control" id="brand" placeholder="" disabled>
          </div>
          
          <div class="col-lg-6">
            <label for="date_of_purchase"><b>Tanggal Masuk</b></label>
            <input type="text" name="" class="form-control" id="date_of_purchase" placeholder="" disabled>
          </div>
        </div>
        <hr>
        <div class="row">
          <table class="table">
            <tr>
              <td style="width: 145px;">
                <b>Asal File</b>
              </td>
              <td style="width: 20px;">:</td>
              <td id="school_operational_assistance_id"></td>
            </tr>
            <tr>
              <td>
                <b>Keterangan</b>
              </td>
              <td>:</td>
              <td id="note"></td>
            </tr>
          </table>
        </div>
        <hr>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>
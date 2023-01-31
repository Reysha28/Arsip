<!-- Modal -->
<div class="modal fade" id="commodity_create_modal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Tambah Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="commodity_create">
          @csrf
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="item_code">Kode Arsip</label>
                <input type="text" name="item_code" class="form-control" id="item_code_create">
              </div>
            </div>

            <div class="col-lg-6">
              <div class="form-group">
                <label for="acquisition">Jenis Arsip</label>
                <select class="custom-select" id="school_operational_assistance_id_create">
                  <option selected>Pilih</option>
                  @foreach($school_operational_assistances as $school_operational_assistance)
                  <option value="{{ $school_operational_assistance->id }}">{{ $school_operational_assistance->name }}</option>
                  @endforeach
                </select>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="name">Nama File Arsip</label>
                <input type="text" class="form-control" id="name_create">
              </div>
            </div>

            <div class="col-lg-6">
              <div class="form-group">
                <label for="date_of_purchase">Tanggal Masuk</label>
                <input type="date" class="form-control" id="date_of_purchase_create">
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="location">Asal File Arsip</label>
                <select class="custom-select" id="commodity_location_id_create">
                  <option selected>Pilih</option>
                  @foreach($commodity_locations as $commodity_location)
                  <option value="{{ $commodity_location->id }}">{{ $commodity_location->name }}</option>
                  @endforeach
                </select>
              </div>
            </div>

            <div class="col-lg-6">
              <div class="form-group">
                <label for="condition">Kondisi</label>
                <select class="custom-select" id="condition_create">
                  <option selected>Pilih</option>
                  <option value="1">Umum</option>
                  <option value="2">Penting</option>
                  <option value="3">Rahasia</option>
                </select>
              </div>
            </div>
          </div>
          <hr>
          

          <div class="row">
            <div class="col-lg-12">
              <div class="form-group">
                <label for="note">Keterangan</label>
                <textarea class="form-control" id="note_create" rows="3"></textarea>
              </div>
            </div>

            <div class="col-lg-12">
              <div class="form-group">
                <label for="brand">File</label>
                <input class="form-control" id="brand_create" type="text" rows="3" required>
              </div>
            </div>
          </div>


          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
            <button type="submit" class="btn btn-primary">Tambah Data</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
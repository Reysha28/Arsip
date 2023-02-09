@extends('layouts.stisla.index', ['title' => 'Halaman Data User', 'page_heading' => 'Daftar User'])

@section('content')
<div class="card">

  @if ($errors->any())
    <div class="alert alert-danger alert-dismissible show fade">
      <div class="alert-body">
        <button class="close" data-dismiss="alert">
          <span>×</span>
        </button>
        {{$errors->first()}}
      </div>
    </div>
  @endif

  @if (session()->has('sukses'))
    <div class="alert alert-success alert-dismissible show fade">
      <div class="alert-body">
        <button class="close" data-dismiss="alert">
          <span>×</span>
        </button>
        {{session()->get('sukses')}}
      </div>
    </div>
  @endif

  <div class="row">
    <div class="col-lg-12">

      <button type="button" class="btn btn-primary float-right mt-3 mx-3" data-toggle="modal" data-target="#commodity_create_modal">
        <i class="fas fa-fw fa-plus"></i>
        Tambah Data
      </button>

      <!-- Button trigger modal
      <button type="button" class="btn btn-primary float-right mt-3 mx-3" data-toggle="modal" data-target="#excel_menu">
        Import
      </button> -->

    </div>
  </div>
  <div class="row px-3 py-3">
    <div class="col-lg-12">
      <div class="table-responsive">
        <table class="table table-bordered table-hover" id="datatable">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Nama</th>
              <th scope="col">Email</th>
              <th scope="col">Aksi</th>
            </tr>
          </thead>
          <tbody>
            @foreach($users as $user)
            <tr>
              <th scope="row">{{ $loop->iteration }}</th>
              <td>{{ Str::limit($user->name, 55, '...') }}</td>
              <td>{{ $user->email }}</td>
              <td class="text-center">
                <a data-id="{{ $user->id }}" class="btn btn-sm btn-info text-white show_modal" data-toggle="modal" data-target="#show_commodity" title="Lihat Detail">
                  <i class="fas fa-fw fa-info"></i>
                </a>
                <a data-id="{{ $user->id }}" class="btn btn-sm btn-success text-white swal-edit-button" data-toggle="modal" data-target="#edit_commodity" data-placement="top" title="Ubah data">
                  <i class="fas fa-fw fa-edit"></i>
                </a>
                <a data-id="{{ $user->id }}" class="btn btn-sm btn-warning text-white swal-edit2-button" data-toggle="modal" data-target="#edit_commodity2" data-placement="top" title="Ubah password">
                  <i class="fas fa-fw fa-key"></i>
                </a>
                <a data-id="{{ $user->id }}" class="btn btn-sm btn-danger text-white swal-delete-button" data-toggle="tooltip" data-placement="top" title="Hapus data">
                  <i class="fas fa-fw fa-trash-alt"></i>
                </a>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
@endsection

@push('modal')
@include('users.modal.show')
@include('users.modal.create')
@include('users.modal.edit')
@include('users.modal.edit2')
@include('users.modal.import')
@endpush

@push('js')
@include('users._script')
@endpush
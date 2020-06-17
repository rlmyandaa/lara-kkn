@extends('modules.layouts.app')

@section('content')


<div>
    <table class="table">
        <thead></thead>
        @foreach($data as $d)
        <tbody>

            <tr>
                <td style="width: 15%">Nama Kelompok</td>
                <td> {{ $d-> group_name}}</td>
            </tr>
            <tr>
                <td style="width: 15%">Lokasi Desa Penempatan</td>
                <td>{{ $d-> village_name}}</td>
            </tr>
            <tr>
                <td style="width: 15%">Total Anggota</td>
                <td>{{ $d-> member_count}}</td>
            </tr>
            <tr>
                <td style="width: 15%">Alamat Kantor Desa</td>
                <td>{{ $d-> village_center_address}}</td>
            </tr>
            <tr>
                <td style="width: 15%">Nama Kepala Desa</td>
                <td>{{ $d-> village_head_name}}</td>
            </tr>
            <tr>
                <td style="width: 15%">No. Telepon Kepala Desa</td>
                <td>{{ $d-> village_head_phone}}</td>
            </tr>
            @foreach($dosen as $m)
            <tr>
                <td style="width: 15%">Pembimbing Kelompok</td>
                <td>{{ $m-> name}}</td>
            </tr>
            <tr>
                <td style="width: 15%">No. Telepon Pembimbing</td>
                <td>{{ $m-> phone}}</td>
            </tr>
            @endforeach
            <tr>
                <td style="width: 15%">Pembimbing Babinsa</td>
                <td>{{ $d-> babinsa_name}}</td>
            </tr>
            <tr>
                <td style="width: 15%">No. Telepon Babinsa</td>
                <td>{{ $d-> babinsa_phone}}</td>
            </tr>
        </tbody>
        @endforeach
    </table>
    <a type="button" class="btn btn-primary" href="/dosen/student/detail/edit/{{ $d->unique_id }}">Edit Detail</a>
</div>



@endsection

@section('footer_scripts')
@endsection
@extends('modules.layouts.app')

@section('content')
<div>
    <div class="card">
        <div class="card-header">
            Daftar Kelompok
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-hover table-bordered">
                    <thead>
                        <th>No</th>
                        <th>Kelompok</th>
                        <th>Lokasi Desa</th>
                        <th>Program Kerja ACC</th>
                        <th>Proposal Pending</th>
                        <th>Option</th>
                    </thead>
                    <?php
                    $count = 0;
                    ?>
                    @foreach($data as $d)
                    <tbody>

                        <tr>
                            <td>
                                <?php
                                echo ($count = $count + 1);
                                ?>
                            </td>
                            <td>{{ $d->group_name }}</td>
                            <td>{{ $d->village_name }}</td>
                            <td>{{ $d->member_registered }}</td>
                            <td>
                                @if(is_null($d->token_registered))
                                <a type="button" class="btn btn-warning" href="/dosen/student/token/{{ $d->unique_id}}">Buat Token</a>
                                @else
                                <div style="color:green">
                                    {{ $d->token }}
                                </div>
                                @endif
                            </td>
                            <td>
                                <a type="button" class="btn btn-success" href="/dosen/student/detail/{{ $d->unique_id }}">Detail</a>
                                <a type="button" class="btn btn-danger" href="/dosen/student/r/{{ $d->id }}">Hapus</a>
                            </td>
                        </tr>

                    </tbody>
                    @endforeach

                </table>
            </div>
            <div>
                <a type="button" class="btn btn-primary" href={{ route('dosen.student-group-add') }}>Tambah Kelompok</a>
            </div>


        </div>
    </div>

</div>
@endsection
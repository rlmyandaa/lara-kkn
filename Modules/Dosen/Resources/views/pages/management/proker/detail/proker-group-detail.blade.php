@extends('modules.layouts.app')

@section('content')
<div>
    <div class="card">
        <div class="card-header text-center">
            @include('dosen::pages.management.nav.proker-nav')
        </div>

        <div class="card-body">
            <div>
                <div class="card">
                    <div class="card-header text-center" style="font-weight:bold;">
                        Detail Program Kerja Kelompok {{ $gname }}
                    </div>
                    <div class="card-body">
                        <div class="card">
                            <div class="card-header text-center" style="font-weight:bold;">
                                Daftar Program Kerja ACC
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                        <th>No</th>
                                        <th>Judul Proker</th>
                                        <th>Kategori</th>
                                        <th>Keterangan</th>
                                        <th>Option</th>

                                    </thead>
                                    <?php
                                    $count = 0;
                                    ?>
                                    <tbody>
                                        @foreach($dataAcc as $ls_a)
                                        <tr>
                                            <td>
                                                <?php
                                                echo ($count = $count + 1);
                                                ?>
                                            </td>
                                            <td>{{ $ls_a->proker_name }}</td>
                                            <td>{{ $ls_a->proker_category }}</td>
                                            <td>{{ $ls_a->proker_detail }}</td>
                                            <td>
                                                <a type="button" class="btn-sm btn-success" href="/student/proker/dla/{{ $ls_a->proker_filename }}">File Proker</a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <br />
                        <div class="card">
                            <div class="card-header text-center" style="font-weight:bold;">
                                Daftar Proposal Proker Pending
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                        <th>No</th>
                                        <th>Judul Proker</th>
                                        <th>Kategori</th>
                                        <th>Keterangan</th>
                                        <th>Option</th>
                                    </thead>
                                    <?php
                                    $count = 0;
                                    ?>
                                    <tbody>
                                        @foreach($dataPending as $ls_p)
                                        <tr>
                                            <td>
                                                <?php
                                                echo ($count = $count + 1);
                                                ?>
                                            </td>
                                            <td>{{ $ls_p->proker_name }}</td>
                                            <td>{{ $ls_p->proker_category }}</td>
                                            <td>{{ $ls_p->proker_detail }}</td>
                                            <td>
                                                <a type="button" class="btn-sm btn-success" href="/student/proker/dlp/{{ $ls_p->proker_filename }}">File Proker</a>
                                                <a type="button" class="btn-sm btn-warning" href="/student/proker/list/prm/{{ $ls_p->proker_uid }}">Batalkan</a>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <br />
                        <div class="card">
                            <div class="card-header">
                                Anggota Kelompok
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>No. Telepon</th>
                                    </thead>
                                    <?php
                                    $count = 0;
                                    ?>

                                    <tbody>
                                        @foreach($group_member as $md)
                                        <tr>
                                            <td>
                                                <?php
                                                echo ($count = $count + 1);
                                                ?>
                                            </td>
                                            <td>{{ $md->name }}</td>
                                            <td>{{ $md->phone }}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
    @endsection
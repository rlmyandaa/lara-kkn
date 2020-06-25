@extends('modules.layouts.app')

@section('content')
<div>
    <div class="card">
        <div class="card-header">
            @include('student::pages.proker.nav.proker-nav')
        </div>
        <div class="card-body">
            <div class="card">
                <div class="card-header text-center">
                    Pengumpulan Laporan Akhir KKN<br />
                    <div class="card">
                        <div class="card-header">
                            @include('student::pages.proker.final_report.nav.final_report-nav')
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead></thead>
                        <tbody>

                            <tr>
                                <td style="width: 40%; font-weight:bold;">Nama Kelompok</td>
                                <td>{{ $groupName }}</td>
                            </tr>
                            <tr>
                                <td style="width: 40%; font-weight:bold;">Desa Penempatan</td>
                                <td>{{ $groupLocation }}</td>
                            </tr>
                            <tr>
                                <td colspan="2"> </td>
                            </tr>
                            <tr>
                                <td class="text-center" style="width: 40%; font-weight:bold;" colspan="2">Anggota Kelompok</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table class="table table-bordered">
                                        <thead>
                                            <th style="width: 5%">
                                                No
                                            </th>
                                            <th style="width: 40%">
                                                Nama
                                            </th>
                                            <th style="width: 25%">
                                                NIM
                                            </th>
                                            <th style="width: 30%">
                                                Jurusan
                                            </th>
                                        </thead>
                                        <?php
                                        $count = 0;
                                        ?>
                                        <tbody>
                                            @foreach($member_data as $member_data)
                                            <tr>
                                                <td>
                                                    <?php
                                                    echo ($count = $count + 1);
                                                    ?>
                                                </td>
                                                <td>{{ $member_data->name }}</td>
                                                <td>{{ $member_data->nim }}</td>
                                                <td>{{ $member_data->faculty.('-').$member_data->major }}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </td>
                            </tr>

                            <tr>
                                <td style="width: 40%; font-weight:bold;">Nama Pembimbing</td>
                                <td>{{ $mentor }}</td>
                            </tr>
                            <tr>
                                <td colspan="2"> </td>
                            </tr>
                            <tr>
                                <td class="text-center" style="width: 40%; font-weight:bold;" colspan="2">Status Program Kerja</td>
                            <tr>
                                <td colspan="2">
                                    <table class="table table-bordered">
                                        <thead>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="width: 35%; font-weight:bold;">Jumlah Program Kerja : {{ $proker_count }} Program Kerja</td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="table table-bordered">
                                                        <thead>
                                                            <th style="width: 5%">
                                                                No
                                                            </th>
                                                            <th style="width: 40%">
                                                                Judul Program Kerja
                                                            </th>
                                                            <th style="width: 25%">
                                                                Kategori
                                                            </th>
                                                        </thead>
                                                        <?php
                                                        $count = 0;
                                                        ?>
                                                        <tbody>
                                                            @foreach($proker_data as $pd)
                                                            <tr>
                                                                <td>
                                                                    <?php
                                                                    echo ($count = $count + 1);
                                                                    ?>
                                                                </td>
                                                                <td> {{ $pd->proker_name }}</td>
                                                                <td> {{ $pd->proker_category }}</td>

                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            </tr>
                            <tr>
                                <td class="text-center" style="width: 40%; font-weight:bold;" colspan="2">Status Laporan Harian</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table class="table table-bordered">
                                        <thead>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="width: 35%">Jumlah Laporan Harian</td>
                                                <td>{{ $dailyReportCount }} Laporan</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 35%">Laporan Harian Terakhir</td>
                                                <td>{{ Carbon\Carbon::parse($dailyReportLast)->translatedFormat('d F Y') }}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 40%; font-weight:bold;">Status Laporan Akhir</td>
                            </tr>
                            <tr>
                                <td>
                                    <div>

                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <div class="alert alert-warning">
                            <form>
                                <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
                                <label for="vehicle1"> Dengan ini menyatakan laporan yang telah dibuat sudah benar dan segala kelengkapan data yang di submit telah sesuai.</label><br>

                            </form>
                        </div>
                        <a type="button" class="btn btn-primary">Serahkan Laporan</a>
                    </div>

                </div>
            </div>
        </div>


    </div>
</div>


@endsection
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
                    Laporan Akhir KKN<br />
                    <div class="card">
                        <div class="card-header">
                            @include('student::pages.proker.final_report.nav.final_report-nav')
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-header text-center">
                                    Status Pelaporan
                                </div>
                                <div class="card-body">
                                    <table class="table">
                                        <thead></thead>

                                        <tbody>

                                            <tr>
                                                <td style="width: 40%">Laporan Diajukan</td>
                                                @switch($rev_stat)
                                                @case(0)
                                                <td style="color: red;"> Belum Mengajukan</td>
                                                @break

                                                @default
                                                <td style="color: green;"> Sudah Diajukan</td>
                                                @break

                                                @endswitch

                                            </tr>
                                            <tr>
                                                <td style="width: 40%">Status Laporan</td>
                                                @switch($rev_stat)
                                                @case(0)
                                                <td style="color: red;"> Belum Mengajukan Laporan</td>
                                                @break
                                                @case(5)
                                                <td style="color: green;"> Laporan telah selesai.</td>
                                                @break
                                                @default
                                                <td style="color: orange;"> Sedang Proses / Revisi</td>
                                                @endswitch
                                            </tr>
                                            <tr>
                                                <td style="width: 40%">Status Revisi</td>
                                                @switch($rev_stat)
                                                @case(0)
                                                <td style="color: red;"> Belum Mengajukan Laporan</td>
                                                @break

                                                @case(1)
                                                <td style="color: orange;"> Laporan sedang ditinjau.</td>
                                                @break

                                                @case(2)
                                                <td style="color: orange;"> Revisi Diajukan, belum ditinjau.</td>
                                                @break

                                                @case(3)
                                                <td style="color: orange;"> Revisi Diajukan, sedang ditinjau.</td>
                                                @break

                                                @case(4)
                                                <td style="color: orange;"> Revisi selesai ditinjau, cek hasil tinjauan.</td>
                                                @break

                                                @case(5)
                                                <td style="color: green;"> Laporan telah selesai.</td>
                                                @break

                                                @default

                                                @endswitch

                                            </tr>
                                            


                                        </tbody>
                                        
                                        
                                    </table>
                                    @switch($rev_stat)
                                                @case(0)
                                                <a type="button" class="btn btn-primary" href={{ route('student.proker-list') }}>Upload Laporan</a>
                                                @break
                                                @case(4)
                                                <a type="button" class="btn btn-warning" href={{ route('student.proker-list') }}>Revisi</a>
                                                @break
                                                @default
                                                
                                                @break
                                        @endswitch
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-header text-center">
                                    Ringkasan Program Kerja Kelompok
                                </div>
                                <div class="card-body">
                                    <table class="table">
                                        <thead></thead>

                                        <tbody>

                                            <tr>
                                                <td style="width: 40%">Jumlah Program Kerja</td>
                                                <td>: {{ $prokerCount }} Program Kerja</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 40%">Jumlah Pelaporan Harian</td>
                                                <td>: {{ $dailyReportCount }} Laporan</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 40%">Tanggal Kegiatan Pelaporan Terakhir</td>
                                                <td>: {{ Carbon\Carbon::parse($dailyReportLast)->translatedFormat('d F Y') }}</td>
                                            </tr>

                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>



@endsection
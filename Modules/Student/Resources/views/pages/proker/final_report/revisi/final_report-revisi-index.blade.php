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
                    Revisi Laporan Akhir KKN<br />
                    <div class="card">
                        <div class="card-header">
                            @include('student::pages.proker.final_report.nav.final_report-nav')
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <th>No</th>
                            <th>Tanggal Submit</th>
                            <th>Status Revisi</th>
                            <th>Option</th>
                        </thead>
                        <?php
                        $count = 0;
                        ?>
                        <tbody>
                            @foreach($data as $data)
                            <tr>
                                <td>
                                    <?php
                                    echo ($count = $count + 1);
                                    ?>
                                </td>
                                <td>
                                    {{ $data->fr_submitted_date }}
                                </td>
                                @switch($data->fr_rev_stat)
                                @case(0)
                                <td style="color: red;"> Belum Mengajukan Laporan</td>
                                @break

                                @case(1)
                                <td style="color: orange;"> Laporan sedang ditinjau.</td>
                                @break

                                @case(2)
                                @if($data->fr_rev_submitted===NULL || $data->fr_rev_submitted==0)
                                <td style="color: orange;"> Revisi Diajukan, belum ditinjau.</td>
                                @endif
                                @if($data->fr_rev_submitted==1)
                                <td style="color: green;"> Revisi Diajukan</td>
                                @endif
                                @break

                                @case(3)
                                @if($data->fr_rev_submitted===NULL || $data->fr_rev_submitted==0)
                                <td style="color: orange;"> Revisi Diajukan, belum ditinjau.</td>
                                @endif
                                @if($data->fr_rev_submitted==1)
                                <td style="color: green;"> Revisi Diajukan</td>
                                @endif
                                @break

                                @case(4)
                                @if($data->fr_rev_submitted===NULL || $data->fr_rev_submitted==0)
                                <td style="color: orange;"> Revisi Diajukan, belum ditinjau.</td>
                                @endif
                                @if($data->fr_rev_submitted==1)
                                <td style="color: green;"> Revisi Diajukan</td>
                                @endif
                                @break

                                @case(5)
                                <td style="color: green;"> Laporan telah selesai.</td>
                                @break

                                @default
                                @endswitch
                                <td>
                                    <a type="button" class="btn btn-primary" href='/student/proker/final-report/dl/{{ $data->fr_uid }}'>File Laporan</a>
                                    @switch($data->fr_rev_stat)
                                    @case(4)
                                    <a type="button" class="btn btn-warning">Ajukan Revisi</a>
                                    @break
                                    @default
                                    @endswitch
                                    <a type="button" class="btn btn-primary" href='/student/proker/final-report/revisi/detail/{{ $data->fr_uid }}'>Detail</a>
                                </td>


                            </tr>
                            @endforeach

                        </tbody>

                    </table>
                </div>
            </div>
        </div>


    </div>
</div>


@endsection
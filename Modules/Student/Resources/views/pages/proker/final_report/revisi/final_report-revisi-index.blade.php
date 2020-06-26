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
                            <th>Revisi ke-</th>
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
                                    {{ $data->fr_rev_count}}
                                </td>
                                <td>
                                    {{ $data->fr_submitted_date }}
                                </td>
                                @if($data->fr_revised == 1)
                                <td style="color: orange;"> Revisi Diajukan</td>
                                @else
                                @switch($data->fr_rev_stat)                        
                                @case(2)
                                <td style="color: orange;"> Menunggu Tinjauan</td>
                                @break
                                @case(4)
                                <td style="color: orange;"> Revisi selesai ditinjau. Cek hasil tinjauan.</td>
                                @break

                                @case(5)
                                <td style="color: green;"> Laporan telah selesai.</td>
                                @break

                                @default
                                @endswitch
                                @endif

                                <td>
                                    @if ($data->fr_revised ==1)

                                    @else
                                    @switch($data->fr_rev_stat)
                                    @case(4)
                                    <a type="button" class="btn btn-primary" href='/student/proker/final-report/revisi/detail/{{ $data->fr_uid }}'>Detail</a>
                                    @break
                                    @default

                                    @break
                                    @endswitch
                                    @endif
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
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
                    <div class="card">
                        <div class="card-header text-center">
                            Form Pengajuan Laporan Akhir KKN
                        </div>
                        <div class="card-body">
                            @if($msg ?? '' == 1)
                            <div class="alert alert-success">
                                Proposal Berhasil Diajukan.
                            </div>
                            @endif
                            <div class="col-lg-8 mx-auto my-5">
                                <form action="{{ route('student.proker-final_report-submission_upload') }}" method="POST" enctype="multipart/form-data">
                                    {{ csrf_field() }}

                                    <div class="form-group">
                                        <b>File Laporan Akhir (.pdf), max 5 MB</b><br />
                                        <input type="file" name="file">
                                    </div>

                                    <input type="submit" value="Upload" class="btn btn-primary">
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>




@endsection
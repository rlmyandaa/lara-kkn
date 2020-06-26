<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use phpDocumentor\Reflection\Types\Boolean;
use Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use DateTime;
use Illuminate\Support\Str;


class FinalReportController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Private Function
    |--------------------------------------------------------------------------
    */
    private function checkFR($id): bool
    {
        $check = DB::table('app-final_report')->where('group_uid', $id)->count();
        if ($check == 0) {
            return false;
        } else {
            return true;
        }
    }

    private function checkFR_rev($id): int
    {
        $stat = DB::table('app-final_report')->where('group_uid', $id)->orderBy('fr_rev_count','DESC')->first();
        if ($stat->fr_rev_stat === NULL) {
            $stat = 0;
            return $stat->fr_rev_stat;
        } else {
            return $stat->fr_rev_stat;
        }
    }

    private function getProkerCount($id): int
    {
        $count = DB::table('app-proker-list')->where('group_uid', $id)->count();
        if ($count === NULL) {
            $count = 0;
            return $count;
        } else {
            return $count;
        }
    }

    private function getDailyReportCount($id): int
    {
        $count = DB::table('app-daily_report')->where('group_uid', $id)->count();
        return $count;
    }

    private function getLastDailyReport($id)
    {
        $check = DB::table('app-daily_report')->orderBy('report_date', 'DESC')->first();
        $date = $check->report_date;
        return $date;
    }


    /*
    |--------------------------------------------------------------------------
    | Public Function
    |--------------------------------------------------------------------------
    */
    public function status()
    {
        $user = Auth::user();
        $user_id = $user['id'];
        $gid = DB::table('app-faculty_student')->where('student_id', $user_id)->value('group_uid');

        $fr_stat = 0;
        $rev_stat = 0;
        if (self::checkFR($gid)) {
            $fr_stat = 1;
            $rev_stat = self::checkFR_rev($gid);
        }


        $prokerCount = self::getProkerCount($gid);
        $dailyReportCount = self::getDailyReportCount($gid);
        $dailyReportLast = self::getLastDailyReport($gid);


        return view('student::pages.proker.final_report.final_report-status', compact('rev_stat', 'prokerCount', 'dailyReportCount', 'dailyReportLast'));
    }


    public function submission()
    {
        return view('student::pages.proker.final_report.upload_form.final_report-submission');
    }


    public function submission_upload(Request $request)
    {
        $validation = $request->validate([
            'file'  =>  'required|file|mimes:pdf|max:5120'
        ]);

        $user = Auth::user();
        $user_id = $user['id'];
        $check = DB::table('app-faculty_student')->where('student_id', $user_id)->value('group_uid');
        $gname = DB::table('app-faculty_student-group')->where('unique_id', $check)->value('group_name');


        $dateS = Carbon::now()->addHours(7)->toDateTimeString();
        $dateF = str_replace(':', '_', $dateS);


        $file = $validation['file'];
        $fileName = $gname . '-FinalReport' . '-REV-0_(' . $dateF . ')-' . $file->getClientOriginalName();

        $path = $file->storeAs('FinalReport/' . $gname, $fileName);
        $visibility = Storage::getVisibility($path);
        $rn = Str::random(35);
        while (DB::table('app-final_report')->where('fr_uid', $rn)->exists()) {
            $rn = Str::random(35);
        }

        DB::table('app-final_report')->insert([
            'group_uid' => $check,
            'fr_rev_stat' => 1,
            'fr_filename' => $fileName,
            'fr_submitted_date' => $dateS,
            'fr_uid' => $rn,
            'fr_rev_count' => 0
        ]);

        $msg = 1;
        return view('student::pages.proker.final_report.upload_form.final_report-submission', ['msg' => $msg]);
    }

    public function revision()
    {
        $user = Auth::user();
        $user_id = $user['id'];
        $check = DB::table('app-faculty_student')->where('student_id', $user_id)->value('group_uid');
        $data = DB::table('app-final_report')->where('group_uid', $check)->orderBy('fr_rev_count', 'DESC')->get();
 
        return view('student::pages.proker.final_report.revisi.final_report-revisi-index', ['data' => $data]);
    }


    

    public function getFile($id)
    {

        $user = Auth::user();
        $user_id = $user['id'];
        $check = DB::table('app-faculty_student')->where('student_id', $user_id)->value('group_uid');
        $gname = DB::table('app-faculty_student-group')->where('unique_id', $check)->value('group_name');

        $fileName = DB::table('app-final_report')->where('fr_uid', $id)->value('fr_filename');
        $path = ('FinalReport/').$gname.('/').$fileName;
        return Storage::download($path);
    }

    public function final_submission1()
    {
        $user = Auth::user();
        $user_id = $user['id'];
        $gid = DB::table('app-faculty_student')->where('student_id', $user_id)->value('group_uid');

        $final_report_acc = DB::table('app-final_report')->where('fr_uid', $id)->value('fr_acc_stat');
        $prokerCount = self::getProkerCount($gid);
        $dailyReportCount = self::getDailyReportCount($gid);
        $dailyReportLast = self::getLastDailyReport($gid);
    }

    public function final_submission()
    {
        $user = Auth::user();
        $user_id = $user['id'];
        $gid = DB::table('app-faculty_student')->where('student_id', $user_id)->value('group_uid');

        $groupName = DB::table('app-faculty_student-group')->where('unique_id', $gid)->value('group_name');
        $groupLocation = DB::table('app-faculty_student-group')->where('unique_id', $gid)->value('village_name');

        $mentor_id = DB::table('app-faculty_student-group')->where('unique_id', $gid)->value('group_mentor_id');
        $mentor = DB::table('app-faculty_dosen')->where('dosen_id', $mentor_id)->value('name');

        $member_data = DB::table('app-faculty_student')->where('group_uid', $gid)->orderBy('name', 'asc')->get();
        
        $proker_data = DB::table('app-proker-list')->where('group_uid', $gid)->get();
        $proker_count = DB::table('app-faculty_student-group')->where('unique_id', $gid)->value('proker_acc_count');
        $dailyReportCount = self::getDailyReportCount($gid);
        $dailyReportLast = self::getLastDailyReport($gid);

        return view('student::pages.proker.final_report.final_submission.final_report-final_submission',compact('member_data','mentor','groupName','groupLocation','proker_data', 'proker_count', 'dailyReportCount', 'dailyReportLast'));
    }


    public function revision_detail($id)
    {
        echo "<script type='text/javascript'>
                alert('In Progress');
            </script>";
    }
}

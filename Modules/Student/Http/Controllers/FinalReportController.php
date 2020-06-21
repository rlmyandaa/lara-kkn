<?php

namespace Modules\Student\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use phpDocumentor\Reflection\Types\Boolean;
use Auth;
use Illuminate\Support\Facades\DB;

class FinalReportController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Private Function
    |--------------------------------------------------------------------------
    */
    private function checkFR($id):bool {
        $check = DB::table('app-final_report')->where('group_uid', $id)->count();
        if ($check == 0 ) {
            return false;
        }
        else {
            return true;
        }
    }

    private function checkFR_rev($id):int {
        $stat = DB::table('app-final_report')->where('group_uid', $id)->value('fr_rev_stat');
        if ($stat === NULL){
            $stat = 0;
            return $stat;
        }
        else {
            return $stat;
        }

    }

    private function getProkerCount($id):int {
        $count = DB::table('app-proker-list')->where('group_uid', $id)->count();
        if ($count === NULL){
            $count = 0;
            return $count;
        }
        else {
            return $count;
        }

    }

    private function getDailyReportCount($id):int {
        $count = DB::table('app-daily_report')->where('group_uid', $id)->count();
        return $count;
    }
    
    private function getLastDailyReport($id) {
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
        if (self::checkFR($gid)){
            $fr_stat = 1;
            $rev_stat = self::checkFR_rev($gid);
        }


        $prokerCount = self::getProkerCount($gid);
        $dailyReportCount = self::getDailyReportCount($gid);
        $dailyReportLast = self::getLastDailyReport($gid);


        return view('student::pages.proker.final_report.final_report-status',compact('fr_stat','rev_stat','prokerCount','dailyReportCount','dailyReportLast'));
    }

    




}

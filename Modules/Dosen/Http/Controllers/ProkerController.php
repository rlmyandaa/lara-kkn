<?php

namespace Modules\Dosen\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\DB;
use Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Input;

class ProkerController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        $data = DB::table('app-faculty_student-group')->get();
        $pendingList = DB::table('app-proker-propose_pending')->get();
        $groupListName = array();
        foreach ($pendingList as $d) {
            $temp = DB::table('app-faculty_student-group')->where('unique_id', $d->group_uid)->value('group_name');
            array_push($groupListName, $temp);
        }

        return view('dosen::pages.management.proker.proker-index', compact('data', 'pendingList', 'groupListName'));
    }

    public function detail($id)
    {
        $data = DB::table('app-proker-propose_pending')->where('proker_uid', $id)->first();
        $gid = $data->group_uid;
        $fileName = encrypt($data->proker_filename);

        $gname = DB::table('app-faculty_student-group')->where('unique_id', $gid)->value('group_name');
        return view('dosen::pages.management.proker.detail.proker-pending-detail', compact('data', 'gname', 'fileName'));
    }

    public function getFilePending($id)
    {
        $fileName = decrypt($id);
        $path = 'Proker/Proposed-Pending/' . $fileName;
        return Storage::download($path);
    }

    


    public function proposal_decide(Request $request)
    {
        $uid = $request->proker_uid;
        switch ($request->input('action')) {
            case 'accept':
                Self::acc($uid, $request);
                return redirect()->route('dosen.management-proker');
                break;

            case 'returned':
                Self::declined($uid, $request);
                return redirect()->route('dosen.management-proker-detail', ['id' => $uid]);
                break;
        }
    }

    private function acc($uid, $request)
    {
        $data = DB::table('app-proker-propose_pending')->where('proker_uid', $uid)->first();
        DB::table('app-proker-list')->insert([
            'group_uid' => $data->group_uid,
            'proker_name' => $data->proker_name,
            'proker_category' => $data->proker_category,
            'proker_detail' => $data->proker_detail,
            'proker_filename' => $data->proker_filename,
            'proker_uid' => $data->proker_uid,
            'proker_submit_date' => $data->proker_submit_date,

        ]);

        DB::table('app-proker-propose_pending')->where('proker_uid', $uid)->delete();

        $pendingCount = DB::table('app-faculty_student-group')->where('unique_id', $data->group_uid)->value('proker_pending_count');
        $accCount = DB::table('app-faculty_student-group')->where('unique_id', $data->group_uid)->value('proker_acc_count');
        DB::table('app-faculty_student-group')->where('unique_id', $data->group_uid)->update([
            'proker_pending_count' => $pendingCount-1,
            'proker_acc_count' => $accCount+1
        ]);

        $oldPath = 'Proker/Proposed-Pending/' . $data->proker_filename;
        $newPath = 'Proker/Accepted/' . $data->proker_filename;
        Storage::move($oldPath, $newPath);
        Storage::setVisibility($newPath, 'public');
    }
    private function declined($uid, $request)
    {
        if ($request->proker_comment === NULL || $request->proker_comment == '') {
            echo "<script type='text/javascript'>
                alert('Mohon isikan kolom komentar jika akan menolak program kerja.');
            </script>";
            $path = ('/dosen/proker/detail/') . $uid;
        

        } else {
            DB::table('app-proker-propose_pending')->where('proker_uid', $uid)->update([
                'proker_decline_stat' => 1,
                'proker_dosen_comment' => $request->proker_detail
            ]);
        }
    }

    public function group_detail($id)
    {
        $dataPending = DB::table('app-proker-propose_pending')->where('group_uid',$id)->get();
        $dataAcc = DB::table('app-proker-list')->where('group_uid',$id)->get();
        $group_member = DB::table('app-faculty_student')->where('group_uid',$id)->get();
        $gname = DB::table('app-faculty_student-group')->where('unique_id',$id)->value('group_name');
        return view('dosen::pages.management.proker.detail.proker-group-detail',compact('dataAcc','dataPending','group_member','gname'));

    }



}

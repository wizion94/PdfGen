<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Certificate extends Model
{
    use HasFactory;
    public $fillable = ['cert_number', 'course_name', 'user_name', 'final_date','qr_code_url'];


    public function getNextId() {
        $statement = DB::select("show table status like 'certificates'");
        return $statement[0]->Auto_increment;
    }
}

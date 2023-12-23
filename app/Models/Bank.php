<?php

namespace App\Models;

use Carbon\Carbon;
use Eloquent as Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Facades\Date;

class Bank extends Model
{

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'user_id' => 'required|exists:users,id',
    ];
    public $table = 'banks';

    public $fillable = [
        'ac_number',
        'bank_name',
        'name_as_per_bank',
        'ifsc_code',
        'branch_name',
        'user_id'
    ];
    

    /**
     * @return BelongsTo
     **/
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

}

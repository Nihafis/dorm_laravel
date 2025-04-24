<?php

namespace App\Models;

use App\Models\PayLogModel;
use Illuminate\Database\Eloquent\Model;


class PayModel extends Model
{
    protected $table = 'pays';
    protected $fillable = ['name', 'status', 'remark'];
    public $timestamps = false;

    public function payLogs()
    {
        return $this->hasMany(PayLogModel::class, 'pay_id', 'id');
    }
}

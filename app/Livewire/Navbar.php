<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class Navbar extends Component
{

    public $user_name;
    public $showModal = false;
    public $showModalEdit = false;
    public $username;
    public $password;
    public $password_confirm;
    public $errorUsername;
    public $errorPassword;

    public $saveSuccess =false;

    public function editProfile()
    {
        $this->showModalEdit = true;
        $user = User::find(session()->get('user_id'));
        $this->username = $user->name;
        $this->saveSuccess = false;
        
    }

    public function updateProfile()
    {
        if ($this->username == '') {
            $this->addError('username', 'กรุณากรอกชื่อผู้ใช้');
            return;
        }
        if ($this->password == '') {
            $this->addError('password', 'กรุณากรอกรหัสผ่านใหม่');
            return;
        }
        if ($this->password != $this->password_confirm) {
            $this->addError('password_confirm', 'รหัสผ่านไม่ตรงกัน');
            return;
        }

        $user = User::find(session()->get('user_id'));
        $user->name = $this->username;
        $user->password = $this->password ?? $user->password;
        $user->save();

        // $this->showModalEdit = false;
        $this->saveSuccess = true;

        // $this->clearError();
    }
    public function mount()
    {
        $this->user_name = session()->get('user_name');
    }

    public function logout()
    {
        session()->flush();
        return redirect('/');
    }

    public function render()
    {
        return view('livewire.navbar');
    }
}

<div class="navbar">
    <div class="flex items-center justify-between">
        <div>
            <i class="fa-solid fa-user me-2"></i>
            <span class="username">{{ $user_name }} </span>
        </div>
        <div>
            <button wire:click="showModal = true" class="border border-orange-400 text-orange-400 px-6 py-3 rounded-2xl">
                <span>ออกจากระบบ</span>
                <i class="fa-solid fa-sign-out-alt ms-2"></i>
            </button>
            <button wire:click="editProfile"
                class="border border-orange-400 text-orange-400 px-6 py-3 rounded-2xl">
                <span>แก้ไขข้อมูล</span>
                <i class="fa-solid fa-user-edit ms-2"></i>
            </button>
        </div>
    </div>
    <x-modal wire:model="showModal" maxWidth="sm" title="ออกจากระบบ">
        <div class="text-center">
            <div><i class="fa-solid fa-question text-red-500 text-5xl"></i></div>
            <div class="text-3xl font-bold text-gray-800 mt-3">ออกจากระบบ</div>
            <div class="text-gray-800 mt-3 text-2xl">คุณต้องการออกจากระบบหรือไม่</div>
        </div>
        <div class="flex justify-center mt-6 pb-4">
            <button class="btn-danger mr-2" wire:click="logout">
                <i class="fa-solid fa-check ms-2"></i>
                <span>ยืนยัน</span>
            </button>
            <button class="btn-secondary" wire:click="showModal = false">
                <i class="fa-solid fa-xmark"></i>
                <span>ยกเลิก</span>
            </button>
        </div>
    </x-modal>
    <x-modal wire:model="showModalEdit" maxWidth="sm" title="แก้ไขข้อมูลส่วนตัว">
        @if ($errors->any())
            <div class="alert-danger">
                @foreach ($errors->all() as $error)
                    <div>{{ $error }}</div>
                @endforeach
            </div>
        @endif
        <div class="">
            <form wire:submit="updateProfile">
                <div class="form-group">
                    <label for="username">ชื่อผู้ใช้</label>
                    <input type="text" class="form-control" wire:model="username">
                </div>
                <div class="form-group">
                    <label for="password">รหัสผ่านใหม่</label>
                    <input type="password" class="form-control" wire:model="password">
                </div>
                <div class="form-group">
                    <label for="password_confirm">ยืนยันรหัสผ่านใหม่</label>
                    <input type="password" class="form-control" wire:model="password_confirm">
                </div>
                <div class="flex justify-center gap-2 mt-6 pb-4">
                    <button class="btn-primary" type="submit"> 
                        <i class="fa-solid fa-check mr-1"></i>
                        <span>ยืนยัน</span>
                    </button>
                    <button class="btn-secondary" wire:click="showModalEdit = false">
                        <i class="fa-solid fa-xmark mr-1"></i>
                        <span>ยกเลิก</span>
                    </button>
                </div>
            </form>

        </div>
        @if ($saveSuccess)
            <div class="alert-success">
                <i class="fa-solid fa-check"></i>
                <span>บันทึกข้อมูลสำเร็จ</span>
            </div>
        @endif
    </x-modal>
</div>

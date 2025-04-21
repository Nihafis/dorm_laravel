<div>
    <div class="content-header">
        ข้อมูลสถานประกอบการ
    </div>

    <form wire:submit="save">
        <div class="flex gap-3">
            <div class="w-1/3">
                <div>
                    <label for="company_name">ชื่อสถานประกอบการ</label>
                    <input type="text"class="form-control bg-white" wire:model="name">
                </div>
            </div>
            <div class="w-1/3">
                <div>
                    <label for="company_name">ที่อยู่</label>
                    <input type="text"class="form-control bg-white" wire:model="address">
                </div>

            </div>
            <div แclass="w-1/3">
                <div>
                    <label for="company_name">เบอร์โทรศัพท์</label>
                    <input type="text"class="form-control bg-white" wire:model="phone">
                </div>

            </div>
        </div>
        <div class="mt-3">
            <label for="tax_code">รหัสประจำตัวผู้เสียภาษี</label>
            <input type="text" class="form-control bg-white" wire:model="tax_code">
        </div>

        <div class="mt-3">
            @if ($logoUrl)
                <img src="{{ $logoUrl }}" alt="Logo" class="w-16 h-16 mb-3 rounded-md shadow-lg">
            @endif
            <label for="tax_code">โลโก้</label>
            <input type="file" class="form-control bg-white" wire:model="logo">
        </div>

        <button type="submit" class="btn btn-primary mt-3">
            <i class="fa-solid fa-check mr-2"></i> บันทึกข้อมูล
        </button>
        @if ($flashMessage)
            <div class="mt-3 alert alert-success">
                <i class="fa fa-check mr-2"></i>

                {{ $flashMessage }}
            </div>
        @endif
    </form>
</div>

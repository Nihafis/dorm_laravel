<div>
    <div class="content-header">ผุู้เข้าพัก</div>
    <div class="content-body">
        <button class="btn-info" wire:click="openModal">
            <i class="fa fa-plus mr-2"></i>
            เพิ่มผู้เข้าพัก
        </button>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th class="text-center">ชื่อ</th>
                    <th class="text-center">เบอร์โทร</th>
                    <th class="text-center">วันที่เข้าพัก</th>
                    <th class="text-center">วันที่ออกพัก</th>
                    <th class="text-center">ประเถทการพัก</th>
                    <th class="text-center">หมายเหตุ</th>
                    <th withd="230px"></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($customers as $customer)
                    <tr>
                        <td class="text-center">{{ $customer->name }}</td>
                        <td class="text-center">{{ $customer->phone }}</td>
                        <td class="text-center">{{ $customer->room->name }}</td>
                        <td class="text-center">{{ date('d/m/Y', strtotime($customer->created_at)) }}</td>
                        <td class="text-center">{{ $customer->stay_type == 'm' ? 'เดือน' : 'วัน' }}</td>
                        <td class="text-center">{{ $customer->remark }}</td>
                        <td>
                            <button class="btn-info" wire:click="openModalMove({{ $customer->id }})">
                                <i class="fa fa-exchange"></i>
                            </button>
                            <button class="btn-info" wire:click="openModalEdit({{ $customer->id }})">
                                <i class="fa fa-edit "></i>
                            </button>
                            <button class="btn-danger" wire:click="openModalDelete({{ $customer->id }})">
                                <i class="fa fa-trash "></i>
                            </button>
                        </td>

                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <x-modal wire:model="showModal" title="เพิ่มผู้เข้าพัก">
        <div class="flex gap-2">
            <div class="w-1/2">
                <label for="name">ชื่อ</label>
                <input type="text" class="form-control" wire:model="name">
            </div>
            <div class="w-1/2">
                <label for="phone">เบอร์โทร</label>
                <input type="text" class="form-control" wire:model="phone">
            </div>
        </div>
        <div class="flex gap-2 mt-3">
            <div class="w-1/2">
                <label for="room_id">ห้อง</label>
                <select class="form-control" wire:model="roomId">
                    <option value="">เลือกห้อง</option>
                    @foreach ($rooms as $room)
                        <option value="{{ $room->id }}">{{ $room->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="w-1/2">
                <label for="created_at">วันที่เข้าพัก</label>
                <input type="date" class="form-control" wire:model="createdAt">
            </div>
            <div class="w-1/2">
                <label for="stay_type">ประเถทการพัก</label>
                <select class="form-control" wire:model="stayType">
                    <option value="d">รายวัน</option>
                    <option value="m">รายเดือน</option>
                </select>
            </div>
        </div>
        <div class="mt-3">ที่อยู่</div>
        <textarea class="form-control" wire:model="address"></textarea>
        <div class="mt-3">หมายเหตุ</div>
        <textarea class="form-control" wire:model="remark"></textarea>
        <div class="mt-3 text-center">
            <button class="btn-success" wire:click="save">
                <i class="fa fa-save mr-2"></i>
                บันทึก</button>
            <button class="btn-secondary" wire:click="closeModal">
                <i class="fa fa-times mr-2"></i>
                ยกเลิก</button>
        </div>
    </x-modal>

    <x-modal-confirm showModalDelete="showModalDelete" title="ยกเลิกผู้เข้าพัก" wire:click="delete"
        clickCancel="closeModalDelete" clickConfirm="delete" text="คุณต้องการยกเลิกผู้เข้าพักหรือไม่">
        <div class="text-center">
            <i class="fa fa-trash mr-2"></i>
            ยกเลิกผู้เข้าพัก
        </div>
    </x-modal-confirm>
    <x-modal wire:model="showModalMove" title="ย้ายห้องพัก">
        <div>ห้องใหม่</div>
        <select class="form-control" wire:model="roomIdMove">
            <option value="">เลือกห้อง</option>
            @foreach ($rooms as $room)
                <option value="{{ $room->id }}">{{ $room->name }}</option>
            @endforeach
        </select>
        <div class="mt-3 text-center">
            <button class="btn-success" wire:click="move">
                <i class="fa fa-exchange"></i>
                ย้ายห้อง
            </button>
            <button class="btn-secondary" wire:click="closeModalMove">
                <i class="fa fa-times"></i>
                ยกเลิก
        </div>
    </x-modal>
</div>

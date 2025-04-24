<div>
    <div class="content-header">
        <div class="flex justify-between">
            <div>ห้องพัก</div>
            <div>ทั้งหมด <strong>{{ $rooms->count() }}</strong> ห้อง</div>
        </div>
    </div>
    <div class="content-body">
        <button class="btn-info" wire:click="openModal">
            <i class="fa fa-plus mr-2"></i>
            เพิ่มห้อง
        </button>
        <table class="table table-bordered mt-4">
            <thead>
                <tr>
                    <th class="text-left">ห้องพัก</th>
                    <th class="text-right" width="150px">ค่าเช่าต่อวัน</th>
                    <th class="text-right" width="150px">ค่าเช่าต่อเดือน</th>
                    <th width="130px"></th>
                </tr>
            </thead>

            <tbody>
                @foreach ($rooms as $room)
                    <tr>
                        <td class="text-left">{{ $room->name }}</td>
                        <td class="text-right">{{ number_format($room->price_per_day) }}</td>
                        <td class="text-right">{{ number_format($room->price_per_month) }}</td>
                        <td class="text-center">
                            <button class="btn-edit" wire:click="openModalEdit({{ $room->id }})">
                                <i class="fa fa-pencil mr-2"></i>
                            </button>
                            <button class="btn-delete" wire:click="openModalDelete({{ $room->id }})">
                                <i class="fa fa-times mr-2"></i>
                            </button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <x-modal wire:model="showModal" title="ห้องพัก" maxWidth="xl">
        @if ($errors->any())
            <div class="alert-danger">
                @foreach ($errors->all() as $error)
                    <div>{{ $error }}</div>
                @endforeach
            </div>
        @endif
        <div>
            <h1 class="text-xl text-red-500 ">สร้างห้องพักแบบจำนวนมากในครั้งเดียว</h1>
        </div>
        <div class="flex gap-5 mt-3">
            <div class="w-1/2">
                <label for="">จากหมายเลข</label>
                <input type="text" class="form-control" wire:model="from_number">
            </div>
            <div class="w-1/2">
                <label for="">ถึงหมายเลข</label>
                <input type="text" class="form-control" wire:model="to_number">
            </div>
            <div class="w-1/2">
                <label for="">ค่าเช่าต่อวัน</label>
                <input type="text" class="form-control" wire:model="price_per_day">
            </div>
            <div class="w-1/2">
                <label for="">ค่าเช่าต่อเดือน</label>
                <input type="text" class="form-control" wire:model="price_per_month">
            </div>
        </div>
        <div class="mt-5 text-center pb-3">
            <button class="btn-success" wire:click="createRoom">
                <i class="fa fa-check mr-2"></i>
                สร้างห้อง
            </button>
            <button class="btn-danger" wire:click="showModal = false">
                <i class="fa fa-times mr-2"></i>
                ยกเลิก
            </button>
        </div>
    </x-modal>

    <x-modal wire:model="showModalEdit" title="แก้ไขห้องพัก" maxWidth="xl">
        <div>
            <label for="">ห้องพัก</label>
            <input type="text" class="form-control" wire:model="name">
        </div>
        <div>
            <label for="">ค่าเช่าต่อวัน</label>
            <input type="text" class="form-control" wire:model="price_day">
        </div>
        <div>
            <label for="">ค่าเช่าต่อเดือน</label>
            <input type="text" class="form-control" wire:model="price_month">
        </div>
        <div class="mt-5 text-center pb-3">
            <button class="btn-success" wire:click="updateRoom">
                <i class="fa fa-check mr-2"></i>
                บันทึก
            </button>
            <button class="btn-danger" wire:click="showModalEdit = false">
                <i class="fa fa-times mr-2"></i>
                ยกเลิก
            </button>

        </div>
    </x-modal>

    <x-modal-confirm showModalDelete="showModalDelete" title="ลบห้องพัก"
        text="คุณแน่ใจที่จะลบห้องพัก {{ $nameForDelete }} หรือไม่" clickConfirm="deleteRoom({{ $id }})"
        clickCancel="showModalDelete = false" />

</div>

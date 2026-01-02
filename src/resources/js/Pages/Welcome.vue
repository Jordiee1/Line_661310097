<template>
    <div class="welcome-page">
        <div v-if="isLoading">
            <p>Loading...</p>
        </div>
        <!-- end div loading -->
        <div v-if="!isLoading && !isRegistered">
            <div class="bg-red">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 d-flex align-items-center gap-3 p-3">
                            <img src="/images/point-button.png">
                            <div>
                                <p class="text-sm text-white m-0 t-0">ยินดีต้อนรับ</p>
                                <h2 class="text-base text-white">ลงทะเบียนสมาชิก</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row g-3 mt-3">
                    <div class="col-12">
                        <label>ชื่อ-นามสกุล</label>
                        <input type="text" class="form-control" v-model="name">
                        <span class="text-xs text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                    </div>
                    <div class="col-12">
                        <label>อีเมล</label>
                        <input type="text" class="form-control" v-model="email">
                        <span class="text-xs text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                    </div>
                    <div class="col-12">
                        <label>เบอร์โทร</label>
                        <input type="text" class="form-control" v-model="phone">
                        <span class="text-xs text-danger" v-if="errors.phone">{{ errors.phone[0] }}</span>
                    </div>
                    <div class="col-12 text-center">
                        <button class="btn btn-success w-100" v-if="!isSending" @click="registerMember()">ลงทะเบียนสมาชิก</button>
                        <button class="btn btn-success w-100" v-else>กำลังบันทึกข้อมูล...</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end div register -->
         <div v-if="!isLoading && isRegistered">
            <div class="bg-red">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 d-flex align-items-center gap-3 p-3">
                            <img :src="store.lineProfile.pictureUrl" style="border-radius: 100%; width: 100px;">
                            <div>
                                <p class="text-sm text-white m-0 t-0">ยินดีต้อนรับ</p>
                                <h2 class="text-base text-white"> {{ store.member.name }}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 d-flex justify-content-center">
                            <div class="member-card mt-2">
                                <img src="/images/member-card-1.jpg" class="img-fluid"/>
                                <div class="member-qr" @click="openModal()">
                                    <i class="fa-solid fa-qrcode"></i>
                                </div>
                                <p class="m-0 text-xs text-white member-no-label">Member no.</p>
                                <p class="m-0 text-xs text-white member-no">{{ store.member.code }}</p>
                                <p class="m-0 text-xs text-white member-valid-label">Valid till</p>
                                <p class="m-0 text-xs text-white member-valid">{{ store.member.expire_date }}</p>
                            </div>
                        </div>
                        <div class="col-12">
                            <button class="btn-scan-qr mt-3" @click="scanQrCode()">
                                <i class="fa-solid fa-expand me-2"></i>  สแกน QR Code สะสมคะแนน
                            </button>
                        </div>
                        <div class="col-12 position-relative">
                            <p class="text-lg text-white mt-3 mb-0">{{ store.member.points }} / 60 คะแนน</p>
                            <div class="progress mt-1">
                                <div class="progress-bar" :style="{width: `${ (store.member.points / 60) * 100}%`}">
                                    <img src="/images/point-button.png" class="img-fluid" :style="{left: progressBarPointIcon}">
                                </div>
                            </div>
                            <p class="text-xs text-white">สะสมอีก {{ store.member.points===0 ? 60:60-store.member.points }} คะแนน เพื่อเลื่อนขั้นเป็นระดับ SILVER</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- end div profile -->
         <div v-if="!isLoading && isRegistered">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <h3 class="text-lg mt-4 mb-3">กิจกรรมของเรา</h3>
                    </div>
                    <div class="col-12">
                        <div class="card-event">
                            <div class="d-flex justify-content-between align-items-center pb-3">
                                <p class="text-lg text-white mb-0">ทานครบ 15 ครั้งฟรี 1 ครั้ง</p>
                                <div class="count-box">{{ store.member.eat_points }}/15</div>
                            </div>
                            <div class="position-relative">
                                <div class="progress">
                                    <div class="progress-bar" :style="{ width: progressBarFree }">
                                        <img src="/images/point-button.png" class="img-fluid" :style="{ left: progressBarFreeIcon }">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <Modal ref="modalRef">
                <template #default>
                <div class="p-4 d-flex flex-column align-items-center">
                <h2 class="text-xxl">{{ store.member.name }}</h2>
                <div class="bg-red text-white text-sm mt-3 mb-3 rounded-4 w-50 p-1">
                    <i class="fa-solid fa-crown me-2"></i> MEMBER
                </div>
                <p class="text-base m-0">{{ store.member.phone }}</p>
                <p class="text-base m-0">กรุณาแสดง QR code</p>
                <p class="text-base">ให้แก่พนักงานเพื่อสะสมคะแนน</p>
                <qrcode-vue
                    :value="store.member.code"
                    :size="150"
                />
                <p class="text-xs">หมายเลขสมาชิก : {{ store.member.code }}</p>
                </div>
                </template>
            </Modal>

            <Navigation/>

        </div>
        <!-- end div event -->
    </div>
</template>

<script setup>
    import { onMounted,ref,computed } from 'vue';
    import {useLineAuthStore} from '@/stores/lineAuthStore';
    import axios from 'axios';
    import Modal from '../components/Modal.vue';
    import QrcodeVue from 'qrcode.vue';
    import Navigation from '../components/Navigation.vue'

    const store = useLineAuthStore();

    const isRegistered = ref(false);
    const isLoading = ref(false);
    const isSending = ref(false);
    const name = ref('');
    const email = ref('');
    const phone = ref('');
    const errors = ref({ name: [], email: [], phone: [] });

    onMounted(async ()=>{
        await store.initLiffAndLogin('2008798232-ZBKFvD9V')
        if (store.isLoggedIn){
            await getMember()
        }
    })

    const getMember = async () => {
    const response = await axios.post('/api/member', {
        lineId: store.lineId,
    })
    if (response.data.isRegistered) {
        store.setMember(response.data.member)
        isRegistered.value = true
    }
    isLoading.value = false
    }

    const registerMember = async () => {
    isSending.value = true
    errors.value = { name: [], email: [], phone: [] }
    const response = await axios.post('/api/member/register', {
        lineId: store.lineId,
        name: name.value,
        email: email.value,
        phone: phone.value,
    })
    if (response.data.code===200) {
        store.setMember(response.data.member)
        isRegistered.value = true
    }else{
        errors.value = response.data.errors
    }
    isSending.value = false
    }

const calculateProgress = (points,goal,minus = 0) => {
   if (points === 0) return '0%';
   const percentage = (points / goal) * 100;
   return `${Math.min(percentage, 100) - minus}%`;
}


const progressBarPointIcon = computed(() => {
   return calculateProgress(store.member.points,60,1);
})


const progressBarFree = computed(() => {
   return calculateProgress(store.member.eat_points,15);
})


const progressBarFreeIcon = computed(() => {
   return calculateProgress(store.member.eat_points,15,1);
})

const modalRef = ref(null)
const openModal = () => {
    modalRef.value?.open()
}

 const scanQrCode = async () => {
   const qrCode = await store.scanQrCode()
	const response = await axios.post('/api/redeem', {
   lineId: store.lineId,
   qrCode: qrCode,
})
if (response.data.code===200) {
   await getMember()
   alert('คุณได้รับคะแนนแล้ว')
}

   }



</script>

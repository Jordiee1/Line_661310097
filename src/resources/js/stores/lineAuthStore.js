import { defineStore } from 'pinia'
import liff from '@line/liff'

export const useLineAuthStore = defineStore('lineAuth', {
    state: () => ({
        isLoggedIn: false,
        lineProfile: null,
        member:null,
    }),

    getters: {
        displayName: (state) => state.lineProfile?.displayName || '',
        pictureUrl: (state) => state.lineProfile?.pictureUrl || '',
        lineId: (state) => state.lineProfile?.userId || '',
    },

    actions: {
        async initLiffAndLogin(liffId) {
            try {
                await liff.init({ liffId })

                if (!liff.isLoggedIn()) {
                    liff.login()
                } else {
                    this.lineProfile = await liff.getProfile()
                    this.isLoggedIn = true
                }
            } catch (error) {
                console.error('LIFF login error:', error)
            }
        },
        setMember(memberData) {
            this.member = memberData
        },
        async scanQrCode() {
            try {
                const result = await liff.scanCodeV2()
                return result.value
            } catch (error) {
                if (error.code === 'UNAUTHORIZED') {
                    throw new Error('กรุณาอนุญาตให้เข้าถึงกล้อง')
                } else if (error.code === 'EXCEPTION') {
                    throw new Error('ยกเลิกการสแกน')
                }
                console.error('Scan QR code error:', error)
                throw error
            }
        },
    },
    persist: true,
})


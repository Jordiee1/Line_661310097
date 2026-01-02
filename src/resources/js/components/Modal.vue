<template>
    <div
        class="modal"
        tabindex="-1"
        ref="modalEl"
    >
        <div class="modal-dialog modal-dialog-centered ms-auto me-auto" style="width: 325px;">
            <div class="modal-content">
                <div class="modal-body">
                    <slot></slot>
                    <div>
                        <button type="button" class="btn btn-secondary w-100" @click="close">ปิด</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
    import { ref, onMounted, onBeforeUnmount } from 'vue'
    const modalEl = ref(null)
    let modalInstance = null
    const open = () => modalInstance?.show()
    const close = () => modalInstance?.hide()

    onBeforeUnmount(() => {
        if (modalInstance) {
            modalInstance.dispose()
        }
    })

    onMounted(async () => {
        const { Modal } = await import('bootstrap')
        if (modalEl.value) {
            modalInstance = new Modal(modalEl.value)
        }
    })

    defineExpose({ open, close })
</script>

<style scoped lang="scss">

</style>

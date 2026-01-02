<template>
   <nav class="navbar fixed-bottom">
        <ul class="nav nav-justified w-100">
            <li class="nav-item">
                <a class="nav-link" href="/" :class="{'active':currentPath==='/'}">
                    <i class="fa-regular fa-house"></i>
                    <span>หน้าหลัก</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/reward" :class="{'active':currentPath==='/reward'}">
                    <i class="fa-solid fa-gift"></i>
                    <span>รางวัลของฉัน</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profile" :class="{'active':currentPath==='/profile'}">
                    <i class="fa-regular fa-user"></i>
                    <span>หน้าโปรไฟล์</span>
                </a>
            </li>
        </ul>
    </nav>
</template>

<style scoped lang="scss">
   .navbar{
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    background: linear-gradient( #b9c0c9, #b9c0c9,#b9c0c9);
    a{
        color: #80808080;
        display: flex;
        flex-direction: column;
        align-items: center;
        i{
            font-size: 1.25rem;
            margin-bottom: 0.2rem;
            padding: 0.5rem 1rem;
            border-radius: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
        span{
            font-size: 0.725rem;
        }
        &.active{
            i{
                font-size: 1rem;
                background-color: #e70014;
                color: #fff;
            }
            span{
                color:#000;
            }
        }
    }
   }
</style>

<script setup>
    import { ref } from 'vue';

    const currentPath = ref(window.location.pathname);

</script>

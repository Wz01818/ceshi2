<template>
  <div class="wrapper">
    <div style="margin: 200px 0;padding:40px;">
      本系统是一个在线OA办公系统,适合中小企业的办公使用
    </div>
  </div>
</template>

<script>
export default {
  name: "FrontHome",
  data() {
    return {
      imgs: [
          '../assets/404.png',
      ],
      files: []
    }
  },

  methods: {

  }
}
</script>

<style scoped>
.wrapper {
  background: url("../../assets/home.png");
  width: 50%;
  height: 80%;
  position: fixed;
  background-size: 100% 100%;
}
</style>

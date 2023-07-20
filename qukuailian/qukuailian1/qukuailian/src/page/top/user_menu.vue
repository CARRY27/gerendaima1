<template>
  <div class="layout-nav-left">
    <MenuItem name="1" to="/user_home">
    <Icon type="ios-paper" />首页
    </MenuItem>
    <MenuItem name="2" to="/user_assist" target="_blank">
    <Icon type="logo-hackernews" />元~助力
    </MenuItem>
    <MenuItem name="3" to="/user_publicInfo">
    <Icon type="ios-information-circle" />信息公开
    </MenuItem>
    <MenuItem name="4" to="/user_qa">
    <Icon type="md-help" />问题答疑
    </MenuItem>
    <MenuItem name="5" to="/user_project">
    <Icon type="md-help" />慈善项目
    </MenuItem>
    <MenuItem name="6" to="/user_volunteer">
    <Icon type="md-help" />志愿者
    </MenuItem>

  </div>
</template>

<script>
export default {
  methods: {
    info: function () {
      console.log("fdsf");
    }
  }
};
</script>

<style>
.layout-nav-left {
  /* width: 600px; */
  margin: 0 auto;
  position: absolute;
  left: 120px;
}
</style>

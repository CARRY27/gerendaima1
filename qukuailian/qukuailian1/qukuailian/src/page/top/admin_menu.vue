<template>
  <div class="layout-nav-left">
    <MenuItem name="1" to="/admin_home">
      <Icon type="ios-paper" />首页
    </MenuItem>
    <Submenu name="2">
      <template slot="title">
        <Icon type="md-cube" />基金会管理
      </template>
      <MenuGroup title="管理">
        <MenuItem name="2-1" to="/admin/admin_foundation_handle">未审核</MenuItem>
        <MenuItem name="2-2" to="/admin/admin_foundation_isHandle">已审核</MenuItem>
      </MenuGroup>
    </Submenu>

    <Submenu name="3">
      <template slot="title">
        <Icon type="md-hackernews" />募捐项目管理
      </template>
      <MenuGroup title="管理">
        <MenuItem name="3-1" to="/admin/admin_project_handle">未审核</MenuItem>
        <MenuItem name="3-2" to="/admin/admin_project_isHandle">已审核</MenuItem>
      </MenuGroup>
    </Submenu>
    <MenuItem name="4" to="/admin/admin_other">
      <Icon type="md-help" />其他
    </MenuItem>
  </div>
</template>

<script>
export default {};
</script>

<style>
.layout-nav-left {
  /* width: 600px; */
  margin: 0 auto;
  position: absolute;
  left: 150px;
}
</style>
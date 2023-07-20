<template>
  <div class="container">
    <Row :gutter="30">
      <Col :span="6">
      <aside>
        <Menu theme="light" active-name="1" style="width:100%">
          <MenuGroup title="志愿服务">
            <MenuItem name="1">
            <Icon type="md-remove" />
            志愿者注册
            </MenuItem>
            <MenuItem name="2">
            <Icon type="md-remove" />
            志愿服务动态
            </MenuItem>
            <MenuItem name="3">
            <Icon type="md-remove" />
            志愿者风采
            </MenuItem>
            <MenuItem name="4">
            <Icon type="md-remove" />
            政策法规
            </MenuItem>
          </MenuGroup>
          <MenuGroup title="项目推荐">
            <MenuItem name="5">
            <div class="recommend">
              <div class="recommendItem">
                <div>
                  <img width="100%" src="http://file.chinacharityfederation.org/Image/20160325/20160325092036_3732.jpg" alt="">
                </div>
                <p>慈善文化进校园项目</p>
              </div>
              <div class="recommendItem">
                <div>
                  <img width="100%" src="http://file.chinacharityfederation.org/Image/20160325/20160325092036_3732.jpg" alt="">
                </div>
                <p>慈善文化进校园项目</p>
              </div>
              <div class="recommendItem">
                <div>
                  <img width="100%" src="http://file.chinacharityfederation.org/Image/20160325/20160325092036_3732.jpg" alt="">
                </div>
                <p>慈善文化进校园项目</p>
              </div>
              <div class="recommendItem">
                <div>
                  <img width="100%" src="http://file.chinacharityfederation.org/Image/20160325/20160325092036_3732.jpg" alt="">
                </div>
                <p>慈善文化进校园项目</p>
              </div>
            </div>
            </MenuItem>
          </MenuGroup>
          <MenuGroup title="我要捐赠">
            <MenuItem name="6">
            <div class="wantDonation">
              <div class="wantDonationItem">
                <div>
                  <img width="100%" src="http://www.chinacharityfederation.org/static/a01358c5-befc-4f81-9c85-48b42fa78b35/m49/static/images/wyjz1.png" alt="">
                </div>
                <div>
                  <p>在线捐赠</p>
                  <p>ONLINE DONATION</p>
                </div>
              </div>
              <div class="wantDonationItem">
                <div>
                  <img width="100%" src="http://www.chinacharityfederation.org/static/a01358c5-befc-4f81-9c85-48b42fa78b35/m49/static/images/wyjz2.png" alt="">
                </div>
                <div>
                  <p>捐赠方式</p>
                  <p>DONATION METHOD</p>
                </div>
              </div>
              <div class="wantDonationItem">
                <div>
                  <img width="100%" src="http://www.chinacharityfederation.org/static/a01358c5-befc-4f81-9c85-48b42fa78b35/m49/static/images/wyjz3.png" alt="">
                </div>
                <div>
                  <p>捐赠查询</p>
                  <p>DONATION QUERY</p>
                </div>
              </div>

            </div>
            </MenuItem>
          </MenuGroup>
        </Menu>
        <div class="codeBar">
          <div class="codeBarbox">
            <img width="100%" src="https://res-img.n.gongyibao.cn/uploads/a01358c5-befc-4f81-9c85-48b42fa78b35/20200702/ba9564f234ee4f2b8628f42ab9d5706e.jpg">
            <p>欢迎关注中华慈善总会官方微信</p>
          </div>
        </div>
      </aside>
      </Col>
      <Col :span="18">
      <main class="showInfo">

        <h3 class="text-center">中华慈善总会志愿者库第一批人选公示情况</h3>
        <Divider />
        <div class="calener">
          <p>
            <Icon size="20" type="md-calendar" />
            <span> 2021-09-22 10:41</span>
          </p>
          <p>
            <span>来源：本站</span>
          </p>
        </div>
        <div class="infoText">
          <p>
            为推动志愿服务工作，我会于2021年6月启动志愿者招募工作。截至2021年8月27日，共收到124人提交的申请。
            根据《中华慈善总会志愿者招募与管理使用办法》并综合考虑申请人所在行业（信息类和医疗类优先）、地域（我会会员单位所在地优先）、单位（社会团体、事业单位和学校优先）和专业特长（志愿服务需求优先），我会选定了15个地区的80位申请人作为我会志愿者库第一批志愿者。
            现将名单公示如下（排名不分先后）：
          </p>
          <img width="100%" src="https://res-img.n.gongyibao.cn/uploads/a01358c5-befc-4f81-9c85-48b42fa78b35/20210922/0cf5a448ffa14c44a7bc5ebc79ad9a44.png" alt="">
        </div>
      </main>
      </Col>
    </Row>

  </div>
</template>

<script>
export default {
  name: "user_volunteer"
}
</script>

<style scoped>
.container {
  padding: 20px 0;
  width: 90%;
  margin: 0 auto;
}
.calener {
  display: flex;
  justify-content: center;
}
.calener p {
  margin: 0 20px;
}
.text-center {
  text-align: center;
}
.infoText {
  line-height: 2;
}
.infoText p {
  text-indent: 2em;
}
.recommend {
  max-height: 300px;
  overflow-y: scroll;
}
.recommend .recommendItem,
.wantDonationItem {
  display: flex;
  justify-content: space-between;
  color: #333 !important;
}
.recommend .recommendItem:not(:last-child),
.wantDonation .wantDonationItem:not(:last-child) {
  margin-bottom: 20px;
}
.recommend .recommendItem div {
  border: 1px solid #ccc;
  padding: 5px;
  flex: 0 0 40%;
}
.recommend .recommendItem p {
  flex: 0 0 60%;
  padding: 10px 0 0 20px;
}
.wantDonation .wantDonationItem {
  justify-content: center;
  padding: 2rem 0;
  box-shadow: 0px 4px 4px rgb(0 0 0 / 15%);
}
.wantDonation .wantDonationItem div {
  padding: 0 1rem;
}
.codeBar{
  padding: 14px 24px;
}
.codeBar .codeBarbox{
  text-align: center;
  border: 1px solid #ccc;
  padding-bottom: 1rem;
}

/deep/.ivu-menu-item-group-title {
  text-align: center;
  background-color: #dd2020;
  color: #fff;
  border-radius: 10px;
}
/deep/.ivu-menu-vertical .ivu-menu-item:hover,
.ivu-menu-vertical .ivu-menu-submenu-title:hover {
  color: #dd2020 !important;
}
/deep/.ivu-menu-item-active {
  color: #dd2020 !important;
  background: transparent !important;
}
/deep/.ivu-menu-light.ivu-menu-vertical
  .ivu-menu-item-active:not(.ivu-menu-submenu):after,
/deep/.ivu-menu-vertical.ivu-menu-light:after {
  display: none !important;
}
</style>

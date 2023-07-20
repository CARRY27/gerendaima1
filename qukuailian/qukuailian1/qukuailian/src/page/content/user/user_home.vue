<template>
  <div class="index">
    <div class="search">
      <div>
        <Input v-model="project_name" placeholder="输入项目名" style="width: 500px" />
        <Button type="error" @click="search">Search</Button>
      </div>
      <List item-layout="vertical">
        <!-- <a href="/user_donate" target="_blank"> -->
        <ListItem v-for="item in list" :key="item.title">
          <div @click="detail(item.id)">
            <ListItemMeta :title="'编号:'+item.id+'      '+item.name" :description="item.foundation_name" />
          </div>
          <div @click="detail(item.id)">项目时间:{{item.begin_time}}到{{item.end_time}}</div>
          <template slot="action">
            <li>
              <div @click="detail(item.id)">
                <Icon type="ios-bookmark-outline" />
                {{'受捐次数:'+item.donate_count}}
              </div>
            </li>
            <li>
              <div @click="detail(item.id)">
                <Icon type="ios-flag-outline" />
                {{'优先级:'+item.level}}
              </div>
            </li>
            <li>
              <div @click="detail(item.id)">
                <Icon type="ios-chatbubbles-outline" />
                {{'评论数:'+item.comment_count}}
              </div>
            </li>
          </template>

          <template slot="extra">
            <div @click="detail(item.id)">
              <!-- <img :src="'http://127.0.0.1:2333/ipfs/'+item.img" style="width: 280px;height:150px" /> -->
              <img :src="'http://'+host+':2333/ipfs/'+item.img" style="width: 280px;height:150px" />
            </div>
          </template>
        </ListItem>
        <!-- </a> -->
      </List>
      <Page :total="totalCount" show-total :page-size="pageSize" :current="currentPage" on-change="pageChage" />
    </div>
    <div class="homeContainer">
      <Carousel loop>
        <CarouselItem>
          <div class="demo-carousel">
            <img width="100%" src="https://res-img.n.gongyibao.cn/uploads/a01358c5-befc-4f81-9c85-48b42fa78b35/20200721/cb668a7dcc8c4ded899d334c1c4fe58e.jpg" alt="">
          </div>
        </CarouselItem>
        <CarouselItem>
          <div class="demo-carousel">2</div>
        </CarouselItem>
        <CarouselItem>
          <div class="demo-carousel">3</div>
        </CarouselItem>
        <CarouselItem>
          <div class="demo-carousel">4</div>
        </CarouselItem>
      </Carousel>
      <div class="container">
        <Row :gutter="20">
          <Col span="12">
          <div class="newsLeft">
            <div class="title">
              <div class="text">
                <span>N</span>
                <div class="textPro">
                  <span>ews</span>
                  <div>
                    <span>新闻资讯</span>
                  </div>
                </div>
              </div>
              <span>
                <Icon type="ios-add" />
                更多
              </span>
            </div>
            <Carousel autoplay loop>
              <CarouselItem>
                <div class="demo-carousel">
                  <img width="100%" height="330px" src="https://res-img.n.gongyibao.cn/uploads/a01358c5-befc-4f81-9c85-48b42fa78b35/20220929/822d47e667554ea986778fb32dd889c3.jpg" alt="">
                </div>
              </CarouselItem>
              <CarouselItem>
                <div class="demo-carousel">2</div>
              </CarouselItem>
              <CarouselItem>
                <div class="demo-carousel">3</div>
              </CarouselItem>
              <CarouselItem>
                <div class="demo-carousel">4</div>
              </CarouselItem>
            </Carousel>
          </div>
          </Col>
          <Col span="12">
          <Tabs>
            <TabPane label="总会资讯" name="name1">
              <div class="newsItem" v-for="i in 4" :key="i">
                <Row>
                  <Col :span="4">
                  <div class="left">
                    <h2>17</h2>
                    <span>2022-10</span>
                  </div>
                  </Col>
                  <Col :span="20">
                  <div class="right">
                    <h4><b>中华慈善总会招聘信息</b></h4>
                    <p>
                      “要想富，先修路”，这句老百姓口口相传的朴素话语已经成为乡村经济发展的共识。近年来，随着我国经济社会的不断发展，以及美丽乡村、
                    </p>
                  </div>
                  </Col>
                </Row>
              </div>
            </TabPane>
            <TabPane label="通知公告" name="name2">通知公告</TabPane>
            <TabPane label="会员动态" name="name3">会员动态</TabPane>
            <TabPane label="慈善聚焦" name="name4">慈善聚焦</TabPane>
          </Tabs>
          </Col>

        </Row>
      </div>
      <div class="projectConta">
        <div class="container">
          <Carousel dots="none" loop>
            <CarouselItem>
              <Row :gutter="20">
                <Col :span="6" v-for="item in 8" :key="item">
                <div class="carItem">
                  <Card>
                    <div style="text-align:center">
                      <img width="100%" src="https://dev-file.iviewui.com/stJXDnKhL5qEBD0dHSDDTKbdnptK6mV5/large">
                      <h3>A high quality UI Toolkit based on Vue.js</h3>
                    </div>
                  </Card>
                </div>

                </Col>
              </Row>
            </CarouselItem>
            <CarouselItem>
              <div class="demo-carousel">2</div>
            </CarouselItem>
            <CarouselItem>
              <div class="demo-carousel">3</div>
            </CarouselItem>
            <CarouselItem>
              <div class="demo-carousel">4</div>
            </CarouselItem>
          </Carousel>
        </div>
      </div>
      <div class="donation">
        <div class="container">
          <Row>
            <Col :span="6">
            <div class="donationText">
              <h3>人民币捐款账户：</h3>
              <p>开户单位：中华慈善总会</p>
              <p>账号：1105 0110 3689 0966 6666</p>
              <p>开户行：中国建设银行北京外国语大学支行</p>
              <h3>现场捐款：</h3>
              <p>北京市西城区二龙路甲33号新龙大厦七层</p>
            </div>
            </Col>
            <Col :span="6">
            <div class="donationText">
              <h3>外币捐款账户：</h3>
              <p>开户单位：中华慈善总会</p>
              <p>开户银行：中国银行总行营业部</p>
              <p>地址：北京市复兴门内大街1号</p>
              <p>账号：778350015925</p>
              <p>银行国际代码：BKCHCNBJ</p>
            </div>
            </Col>
            <Col :span="8">
            <!--滚动表格-->
            <section style="overflow: hidden;">
              <!--增加一个表头-->
              <h4 class="DTitle">
                <span class="DName">捐赠人</span>
                <span class="Dmounch">捐赠金额</span>
                <span class="DTime">捐赠时间</span>
                <span class="Dproject">捐赠项目</span>
              </h4>
              <!--滚动的列表-->
              <vue-seamless-scroll :data="donationList" class="auto-scorll-table" :class-option="defaultOption">
                  <ul class="Dcontent">
                    <li v-for="(item,index) in donationList" :key="index">
                      <span>{{item.name}}</span>
                      <span>{{item.price}}</span>
                      <span>{{item.time}}</span>
                      <span>{{item.project_name}}</span>
                    </li>
                  </ul>
              </vue-seamless-scroll>
            </section>
            </Col>
            <Col :span="4">
            <div class="btns">
              <Button type="error">我要捐赠</Button>
              <Button type="error">我要查询</Button>
              <Button type="error">我要开票</Button>
            </div>
            </Col>
          </Row>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data () {
    return {
      currentPage: 1,
      totalCount: 20,
      pageSize: 5,
      project_name: "",
      list: null,
      host: window.location.hostname,
      donationList: [
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
        {
          name: '白菜邦子',
          price: '￥100',
          time: '10-9',
          project_name: '中华慈善总会紧急'
        },
      ],
      defaultOption: {
        step: 0.2, // 数值越大速度滚动越快
        limitMoveNum: 1, // 开始无缝滚动的数据量 this.dataList.length
        hoverStop: true, // 是否开启鼠标悬停stop
        direction: 1, // 0向下 1向上 2向左 3向右
        openWatch: true, // 开启数据实时监控刷新dom
        singleHeight: 0, // 单步运动停止的高度(默认值0是无缝不停止的滚动) direction => 0/1
        singleWidth: 0, // 单步运动停止的宽度(默认值0是无缝不停止的滚动) direction => 2/3
        waitTime: 1000 // 单步运动停止的时间(默认值1000ms)
      }
    };
  },
  created () {
    this.getAllProjectBasicInfo();
  },
  methods: {
    search () {
      console.log("project_name:" + this.project_name);
      this.getAllProjectBasicInfo();
    },
    getAllProjectBasicInfo () {
      this.$api.get(
        "cfs/donor/getAllProjectBasicInfo",
        {
          currentPage: this.currentPage,
          pageSize: this.pageSize,
          project_name: this.project_name
        },
        response => {
          if (response.status >= 200 && response.status < 300) {
            var data = response.data;
            if (data.type == 1) {
              var list = data.list;
              for (var i in list) {
                list[i].begin_time = this.toString(
                  new Date(list[i].begin_time)
                );
                list[i].end_time = this.toString(new Date(list[i].end_time));
                console.log("name:" + list[i].foundation_name);
              }
              this.list = list;
              this.totalCount = data.totalCount;
            }
          }
        }
      );
    },
    detail (id) {
      // console.log("id:" + id);
      // this.$router.push({ name: "user_donate", params: { id: id } });
      //新开界面 params传参
      let routeUrl = this.$router.resolve({
        name: "user_projectDetail",
        params: { project_id: id }
      });
      window.open(routeUrl.href, "_blank");
    },
    pageChage (currentPage) {
      this.currentPage = currentPage;
      this.getAllProjectBasicInfo();
    }
  },

};
</script>
<style scoped>
.search {
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
}
.newsLeft .title {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.newsLeft .title .text {
  display: flex;
  align-items: center;
}
.newsLeft .title .text > span {
  font-size: 4rem;
  font-style: italic;
}
.newsLeft .title .text .textPro {
  padding-left: 5px;
}
.newsLeft .title .text .textPro span {
  font-size: 1.2rem;
}
.newsLeft .title .text .textPro div {
  font-size: 1.2rem;
  color: #fff;
  position: relative;
  display: flex;
}
.newsLeft .title .text .textPro div span {
  z-index: 2;
  padding: 5px 30px;
}
.newsLeft .title .text .textPro div::after {
  content: '';
  position: absolute;
  left: 0;
  width: 100%;
  height: 100%;
  background: #dd2020;
  transform: skewX(-10deg);
}

.container {
  width: 90%;
  margin: 0 auto;
}

/* 新闻样式 */
.newsItem .left {
  background: #f7f8fa;
  padding: 10px;
  text-align: center;
  line-height: 2;
}
.newsItem .right {
  text-overflow: ellipsis;
  padding: 10px 0;
  padding: 10px;
}
.newsItem .right:hover {
  color: #dd2020;
  background: #fafafa;
}
.newsItem .right p {
  margin-top: 10px;
}
/deep/.ivu-tabs-nav {
  padding: 5px 10px;
  justify-content: center;
  display: flex;
  width: 100%;
}
/deep/.ivu-tabs-nav .ivu-tabs-tab {
  flex: 0 0 20%;
  text-align: center;
  box-shadow: -2px 0px 8px 0px rgb(0 0 0 / 14%);
  margin: 10px 0;
  padding: 10px 0;
  font-weight: bold;
}
/deep/.ivu-tabs-nav .ivu-tabs-tab-active,
/deep/.ivu-tabs-nav .ivu-tabs-tab:hover {
  background: #dd2020;
  color: #fff;
}
/deep/.ivu-tabs-bar {
  border: none;
}
/deep/.ivu-tabs-ink-bar {
  display: none;
}
.carItem {
  margin: 10px 0;
}


.projectConta {
  background-color: #fcfbf7;
}
.donationText {
  line-height: 2;
}

.donation {
  color: #fff;
  padding: 2rem 0;
  background: url(http://www.chinacharityfederation.org/static/a01358c5-befc-4f81-9c85-48b42fa78b35/m49/static/images/donbg.jpg)no-repeat center center/cover;
}
.donation .btns {
  display: flex;
  justify-content: center;
  flex-direction: column;
  margin-left: 20px;
}
.donation .btns > * {
  margin-bottom: 10px;
}
.DTitle{
  display: flex;
}
.DTitle>*{
  flex: 0 0 calc(100% / 4);
}
.Dcontent li{
  display: flex;
}
.Dcontent li>*{
  flex: 0 0 calc(100% / 4);
}
.auto-scorll-table{
  overflow: hidden;
  height: 200px;
}
</style>

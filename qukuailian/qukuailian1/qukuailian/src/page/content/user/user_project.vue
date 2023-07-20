<template>
  <div class="waiceng">
    <div class="container">
      <div class="selectType">
        <a class="active" href="#">全部</a>
        <a href="#">救灾扶贫</a>
        <a href="#">助医扶残</a>
        <a href="#">支教助学</a>
        <a href="#">安老助孤</a>
        <a href="#">专项基金</a>
        <a href="#">重大灾难</a>
        <a href="#">地方推荐项目</a>
      </div>
      <div class="search">
        <div>
          <Input search enter-button placeholder="请输入关键字" />
        </div>
      </div>
      <Divider />
      <div class="projectNews">
        <div class="newsItem">
          <Row :gutter="20">
            <Col :span="6">
            <div class="left">
              <img width="100%" src="https://res-img.n.gongyibao.cn/uploads/a01358c5-befc-4f81-9c85-48b42fa78b35/20220907/5c7b871ab85c44d6aa9054bf5f20e37e.jpg" alt="">
            </div>
            </Col>
            <Col :span="18">
            <div class="right">
              <section>
                <h3>中华慈善总会紧急驰援四川泸定地震</h3>
                <div class="infoItem">
                  <div>
                    <span>已筹金额: </span>
                    <b>￥ 195845.70元</b>
                  </div>
                  <div>
                    <span>爱心人次: </span>
                    <span>13950</span>
                  </div>
                </div>
                <div class="infoItem">
                  <div>
                    <span>项目类别: </span>
                    <span>重大灾难</span>
                  </div>
                  <div>
                    <span>有效期: </span>
                    <span>2022-09-06至2023-03-05</span>
                  </div>
                </div>
                <p>向四川泸定地震受灾地区捐赠款物，众志成城，戮力同心,帮助灾区群众早日渡过难关</p>
              </section>
              <section>
                <Button type="error">我要捐款</Button>
              </section>
            </div>
            </Col>
          </Row>
          <Divider />
        </div>
        <div class="newsItem">
          <Row :gutter="20">
            <Col :span="6">
            <div class="left">
              <img width="100%" src="https://res-img.n.gongyibao.cn/uploads/a01358c5-befc-4f81-9c85-48b42fa78b35/20220907/5c7b871ab85c44d6aa9054bf5f20e37e.jpg" alt="">
            </div>
            </Col>
            <Col :span="18">
            <div class="right">
              <section>
                <h3>中华慈善总会紧急驰援四川泸定地震</h3>
                <div class="infoItem">
                  <div>
                    <span>已筹金额: </span>
                    <b>￥ 195845.70元</b>
                  </div>
                  <div>
                    <span>爱心人次: </span>
                    <span>13950</span>
                  </div>
                </div>
                <div class="infoItem">
                  <div>
                    <span>项目类别: </span>
                    <span>重大灾难</span>
                  </div>
                  <div>
                    <span>有效期: </span>
                    <span>2022-09-06至2023-03-05</span>
                  </div>
                </div>
                <p>向四川泸定地震受灾地区捐赠款物，众志成城，戮力同心,帮助灾区群众早日渡过难关</p>
              </section>
              <section>
                <Button type="error">我要捐款</Button>
              </section>
            </div>
            </Col>
          </Row>
          <Divider />
        </div>
        <div class="newsItem">
          <Row :gutter="20">
            <Col :span="6">
            <div class="left">
              <img width="100%" src="https://res-img.n.gongyibao.cn/uploads/a01358c5-befc-4f81-9c85-48b42fa78b35/20220907/5c7b871ab85c44d6aa9054bf5f20e37e.jpg" alt="">
            </div>
            </Col>
            <Col :span="18">
            <div class="right">
              <section>
                <h3>中华慈善总会紧急驰援四川泸定地震</h3>
                <div class="infoItem">
                  <div>
                    <span>已筹金额: </span>
                    <b>￥ 195845.70元</b>
                  </div>
                  <div>
                    <span>爱心人次: </span>
                    <span>13950</span>
                  </div>
                </div>
                <div class="infoItem">
                  <div>
                    <span>项目类别: </span>
                    <span>重大灾难</span>
                  </div>
                  <div>
                    <span>有效期: </span>
                    <span>2022-09-06至2023-03-05</span>
                  </div>
                </div>
                <p>向四川泸定地震受灾地区捐赠款物，众志成城，戮力同心,帮助灾区群众早日渡过难关</p>
              </section>
              <section>
                <Button type="error">我要捐款</Button>
              </section>
            </div>
            </Col>
          </Row>
          <Divider />
        </div>
      </div>
    </div>
  </div>
</template>


<script>
export default {
  name: "user_project"
}
</script>

<style scoped>
.container {
  width: 90%;
  margin: 0 auto;
}
.selectType {
  padding: 20px 0;
  display: flex;
}
.selectType a {
  flex: 0 0 10%;
  margin: 0 10px;
  /* font-size: 18px; */
  font-weight: bold;
  color: #333;
  padding: 5px 15px;
  text-align: center;
}
.selectType a:hover,
.selectType a.active {
  color: #fff;
  background: #dd2020;
  border-radius: 2px;
}
.search {
  display: flex;
  justify-content: flex-end;
}
.newsItem .left {
  overflow: hidden;
}
.newsItem .left img {
  transition: 0.33s ease;
}
.newsItem .left:hover img {
  transform: scale(1.1);
}
.newsItem .right {
  display: flex;
  justify-content: space-between;
  line-height: 2.5;
}

.newsItem .right .infoItem {
  display: flex;
}
.newsItem .right .infoItem > * {
  flex: 0 0 50%;
}
.newsItem .right h3 {
  font-size: 18px;
}
.newsItem .right:hover h3 {
  color: #dd2020;
}
.newsItem .right b {
  color: #dd2020;
}
/deep/.ivu-input-search{
  background: #dd2020 !important;
  border-color: #dd2020 !important;
}
</style>

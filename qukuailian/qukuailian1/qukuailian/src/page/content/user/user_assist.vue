<template>
  <div class="assist">
    <div class="filterList">
      <div class="container">
        <Input search enter-button size="large" placeholder="请输入搜索内容" />
        <div class="selectItem">
          <Row>
            <Col :span="3">
            <div class="selectType">
              <span>品牌</span>
            </div>
            </Col>
            <Col :span="21">
            <div class="selectOptions">
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
            </div>
            </Col>
          </Row>
          <Divider />
        </div>
        <div class="selectItem">
          <Row>
            <Col :span="3">
            <div class="selectType">
              <span>手机类型</span>
            </div>
            </Col>
            <Col :span="21">
            <div class="selectOptions">
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
              <span>华为</span>
              <span>小米</span>
              <span>苹果</span>
              <span>Vivo</span>
            </div>
            </Col>
          </Row>
          <Divider />
        </div>
        <div class="select">

          <Row :gutter="10">
            <Col :span="14">
            <Row :gutter="10">
              <Col :span="4">
              <Select v-model="model1" placeholder="附加功能">
                <Option v-for="item in 10" :value="item" :key="item">{{ item }}</Option>
              </Select>
              </Col>
              <Col :span="4">
              <Select v-model="model1" placeholder="附加功能">
                <Option v-for="item in 10" :value="item" :key="item">{{ item }}</Option>
              </Select>
              </Col>
              <Col :span="4">
              <Select v-model="model1" placeholder="附加功能">
                <Option v-for="item in 10" :value="item" :key="item">{{ item }}</Option>
              </Select>
              </Col>
            </Row>
            </Col>
            <Col :span="10">
            <div class="rating">
              <RadioGroup v-model="ranting" type="button">
                <Radio label="1">默认</Radio>
                <Radio label="2">最新</Radio>
                <Radio label="3">销量</Radio>
              </RadioGroup>
            </div>
            </Col>
          </Row>
        </div>
        <div class="goods">
          <Row :gutter="20">
            <Col v-for="item in 12" :key="item" :span="6">
            <Card>
              <div style="text-align:center">
                <img width="100%" src="https://file.iviewui.com/dist/2ecd3b0452aa197097d5131afacab7b8.png">
                <h3>A high quality UI Toolkit based on Vue.js</h3>
              </div>
            </Card>
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
      ranting: '1'
    }
  }
}
</script>

<style scoped>
.filterList {
  padding: 2rem 0;
}
.container {
  width: 90%;
  margin: 0 auto;
}
.selectItem {
  line-height: 2;
  padding: 1rem 0 0 0;
}
.selectType {
  color: #888;
}
.selectOptions {
  display: flex;
  font-weight: bold;
  cursor: pointer;
  flex-wrap: wrap;
}
.selectOptions > * {
  flex: 0 0 5%;
}
.rating {
  display: flex;
  justify-content: flex-end;
}
.goods {
  padding: 1rem 0;
}
.goods > * > * {
  margin-bottom: 1rem;
}
</style>
<template>
  <div class="col-sm-3">
    <div class="left-sidebar">
      <h2>Category</h2>
      <div class="panel-group category-products" id="accordian">
        <!--category-productsr-->
        <div v-for="(category, index) in categories" v-bind:key="index">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <router-link :to="`/category/${category.id}`"
                  ><span class="badge pull-left"
                    ><i class="fa fa-plus"></i></span
                  >{{ category.name }}
                </router-link>
              </h4>
            </div>
          </div>
        </div>
      </div>
      <!--/category-products-->

      <div class="shipping text-center">
        <!--shipping-->
        <img src="images/home/shipping.jpg" alt="" />
      </div>
      <br />
      <!--/shipping-->
    </div>
  </div>
</template>

<script>
import axios from "axios";
import Vue from "vue";
import VueAxios from "vue-axios";
Vue.use(VueAxios, axios);
export default {
  name: "Sidebar",
  data() {
    return {
      categories: null,
    };
  },
  mounted() {
    const url = "http://127.0.0.1:8000/api/categories";
    axios.get(url).then((res) => {
      console.log(res.data);
      this.categories = res.data.category;
    });
  },
};
</script>

<style></style>

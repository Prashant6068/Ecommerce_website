<template>
  <section id="slider">
    <!--slider-->
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div id="slider-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li
                v-for="(banner, index) in banners"
                v-bind:key="index"
                data-target="#slider-carousel"
                :data-slide-to="index"
                v-bind:class="index == 0 ? 'active' : ''"
              ></li>
            </ol>

            <div class="carousel-inner">
              <div
                v-for="(banner, index) in banners"
                v-bind:key="index"
                v-bind:class="index == 0 ? 'item active' : 'item'"
              >
                <div class="col-sm-6">
                  <h1><span>E</span>-SHOPPER</h1>
                  <h2>{{ banner.caption }}</h2>
                  <!-- <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua.
                  </p> -->
                  <!-- <button type="button" class="btn btn-default get">
                    Shop now!
                  </button> -->
                </div>
                <div class="col-sm-6">
                  <img
                    :src="server + banner.image_path"
                    class="girl img-responsive"
                    alt=""
                    width="300px"  height="300px"
                  />
                </div>
              </div>
            </div>

            <a
              href="#slider-carousel"
              class="left control-carousel hidden-xs"
              data-slide="prev"
            >
              <i class="fa fa-angle-left"></i>
            </a>
            <a
              href="#slider-carousel"
              class="right control-carousel hidden-xs"
              data-slide="next"
            >
              <i class="fa fa-angle-right"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from "axios";
import Vue from "vue";
import VueAxios from "vue-axios";
Vue.use(VueAxios, axios);
export default {
  name: "Slider",
  data() {
    return {
      server: "http://127.0.0.1:8000/uploads/",

      banners: null,
    };
  },
  mounted() {
    const url = "http://127.0.0.1:8000/api/banners";
    axios.get(url).then((res) => {
      console.log(res.data.banners);
      this.banners = res.data.banners;
    });
  },
};
</script>

<style>
</style>
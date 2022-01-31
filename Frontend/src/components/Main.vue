<template>
  <section>
    <Slider />
    <section>
      <div class="container">
        <div class="row">
          <Sidebar />
          <div class="col-sm-8 padding-right">
            <div class="features_items">
              <!--features_items-->
              <h2 class="title text-center">Features Items</h2>
              <div
                class="col-sm-4"
                v-for="(product, index) in productData"
                :key="index"
              >
                <div class="product-image-wrapper">
                  <div class="single-products">
                    <div class="productinfo text-center">
                      <router-link :to="`productdetails/${product.id}`">
                        <img
                          :src="product.images[0].image"
                          alt=""
                          height="250px"
                          width="150px"
                        />
                        <!-- <b class="">Name: {{ product.name }}</b> -->
                        <h2>{{ product.name}}</h2>
                        <h2 class="">&#x20B9;{{ product.price }}</h2>
                        <!-- <b>sale price: &#x20B9; {{ product.saleprice }}</b> -->
                        <button class="btn btn-default add-to-cart">
                          <i class="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </router-link>
                    </div>
                  </div>
                  <div class="choose">
                    <ul class="nav nav-pills nav-justified text-center">
                      <li>
                        <button
                          class="btn btn-warning"
                          @click="addToWishlist(product)"
                        >
                          <i class="fa fa-plus-square"></i>Add to wishlist
                        </button>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <!--features_items-->
          </div>
        </div>
      </div>
    </section>
  </section>
</template>

<script>
import { products } from "@/common/Service";
import { wishlist } from "@/common/Service";
import Slider from "./includes/Slider.vue";
import Sidebar from "./includes/Sidebar.vue";
export default {
  name: "Main",
  components: {
    Slider,
    Sidebar,
  },
  data() {
    return {
      productData: null,
      user_mail: localStorage.getItem("uid"),
      details: null,
      // server: "http://127.0.0.1:8000/uploads/",
    };
  },
  methods: {
    addToWishlist(product) {
      let obj = {
        email: this.user_mail,
        pro_id: product.id,
        product_id: product.product_id,
        product_name: product.name,
        product_price: product.price,
        image_path: product.images[0].image,
      };
      wishlist(obj).then((res) => {
        if (res.data.message == "already added") {
          this.$swal("already added", "", "error");
        } else {
          this.$swal("Added to wishlist", "", "success");
        }
        console.log(res.data);
      });
    },
  },
  mounted() {
    products().then((res) => {
      console.log(res.data);
      this.productData = res.data.products;
    });
  },
};
</script>

<style>
b {
  color: orange;
}
</style>

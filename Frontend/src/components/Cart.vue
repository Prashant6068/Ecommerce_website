<template>
  <div>
    <section id="cart_items">
      <div class="container">
        <div class="breadcrumbs">
          <ol class="breadcrumb">
            <li>
              <router-link to="/">Home</router-link>
            </li>
            <li class="active">Shopping Cart</li>
          </ol>
        </div>
        <div class="table-responsive cart_info">
          <table class="table table-condensed">
            <thead>
              <tr class="cart_menu">
                <td class="image">Item</td>
                <td class="description"></td>
                <td class="price">Price</td>
                <td class="quantity">Quantity</td>
                <td></td>
                <td class="total">Total</td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <tr class="cart-menu" v-for="cart in details" :key="cart.id">
                <td class="cart_product">
                  <img
                    :src="server + cart.image_path"
                    alt=""
                    width="100px"
                    height="100px"
                  />
                </td>
                <td></td>
                <td class="cart_description">
                  <h4>
                    <a href="">{{ cart.name }}</a>
                  </h4>
                  <p>Web ID: {{ cart.product_id }}</p>
                </td>
                <td class="cart_price">
                  <p>{{ cart.price }}</p>
                </td>
                <td class="cart_quantity">
                  <div class="cart_quantity_button">
                    <a class="cart_quantity_down" @click="addQty(cart)">
                      <i
                        class="fa fa-plus btn btn-warning"
                        aria-hidden="true"
                      ></i>
                    </a>
                    <input
                      class="cart_quantity_input"
                      type="text"
                      name="quantity"
                      v-model="cart.quantity"
                      autocomplete="off"
                      size="2"
                    />
                    <a class="cart_quantity_down" @click="subQty(cart)">
                      <i
                        class="fa fa-minus btn btn-warning"
                        aria-hidden="true"
                      ></i>
                    </a>
                  </div>
                </td>
                <td class="cart_total">
                  <p class="cart_total_price">
                    {{ cart.price * cart.quantity }}
                  </p>
                </td>
                <td class="cart_delete">
                  <button class="cart_quantity_delete" @click="delItem(cart)">
                    <i class="fa fa-times"></i>
                  </button>
                </td>
              </tr>
             
            </tbody>
          </table>
        </div>
       
    <div class="p2">
        <div class="col-sm-6  ">
          <div class="total_area  ">
            <ul>
              <div class="form-group">
                <input class="form-control" type="text" v-model="value" placeholder="Apply coupan" />
                <button
                  type="submit"
                  @click="applyCoupon()"
                  class="btn btn-warning"
                >
                  Apply coupon
                </button>
              </div>
              <li>
                Discount
                <span>
                  <td>{{ this.discount }}</td></span
                >
              </li>
              <li>Shipping Cost <span>{{this.shipping}}</span></li>
              <li>
                Total <span>{{ this.full() }}</span>
              </li>
              <div class="p1">
                  <button class="btn btn-default check_out" @click="payment()">Proceed to checkout</button>
              </div> </ul>
        
           
          </div>
        </div>
   
      </div>
      </div>
    </section>
    <!--/#cart_items-->
  </div>
 
</template>

<script>
import { coupon } from "@/common/Service.js";
export default {
  name: "Cart",
  data() {
    return {
      details: undefined,
      value: undefined,
      coupons: undefined,
      coup: undefined,
      shipping: undefined,
      amount: 0,
      discount: 0,
      total: null,
      server: "http://127.0.0.1:8000/uploads/",
    };
  },
  methods: {
    addQty(cart) {
      let item = this.details.indexOf(cart);
      this.details[item].quantity = this.details[item].quantity + 1;
      let arr = JSON.stringify(this.details);
      localStorage.setItem("mycart", arr);
    },
    subQty(cart) {
      let item = this.details.indexOf(cart);
      this.details[item].quantity = this.details[item].quantity - 1;
      let arr = JSON.stringify(this.details);
      localStorage.setItem("mycart", arr);
    },
    delItem(cart) {
      let item = this.details.indexOf(cart);
      this.details.splice(item, 1);
      let arr = JSON.stringify(this.details);
      localStorage.setItem("mycart", arr);
      this.$store.dispatch("remItem", arr);
    },
    full() {
      const items = JSON.parse(localStorage.getItem("mycart"));
      var sum = 0;
      items.forEach((item) => {
        sum = sum + item.price * item.quantity;
      });
      this.total = sum - this.discount;
       this.total = sum - this.discount;
      if (this.total > 500) {
        this.shipping = "free";
        return this.total;
      } else {
        this.shipping = 50;
        this.total = this.total + this.shipping;
        return this.total;
      }
    },
    applyCoupon() {
      let arr = this.coupons;
      let couponArray;
      let flag = 0;
      for (let i in arr) {
        if (arr[i].code == this.value) {
          flag = 1;
          couponArray = arr[i];
          break;
        }
      }
      if (flag != 0 && parseInt(couponArray.cart_value) <= this.total) {
        if (couponArray.type == "percent") {
          this.discount = this.total * (couponArray.value / 100);
          this.total = this.total - this.discount;
          this.coup = this.value;
        } else {
          this.discount = couponArray.value;
          this.total = this.total - this.discount;
          this.coup = this.value;
        }
      } else {
        this.$swal("Unable to apply the coupon", "", "error");
      }
    },
    payment() {
      this.$store.dispatch("amount", this.total);
      this.$store.dispatch("coupon", this.coup);
      this.$router.push("/checkout");
    },
  },
  mounted: function mounted() {
    this.details = JSON.parse(localStorage.getItem("mycart"));
    console.log(this.details);
    coupon().then((res) => {
      this.coupons = res.data.coupons;
    });
  },
};
</script>
<style>
.p2 {
  display: flex;
  justify-content: flex-end;
  margin-bottom: 80px;
  
}
.p1{
   display: flex;
  justify-content: flex-end;
  /* margin-bottom: 80px; */
}
</style>
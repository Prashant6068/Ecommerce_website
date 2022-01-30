import Vue from "vue";
import VueSweetalert2 from "vue-sweetalert2";
import "sweetalert2/dist/sweetalert2.min.css";
Vue.use(VueSweetalert2);
import Router from "vue-router";
Vue.use(Router);
import Main from "../components/Main.vue";
import Contact from "../components/Contact.vue";
import Login from "../components/Login.vue";

import Cart from "../components/Cart.vue";

import Productdetails from "../components/Productdetails.vue";
import Checkout from "../components/Checkout.vue";
import Category from "../components/Category.vue";
import Account from "../components/Account.vue";
import Wishlist from "../components/Wishlist.vue";
import Myorders from "../components/Myorders.vue";
import Paypal from "../components/Paypal.vue";
import Explore from "../components/Explore.vue";
import Track from "../components/Track.vue";
import Tracking from "../components/Tracking.vue";

function myGuard(to, from, next) {
  let isAuthenticated = false;
  if (localStorage.getItem("uid") != undefined) {
    isAuthenticated = true;
  } else {
    isAuthenticated = false;
  }
  if (isAuthenticated) {
    next(); //allow to enter route
  } else {
    alert("Please login to your account");
    next("/login");
  }
}
export default new Router({
  routes: [
    {
      path: "/",
      name: "Main",
      component: Main,
    },
    {
      path: "/category/:id",
      name: "Category",
      component: Category,
    },
   
    {
      path: "/contact",
      name: "Contact",
      component: Contact,
    },
    {
      path: "/login",
      name: "Login",
      component: Login,
    },
    {
      path: "/explore/:id",
      name: "Explore",
      component: Explore,
    },

    {
      path: "/cart",
      name: "Cart",
      component: Cart,
    },

    {
      path: "/productdetails/:id",
      name: "Productdetails",
      component: Productdetails,
    },
    {
      path: "/checkout",
      name: "Checkout",
      beforeEnter: myGuard,
      component: Checkout,
    },

    {
      path: "/account/:id",
      name: "Account",
      beforeEnter: myGuard,
      component: Account,
    },
    {
      path: "/wishlist",
      name: "Wishlist",
      beforeEnter: myGuard,
      component: Wishlist,
    },
    {
      path: "/myorders",
      name: "Myorders",
      beforeEnter: myGuard,
      component: Myorders,
    },
    {
      path: "/paypal",
      name: "Paypal",
      component: Paypal,
    },
    {
      path: '/tracking',
      beforeEnter: myGuard,
      name: 'Tracking',
      component: Tracking
  },
  {
      path: '/track/:id',
      beforeEnter: myGuard,
      name: 'Track',
      component: Track
  },
  ],
});

<template>
  <section id="cart_items">
    <div class="container">
      <div class="shopper-informations">
        <div class="row">
          <div class="col-sm-5">
            <div class="shopper-info">
              <p>Track order</p>

              <form>
                <input
                  type="text"
                  placeholder="Email"
                  readonly
                  name="email"
                  v-model="email"
                />
                <input
                  type="text"
                  placeholder="Track id"
                  name="trackid"
                  v-model="trackId"
                  required
                />
                <router-link
                  :to="`/track/${trackId}`"
                  class="btn btn-default btn-warning"
                >
                  Track</router-link
                >
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Tracking",
  data() {
    return {
      email: localStorage.getItem("uid"),
      trackId: undefined,
    };
  },
};
</script>

<style>
.btn {
  margin-bottom: 20px;
}
</style>

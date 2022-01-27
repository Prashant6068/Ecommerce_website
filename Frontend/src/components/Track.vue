<template>
  <div class="card">
    <div class="tracking">
      <div class="title"><h2>Tracking Order</h2></div>
    </div>
    <div class="progress-track" v-if="status == 'pending'">
      <ul id="progressbar">
        <li class="step0 text-center active" id="step1">Pending</li>
        <li class="step0 text-center" id="step2">On the way</li>
        <li class="step0 text-center" id="step3">Delivered</li>
        <li class="step0 text-center" id="step4">Cancelled</li>
      </ul>
    </div>
    <div class="progress-track" v-if="status == 'shipping'">
      <ul id="progressbar">
        <li class="step0 text-center active" id="step1">Pending</li>
        <li class="step0 text-center active" id="step2">On the way</li>
        <li class="step0 text-center" id="step3">Delivered</li>
        <li class="step0 text-center" id="step4">Cancelled</li>
      </ul>
    </div>
    <div class="progress-track" v-if="status == 'delivered'">
      <ul id="progressbar">
        <li class="step0 text-center active" id="step1">Pending</li>
        <li class="step0 text-center active" id="step2">On the way</li>
        <li class="step0 text-center active" id="step3">Delivered</li>
        <li class="step0 text-center" id="step4">Cancelled</li>
      </ul>
    </div>
    <div class="progress-track" v-if="status == 'cancelled'">
      <ul id="progressbar">
        <li class="step0 text-center" id="step1">Pending</li>
        <li class="step0 text-center" id="step2">On the way</li>
        <li class="step0 text-center" id="step3">Delivered</li>
        <li class="step0  text-center " id="step4"><p>Cancelled</p></li>
        
      </ul>
    </div>
  </div>
</template>

<script>
import { getTrack } from "@/common/Service.js";
export default {
  name: "Track",
  data() {
    return {
      email: localStorage.getItem("uid"),
      details: undefined,
      trackId: undefined,
      status: undefined,
    };
  },
  created() {
    this.trackId = this.$route.params.id;
  },
  mounted() {
    getTrack(this.trackId).then((res) => {
      this.details = res.data.track;
      this.status = this.details.status;
      console.log(this.status);
    });
  },
};
</script>

<style>
.card {
  margin: auto;
  width: 100%;
  max-width: 800px;
  height: 300px;
  padding: 4vh 0;
  box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  border-top: 3px solid rgb(252, 174, 49);
  border-bottom: 3px solid rgb(252, 174, 49);
  border-left: none;
  border-right: none;
  margin-bottom: 50px;
}
p{
  color: red;
}
@media (max-width: 768px) {
  .card {
    width: 90%;
  }
}

.title {
  color: rgb(252, 103, 49);
  font-weight: 60;
  margin-bottom: 2vh;
  margin-top: 15px;
  padding: 0 8%;
  font-size: initial;
}

#details {
  font-weight: 400;
}

.info {
  padding: 5% 8%;
}

.info .col-5 {
  padding: 0;
}

#heading {
  color: grey;
  line-height: 6vh;
}

.pricing {
  background-color: #ddd3;
  padding: 2vh 8%;
  font-weight: 400;
  line-height: 2.5;
}

.pricing .col-3 {
  padding: 0;
}
.c1 {
  color: red;
  border: 1px red;
}

.total {
  padding: 2vh 8%;
  color: rgb(252, 103, 49);
  font-weight: bold;
}

.total .col-3 {
  padding: 0;
}

.footer {
  padding: 0 8%;
  font-size: x-small;
  color: black;
}

.footer img {
  height: 5vh;
  opacity: 0.2;
}

.footer a {
  color: rgb(252, 103, 49);
}

.footer .col-10,
.col-2 {
  display: flex;
  padding: 3vh 0 0;
  align-items: center;
}

.footer .row {
  margin: 0;
}

#progressbar {
  margin-bottom: 3vh;
  overflow: hidden;
  color: rgb(252, 103, 49);
  padding-left: 0px;

  margin-top: 3vh;
}

#progressbar li {
  list-style-type: none;
  font-size: 15px;
  width: 25%;
  float: left;
  position: relative;
  font-weight: 400;
  color: rgb(160, 159, 159);
}

#progressbar #step1:before {
  content: "";
  color: rgb(252, 103, 49);
  width: 5px;

  height: 5px;
  margin-left: 0px !important;
}

#progressbar #step2:before {
  content: "";
  /* color: #fff; */
  color: yellow;
  width: 5px;
  height: 5px;
  margin-left: 32%;
}

#progressbar #step3:before {
  content: "";
  /* color: #fff; */
  color: green;
  width: 5px;
  height: 5px;
  margin-right: 32%;
}

#progressbar #step4:before {
  content: "";
  /* color: #fff; */
  color: red;
  width: 5px;
  height: 5px;
  margin-right: 0px !important;
}

#progressbar li:before {
  line-height: 29px;
  display: block;
  font-size: 12px;
  background: #ddd;
  border-radius: 50%;
  margin: auto;
  z-index: -1;
  margin-bottom: 1vh;
}

#progressbar li:after {
  content: "";
  height: 2px;
  background: #ddd;
  position: absolute;
  left: 0%;
  right: 0%;
  margin-bottom: 2vh;
  top: 1px;
  z-index: 1;
}

.progress-track {
  padding: 0 8%;
  margin-top: 60px;
}

#progressbar li:nth-child(2):after {
  margin-right: auto;
}

#progressbar li:nth-child(1):after {
  margin: auto;
}

#progressbar li:nth-child(3):after {
  float: left;
  width: 68%;
}

#progressbar li:nth-child(4):after {
  margin-left: auto;
  width: 132%;
}

#progressbar li.active {
  color: black;
}

#progressbar li.active:before,
#progressbar li.active:after {
  /* background: rgb(252, 103, 49); */
  background: rgb(252, 181, 49);
}
</style>

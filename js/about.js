import { fetchData } from "./components/TheDataMiner.js";
import MiniCars from "./components/theMiniCars.js";

(() => {
  const hamburger = document.querySelector('.header .nav-bar .nav-list .hamburger');
  const mobile_menu = document.querySelector('.header .nav-bar .nav-list ul');
  const menu_item = document.querySelectorAll('.header .nav-bar .nav-list ul li a');
  const header = document.querySelector('.header.container');

  hamburger.addEventListener('click', () => {
    hamburger.classList.toggle('active');
    mobile_menu.classList.toggle('active');
  });


  menu_item.forEach((item) => {
    item.addEventListener('click', () => {
      hamburger.classList.toggle('active');
      mobile_menu.classList.toggle('active');
    });
  });

  Vue.component("car-card",
    {
      props: ["mini"],
      template: `<img @click="miniInfo" :src="'images/' + mini.image">`,

      mounted: function () {
        console.log(`loaded ${this.mini.name}'s image`);
      },

      methods: {
        miniInfo() {
          console.log("mini Info ", this.mini.name);
          this.$emit("showmydata", this.mini);
        }
      }
    });

  let vue_em = new Vue({

    data: {
      message: "Hello from Vue!",
      anotherMessage: "more text, so simple! much winning",
      removeAFormat: true,
      showBioData: false,
      variants: [],
      currentProfData: {}
    },
    // this is the "mounted" lifecycle hook. Vue is done creating itself, and has attached itself to the "main" div on the page
    mounted: function () {
      console.log("Vue is mounted, trying fetch for initial data");

      fetchData("./includes/index.php")
        .then(data => {
          data.forEach(prof => this.variants.push(prof));
        })
        .catch(err => console.error(err));

    },
    // run a method when we change our view (update the DOM with Vue)
    updated: function () {
      console.log('Vue just updated the Car');
    },
    methods:
    {
      MiniSelected(mini) {
        console.log("Mini Selected: ", mini.name);
        this.showBioData = true;
        this.currentProfData = mini;
      }
      // removeProf(mini) {
      // remove this prof from the professors array
      // console.log('clicked to remove prof', mini, mini.name);
      // the "this" keyword inside a vue instance REFERS to the Vue instance itself by default

      // make the selected prof's data visible
      // this.professors.splice(this.professors.indexOf(mini), 1);
      //this.$delete(this.professors, mini);
      // }
    },
    components: {
      "prof-card": MiniCars
    }

  }).$mount("#main");

})();
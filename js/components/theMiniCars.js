export default {

    name: "theMiniCars",
    props: ["mini"],

    template:
        `<img @click="miniOpen" :src="'images/' + mini.images" alt="mini">`,

    mounted: function () {
        console.log(`loaded ${this.mini.name}'s image`);
        console.log(`${this.mini.image}`);
    },

    methods: {
        miniInfo() {
            console.log(`image of ${this.mini.name} selected from list`);
            this.$emit("showmydata", this.mini)
        }
    }
}
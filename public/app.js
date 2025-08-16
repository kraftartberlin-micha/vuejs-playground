const app = Vue.createApp({
    template:`hi {{ name }}
        <img :src="myImage" :alt="'could not load image'">
        <button v-on:click="getNewImage()">Klick mich</button>
    `,
    data() {
        return {
            name: 'hans',
            myImage: 'https://random.imagecdn.app/500/150'
        }
    },
    methods: {
        getNewImage() {
            this.myImage = 'https://random.imagecdn.app/200/300'
        }
    }
});

app.mount('#app')
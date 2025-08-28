<template>
  <div v-if="post">
    <h1>{{ post.title }}</h1>
    <p>{{ post.content }}</p>
    <button @click="deletePost">Post löschen</button>
  </div>
</template>

<script>
import {store} from "@/store.js";

export default {

  data() {
    return {}
  },

  computed: {
    post() {
      const id = parseInt(window.location.hash.split('/')[2], 10)
      return store.posts.find(post => post.id === id);
    }
  },

  methods: {
    deletePost() {
      store.deletePost(this.post.id);
      window.location.hash = "/";
    }
  }
}
</script>
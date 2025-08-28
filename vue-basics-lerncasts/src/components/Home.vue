<template>
  <div>
    <h1>Posts</h1>
    <ul>
      <li v-for="post in store.posts" :key="id">
        <a :href="'#/post/' + post.id">{{ post.title }}</a>
      </li>
    </ul>
  </div>
</template>

<script>
import {store} from "@/store.js";

export default {
  data() {
    return {
      store
    }
  }
}
</script>
<template>
  <div>
    <h1>Neuen Post erstellen</h1>

    <form @submit.prevent="addPost">
      <label for="title">Titel:</label>
      <input id="title" v-model="title"/>

      <label for="content">Inhalt:</label>
      <textarea id="content" v-model="content"></textarea>

      <button type="submit">Erstellen</button>
    </form>
  </div>
</template>

<script>
import {store} from "@/store.js";

export default {

  data() {
    return {
      title: '',
      content: '',
    }
  },

  computed: {},

  methods: {
    addPost() {
      if (this.title && this.content) {
        store.addPost({
          title: this.title,
          content: this.content
        });
        window.location.hash = "/";
      }
    }
  }
}
</script>
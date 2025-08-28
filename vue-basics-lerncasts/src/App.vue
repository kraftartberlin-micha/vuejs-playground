<template>
  <div>
    <nav>
      <a href="#/">Home</a> |
      <a href="#/create">Neuen Post erstellen</a>
    </nav>
    <component :is="currentView"/>
  </div>
</template>


<script>
import Home from "@/components/Home.vue";
import PostDetail from "@/components/PostDetail.vue";
import PostForm from "@/components/PostForm.vue";

export default {

  components: {},

  data() {
    return {
      currentPath: window.location.hash
    };
  },

  computed: {
    currentView() {
      const routes = {
        "/": Home,
        "/create": PostForm,
        "/post": PostDetail,
      };
      const routeKey = "/" + this.currentPath.slice(1).split('/')[1] || "/";
      return routes[routeKey] || Home;
    }
  },

  mounted() {
    window.addEventListener('hashchange', () => {
      this.currentPath = window.location.hash;
    });
  }
};
</script>


<style scoped>

</style>

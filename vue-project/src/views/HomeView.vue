<template>
  <RecipeItem :image="recipe.image" :label="recipe.name" :attributes="recipe.difficulty" v-for="recipe in recipes"/>
</template>

<script>
import RecipeItem from "@/components/RecipeItem.vue";

export default {
  components: {
    RecipeItem
  },
  data() {
    return {recipes: []}
  },
  methods: {
    async getRecipes() {
      const query = 'mar';
      const url = 'https://dummyjson.com/recipes/search?q=' + query
      let resp = await fetch(url)
      resp.json().then((data) => {
        this.recipes = data.recipes
        console.log(this.recipes)
      });
    }
  },
  mounted() {
    this.getRecipes()
  }
}
</script>

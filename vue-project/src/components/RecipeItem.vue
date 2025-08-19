<script>
export default {
  name: 'RecipeItem',
  props: {
    image: String,
    label: String,
    attributes: String
  }
}
</script>

<template>
  <div class="recipeItemContainer">
    <img :src="image" id="logo" alt="test image">
    <div class="recipeItemDescription">
      <div>
        {{ label }}
      </div>
      <div class="bottom-row">
        Difficulty: {{ attributes }}
      </div>
    </div>
  </div>
</template>

<style scoped>
.recipeItemContainer {
  border: 1px solid #000;
  border-radius: 8px;
  padding: 8px;
  margin: 8px;
  display: flex;
  gap: 8px;
  cursor: pointer;

  &:hover{
    background-color: rgba(0,0,0,0.1);
  }

  img#logo {
    width: 150px;
    height: 150px;
    border-radius: 8px;
  }

  .recipeItemDescription {
    display:flex;
    flex-direction: column;
    gap: 8px;
  }
}
.bottom-row {
  color: rgba(0,0,0,0.4);
  font-size: 12px;
}
</style>

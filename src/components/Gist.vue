<template>
  <v-card
      class="mx-auto"
      outlined
      elevation="2"
  >
    <v-card-title>
      {{title}}
    </v-card-title>
    <v-card-text>
      {{text}}
    </v-card-text>
    <v-card-actions>
      <v-spacer></v-spacer>
        <v-btn
            elevation="1"
        >
          <v-icon left>
            mdi-content-copy
          </v-icon>
          Copy
        </v-btn>
        <v-btn
            elevation="1"
        >
          <v-icon left>
            mdi-delete
          </v-icon>
          Delete
        </v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  name: "Gist",
  props:["title","text"]
}
</script>

<style scoped>

</style>
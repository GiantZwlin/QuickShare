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
            v-clipboard:copy="text"
            v-clipboard:success="onCopy"
        >
          <v-icon left>
            mdi-content-copy
          </v-icon>
          {{copyBtn}}
        </v-btn>
        <v-btn
            elevation="1"
            v-on:click="$emit('deleteGist',ID)"
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
  props:["title","text","ID"],
  data: function(){
    return {
      copyBtn:"Copy"
    }
  },
  methods:{
    onCopy:function () {
      this.copyBtn = "Copied"
    },
  }
}
</script>

<style scoped>

</style>
<template>
  <v-container >
    <v-row v-for="(gist,id) in Gists" :key="id">
      <v-col cols="12" md="2"></v-col>
      <v-col>
        <Gist :title="gist.title" :text="gist.text" v-on:deleteGist="deleteGist($event)"></Gist>
      </v-col>
      <v-col cols="12" md="2">
      </v-col>
    </v-row>
    <v-row justify="center">
      <v-dialog
          v-model="dialog"
          max-width="800px"
      >
        <template v-slot:activator="{ on, attrs }">
          <v-btn
              class="ma-5"
              elevation="2"
              color="primary"
              dark
              fab
              fixed
              large
              bottom
              right
              v-bind="attrs"
              v-on="on"
              icon
          >
            <v-icon>
              mdi-plus
            </v-icon>
          </v-btn>
        </template>
        <v-card>
          <v-card-title>Create Gist</v-card-title>
          <v-divider></v-divider>
          <v-card-text>
            <v-textarea v-model="newGistText" auto-grow>
            </v-textarea>
          </v-card-text>
          <v-card-actions>
            <v-btn
                color="blue darken-1"
                text
                @click="dialog = false"
            >
              Close
            </v-btn>
            <v-btn
                color="blue darken-1"
                text
                @click="dialogSave"
            >
              Save
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-dialog>
    </v-row>
  </v-container>
</template>

<script>
import Gist from "@/components/Gist";

export default {
  name: "Gists",
  components: {Gist},
  data: function () {
    return {
      Gists: [],
      dialog: false,
      newGistText: "abc"
    }
  },
  mounted: function () {
    //TODO:API
    this.Gists = [
      {title: "1", text: "Hello"},
      {title: "2", text: "你好"},
      {title: "3", text: "阔你几哇"}
    ]
  },
  methods: {
    deleteGist: function(title){
      let index = -1
      for (let i =0;i<this.Gists.length;i++){
        if (this.Gists[i].title===title){
              index = i;
              break
        }
      }
      this.Gists.splice(index,1)
      // TODO:API
    },
    dialogSave: function () {
      this.dialog = false
      let myDate = new Date()
      let createDate = myDate.toLocaleDateString()
      let createTime = myDate.toLocaleTimeString()

      let gist = {
        title: createDate + " " + createTime,
        text: this.newGistText
      }

      this.Gists.unshift(
          gist
      )
      //TODO:API
      this.newGistText = ""
    }
  }
}
</script>

<style scoped>

</style>
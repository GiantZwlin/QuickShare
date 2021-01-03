<template>
  <v-container>
    <v-row v-for="(gist,id) in Gists" :key="id">
      <v-col cols="12" md="2"></v-col>
      <v-col>
        <Gist :title="gist.title" :text="gist.text"></Gist>
      </v-col>
      <v-col cols="12" md="2">
      </v-col>
    </v-row>
    <v-spacer></v-spacer>
    <v-row>
      <v-col>
        <v-btn
            class="ma-3"
            fab
            large
            dark
            color="indigo"
            right
            fixed
            bottom
        >
          <v-icon dark>
            mdi-plus
          </v-icon>
        </v-btn>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import Gist from "@/components/Gist";

export default {
  name: "Gists",
  components: {Gist},
  data:function (){
    return{
      Gists:[]
    }
  },
  mounted: function (){
    this.Gists = [
      {title:"1",text:"Hello"},
      {title:"2",text:"你好"},
      {title:"3",text:"阔你几哇"},
    ]
  }
}
</script>

<style scoped>

</style>
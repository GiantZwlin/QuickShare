<template>
  <v-container >
    <v-row v-for="i in 3" :key="i">
      <v-col >
        <Gist></Gist>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import Gist from "@/components/Gist";
export default {
name: "Gists",
  components: {Gist}
}
</script>

<style scoped>

</style>
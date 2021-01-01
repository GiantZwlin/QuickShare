<template>
  <v-app-bar
      app
      flat
      clipped-left
      outlined
      color="gray"
  >
    <v-btn icon>
      <v-icon>mdi-clipboard-outline</v-icon>
    </v-btn>
    <v-toolbar-title>QuickShare</v-toolbar-title>

    <v-spacer></v-spacer>
    <v-btn icon>
      <v-icon>mdi-information-outline</v-icon>
    </v-btn>

  </v-app-bar>
</template>

<script>
export default {
  name: "Header"
}
</script>

<style scoped>

</style>
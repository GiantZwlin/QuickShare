<template>
  <v-navigation-drawer app clipped>
  </v-navigation-drawer>
</template>

<script>
export default {
  name: "Drawer",
  data() {
    return {
      items: [
        {title: 'Dashboard', icon: 'mdi-view-dashboard'},
        {title: 'Photos', icon: 'mdi-image'},
        {title: 'About', icon: 'mdi-help-box'},
      ],
      right: null,
    }
  },
}
</script>

<style scoped>

</style>
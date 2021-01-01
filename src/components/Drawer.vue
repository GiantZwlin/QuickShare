<template>
  <v-card>
  <v-navigation-drawer app clipped>
    <v-list
        dense
        nav
    >
      <v-list-item
          v-for="item in items"
          :key="item.title"
          link
      >
        <v-list-item-icon>
          <v-icon>{{ item.icon }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content>
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
  </v-navigation-drawer>
  </v-card>
</template>

<script>
export default {
  name: "Drawer",
  data() {
    return {
      items: [
        {title: 'Gists', icon: 'mdi-card-text-outline'},
        {title: 'Files', icon: 'mdi-file'},
      ],
      right: null,
    }
  },
}
</script>

<style scoped>

</style>
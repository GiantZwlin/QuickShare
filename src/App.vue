<template>
  <v-app>
    <Header></Header>
    <Drawer></Drawer>
    <v-main>
      <v-container>

      </v-container>
    </v-main>
  </v-app>
</template>

<script>
import Header from "@/components/Header";
import Drawer from "@/components/Drawer";

export default {
  name: 'App',

  components: {
    Drawer,
    Header,
  },

  data: () => ({
    //
  }),
};
</script>

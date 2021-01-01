<template>
  <v-app>
    <Header></Header>
    <Drawer></Drawer>
    <v-main>
      <Gists></Gists>
    </v-main>
  </v-app>
</template>

<script>
import Header from "@/components/Header";
import Drawer from "@/components/Drawer";
import Gists from "@/components/Gists";

export default {
  name: 'App',

  components: {
    Gists,
    Drawer,
    Header,
  },

  data: () => ({
    //
  }),
};
</script>

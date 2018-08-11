<template>
  <div id="app">
    <Navbar />
    <div class="container">
      <router-view/>
    </div>
    <Footer />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';
import Footer from '@/components/Footer.vue';
import Navbar from '@/components/Navbar.vue';

@Component({
  components: {
    Footer,
    Navbar,
  },
})
export default class App extends Vue {

}
</script>

<style lang="scss">
  @import '../node_modules/bulma/css/bulma.css';

  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
  }

  #nav {
    padding: 30px;
    a {
      font-weight: bold;
      color: #2c3e50;
      &.router-link-exact-active {
        color: #42b983;
      }
    }
  }

  Footer {
    margin-top: 3rem;
  }
</style>
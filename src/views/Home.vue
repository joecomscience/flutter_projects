<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <div class="columns">
      <div v-for="item in contents">
        <div class="column">
          <Card v-bind:name="item.name" v-bind:content="item.content" v-bind:createdDate="item.createdDate" />
        </div>
      </div>
    </div>
    <HelloWorld msg="Welcome to Your Vue.js + TypeScript App" />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator';

import HelloWorld from '@/components/HelloWorld.vue'; // @ is an alias to /src
import Card from '@/components/Card.vue';



@Component({
  components: {
    HelloWorld,
    Card,
  },
})
export default class Home extends Vue {

  public data() {
    return {
      contents: [
        {
          name: 'John Smith',
          content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.',
          createdDate: '11:09 PM - 1 Jan 2016',
        },
        {
          name: 'John Smith',
          content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.',
          createdDate: '11:09 PM - 1 Jan 2016',
        },
        {
          name: 'John Smith',
          content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.',
          createdDate: '11:09 PM - 1 Jan 2016',
        },
      ],
    };
  }
}
</script>
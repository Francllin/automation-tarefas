<template>
  <section class="page">
    <form @submit.prevent="add">
      <input
        type="search"
        :value="text"
        placeholder="Search task"
        @input="filter($event.target.value)"
      />
    </form>

    <TaskList
      :tasks="filtered"
      @remove="this.$store.commit($event)"
    />
  </section>
</template>

<script>
import { Map } from 'immutable';
import TaskList from '@/components/TaskList.vue';

export default {
  name: 'Done',
  components: {
    TaskList,
  },
  data() {
    return {
      text: '',
      filtered: this.$store.state.done,
    };
  },
  methods: {
    filter(value) {
      this.text = value;
      let filtered = Map();

      if (value.length === 0) {
        filtered = this.$store.state.done;
      } else {
        filtered = this.$store.state.done.filter((v) => v.includes(value));
      }

      this.filtered = filtered;
    },
  },
};
</script>
<style scoped>
form {
  display: flex;
  box-shadow: 0px 0px 10px #e2e4ec;
  border: 1px solid #e2e4ec;
  border-radius: 5px;
  margin: 15px 0;
  height: 35px;
}

input {
  flex-basis: 100%;
  outline: none;
  outline-color: transparent;
  padding: 0 10px;
  font-size: 15;
  background-color: transparent;
}
</style>

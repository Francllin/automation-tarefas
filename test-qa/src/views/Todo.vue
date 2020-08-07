<template>
  <section class="page">
    <form @submit.prevent="add">
      <input
        type="text"
        v-model="task"
        placeholder="You can add more then one using ';'"
      />
      <button type="reset">
        <i class="material-icons">
          clear
        </i>
      </button>
      <button type="submit">
        <i class="material-icons">
          add
        </i>
      </button>
    </form>
    <TaskList
      :tasks="$store.state.todos"
      @remove="this.$store.commit($event)"
    >
      <template
        v-slot:before="{ hash }"
      >
        <input
          type="checkbox"
          @click="$store.commit('done', hash)"
        />
      </template>
    </TaskList>
  </section>
</template>

<script>
import TaskList from '@/components/TaskList.vue';

export default {
  name: 'Home',
  components: {
    TaskList,
  },
  data() {
    return {
      task: '',
    };
  },
  methods: {
    add() {
      this.$store.dispatch('add', this.task);
      this.clearInput();
    },
    clearAll() {
      this.clearInput();
      this.$store.commit('clear');
    },
    clearInput() {
      this.task = '';
    },
  },
};
</script>
<style scoped>
input[type=text] {
  flex-basis: calc(100% - 35px * 2);
  outline: none;
  outline-color: transparent;
  padding: 0 10px;
  font-size: 15;
  background-color: transparent;
}

button {
  width: 35px;
  height: 35px;
  outline: none;
  outline-color: transparent;
  background-color: transparent;
}

input[type=checkbox] {
  width: 25px;
  height: 25px;
  border-radius: 5px;
  padding: 5px;
  margin-right: 10px;
  border: 2px solid #38404d;
}

button[type="submit"] {
  background-color: #3764d6;
  border: 1px solid #3764d6;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}

button[type="reset"] i {
  transition: all .4s ease-in;
  opacity: 0;
}

button[type="submit"] i {
  transition: all .4s ease-in-out;
  color: #ffffff;
}

form:hover button[type="reset"] i {
  opacity: 1;
}
</style>

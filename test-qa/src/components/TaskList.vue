<template>
  <transition-group name="list" tag="ul">
    <li
      v-for="task in tasks"
      :key="task[0]"
    >
      <slot name="before" v-bind:hash="task[0]" />
      <span>
        {{ task[1] }}<br>
        <sub>
          {{ task[0] }}
        </sub>
      </span>
      <button
        type="button"
        @click="$store.commit('del', task[0])"
      >
        <i class="material-icons">
          delete
        </i>
      </button>
    </li>
  </transition-group>
</template>

<script>
import { Map } from 'immutable';

export default {
  props: {
    tasks: {
      type: Map,
      default: () => Map(),
    },
  },
};
</script>

<style scoped>
ul {
  flex-direction: column;
  list-style: none;
  display: flex;
}

li {
  align-items: center;
  box-shadow: 0px 0px 10px #e2e4ec;
  border: 1px solid #e2e4ec;
  border-radius: 5px;
  display: flex;
  position: relative;
  padding: 15px 15px;
  font-size: 16px;
  margin-bottom: 10px;
}

span {
  flex-basis: 100%;
  text-align: left;
  align-self: center;
}

sub {
  font-size: 12px;
  margin-top: 0;
  color: #9a9fac;
}

button {
  width: 35px;
  height: 35px;
  outline: none;
  outline-color: transparent;
  background-color: transparent;
}

i {
  color: #9a9fac;
  opacity: 0;
  transition: all .2s ease-in;
}

li:hover i {
  opacity: 1;
}
.list-item {
  display: inline-block;
  margin-right: 10px;
}
.list-enter-active, .list-leave-active {
  transition: all 1s;
}
.list-enter, .list-leave-to /* .list-leave-active below version 2.1.8 */ {
  opacity: 0;
  transform: translateX(30px);
}
</style>

import Vue from 'vue';
import Vuex from 'vuex';
import { Map } from 'immutable';

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    todos: Map(),
    done: Map(),
  },
  mutations: {
    add(state, task: string) {
      const hash = Math.abs((Math.random() * 1000) - 100).toFixed(0).substr(0, 5) + 100;
      state.todos = state.todos.set(hash, task);
    },
    done(state, hash: string) {
      const task = state.todos.get(hash);
      state.todos = state.todos.delete(hash);
      state.done = state.done.set(hash, task);
    },
    del(state, hash: string) {
      state.todos = state.todos.delete(hash);
      state.done = state.done.delete(hash);
    },
    clear(state) {
      state.todos = state.todos.clear();
    },
  },
  actions: {
    add({ commit }, text: string) {
      let tasks = [text];

      if (text.includes(';')) {
        tasks = text.split(';');
      }

      tasks.forEach((task) => task && commit('add', task));
    },
  },
});

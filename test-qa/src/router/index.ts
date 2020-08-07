import Vue from 'vue';
import VueRouter, { RouteConfig } from 'vue-router';
import Todo from '@/views/Todo.vue';

Vue.use(VueRouter);

const routes: Array<RouteConfig> = [
  {
    path: '/todo',
    name: 'Todo',
    component: Todo,
  },
  {
    path: '/done',
    name: 'Done',
    component: () => import('@/views/Done.vue'),
  },
  {
    path: '**',
    redirect: '/todo',
  },
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
});

export default router;

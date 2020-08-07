<template>
  <main id="app">
    <h1>To Do</h1>
    <nav>
      <router-link to="/todo" active-class="active">TODO</router-link>
      <router-link to="/done" active-class="active">DONE</router-link>
    </nav>
    <router-view />
  </main>
</template>

<style>
* {
  margin: 0;
  padding: 0;
  border: 0;
  font: inherit;
  font-size: 100%;
  color: #38404d;
  font-family: Lato;
  vertical-align: baseline;
}

#app {
  display: flex;
  align-items: center;
  flex-direction: column;
}

header,
nav,
section {
  display: block;
}
body {
  line-height: 1;
}

form {
  display: flex;
  box-shadow: 0px 0px 10px #e2e4ec;
  border: 1px solid #e2e4ec;
  border-radius: 5px;
  margin: 15px 0;
}

h1 {
  margin-top: 32px;
  font-size: 32px;
}

nav {
  width: 100%;
  display: flex;
  max-width: 360px;
  padding: 15px 10px;
  justify-content: space-around;
}

a {
  margin: 15px 0;
  color: #3764d6;
  border-radius: 5px;
  padding: 10px 25px;
  text-decoration: none;
  border: 1px solid #3764d6;
  transition: all .3s ease-in-out;
  box-shadow: 0px 0px 10px #e2e4ec;
}

a.active {
  color: #ffffff;
  background-color: #3764d6;
}

.page {
  width: 100%;
  max-width: 360px;
}
</style>

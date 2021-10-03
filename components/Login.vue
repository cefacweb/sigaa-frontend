<template>
  <div>
    <div>
      <label for="user">Username</label>
      <input v-model="username" type="text" id="user" name="user">

      <label for="password">Password</label>
      <input v-model="password" type="text" id="password" name="password">

      <button v-on:click="myMethod($event)">Login</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Login',
  data() {
    return {
      username: "",
      password: ""
    }
  },

  methods: {
    myMethod: async function myMethod() {
      await this.$axios.$get('/api/v1/auth/csrf-cookie');

      await this.$axios.$post('/api/v1/auth/simpleauth/login', {
        email: this.username,
        password: this.password
      })
      .then(() => {
        this.$router.push('/home');
      })
    }
  },
}
</script>

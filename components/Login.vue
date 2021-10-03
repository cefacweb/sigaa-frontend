<template>
  <div>
    <div>
      <label for="user">Username</label>
      <input v-model="username" type="text" id="user" name="user">

      <label for="password">Password</label>
      <input v-model="password" type="text" id="password" name="password">

      <button v-on:click="login($event)">Login</button>
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
    login: async function login() {
      this.$auth.login({
        data: {
          email: this.username,
          password: this.password
        }
      }).then(() => this.$toast.success('Logged In!'))
    }
  }
}
</script>

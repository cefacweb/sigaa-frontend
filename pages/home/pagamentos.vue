<template>
  <div>
    <div>
      <label for="user">Username</label>
      <input v-model="username" type="text" id="user" name="user" />

      <label for="value">Value</label>
      <input v-model="value" type="text" id="value" name="value" />

      <label for="type">Type</label>
      <input v-model="type" type="text" id="type" name="type" />

      <button v-on:click="login($event)">Login</button>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  name: 'Login',
  layout: 'logged',
  middleware: 'auth',

  data() {
    return {
      username: '',
      value: '',
      type: '',
    }
  },

  methods: {
    login: async function login() {
      await this.$axios
        .$post('/api/v1/auth/simpleauth/login', {
          email: this.username,
          password: this.password,
        })
        .then(() => {
          this.$router.push('/home')
        })
    },
  },
}
</script>

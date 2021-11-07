<template>
  <v-app>
    <v-container fill-height fluid class="x-ctn">
      <v-row>
        <v-card
          elevation="2"
          class="d-flex flex-column mx-auto pa-4"
          max-width="380"
          outlined
        >
          <v-card-text>
            <v-row class="d-flex flex-column mx-0 mb-2">
              <v-text-field
                v-model="username"
                name="input-10-1"
                label="Login"
              ></v-text-field>
            </v-row>

            <v-row class="d-flex flex-column mx-0 mb-2">
              <v-text-field
                v-model="password"
                :append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
                :type="showPassword ? 'text' : 'password'"
                name="input-10-1"
                label="Senha"
                @click:append="showPassword = !showPassword"
              ></v-text-field>
            </v-row>
          </v-card-text>

          <v-card-actions class="justify-end">
            <v-btn elevation="1" v-on:click="login($event)"> Login </v-btn>
          </v-card-actions>
        </v-card>
      </v-row>
    </v-container>
  </v-app>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'Login',

  data() {
    return {
      showPassword: false,
      username: '',
      password: '',
    }
  },

  methods: {
    async login() {
      this.$auth
        .login({
          data: {
            email: this.username,
            password: this.password,
          },
        })
        .catch((error) => this.$toast.error(error.response.data.message))
    },
  },
})
</script>

<template>
<v-app>
  <v-container v-if="error.statusCode !== 200">
    <v-row
      justify="center" 
      align="center"
      style="height: 150px;">
      <v-alert
        elevation="2"
        outlined
        prominent
        text
        type="error"
        icon="mdi-alert"
        max-width=350>
        {{ getErrorStatus }}
      </v-alert>
    </v-row>
    <v-row 
      justify="center" 
      align="center">
      <v-col 
        class="shrink">
        <v-btn
          to="/">
          Home Page        
        </v-btn>
      </v-col>
    </v-row>
  </v-container>
  </v-app>
</template>

<script lang="ts">
  import Vue from 'vue'

  export default Vue.extend( {
    layout: 'empty',
    props: {
      error: {
        type: Object,
        default: null
      }
    },
    data () {
      return {
      }
    },
    head: function () {
      const title = this.getErrorMessage(this.error.statusCode)
      return {
        title
      }
    },
    computed: {
      getErrorStatus: function () {
        return this.getErrorMessage(this.error.statusCode)
      }
    },
    methods: {
      ready () {
        this.$vuetify.theme.dark = false
      },

      getErrorMessage: function (errorCode: number): String {
        const pageNotFound = 'Página não encontrada'
        const otherError = 'Ocorreu um erro'        
        const errorMsg = errorCode.toString() + " " +
                         (errorCode === 404 ? pageNotFound : otherError)
        return errorMsg
      }
    },
  })
</script>

<style scoped>
h1 {
  font-size: 20px;
}
</style>

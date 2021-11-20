<template>
  <v-app dark>
    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>

    <v-footer
      :app=true
    >
      <v-row>
      <v-col
        align-self="start"
        sm="1"
      >
      </v-col>
      <v-col
        align-self="center"
      >
        <div align="center">
          CEFAC - Centro Espírita Fé, Amor e Caridade  |  Blumenau-SC  |  {{ new Date().getFullYear() }}
        </div>
      </v-col>
      <v-col
        align-self="end"
        sm="1"
      >
          <v-btn
            @click="toggleDarkMode"
            icon
            hint="Alterna entre o modo claro e escuro da aplicação"
            label="Modo claro/escuro"
          >
            <v-icon>
              mdi-theme-light-dark
            </v-icon>
          </v-btn>
      </v-col>
      </v-row>
    </v-footer>
  </v-app>
</template>

<script lang="ts">
  import Vue from 'vue'

  export default Vue.extend( {
    data () {
      return {
        clipped: false,
        drawer: false,
        fixed: false,
        miniVariant: false
      }
    },

    methods: {
      toggleDarkMode () {
        this.$vuetify.theme.dark = !this.$vuetify.theme.dark
      }
    }    
  })
</script>

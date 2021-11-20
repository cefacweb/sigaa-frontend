<template>
  <v-container>
    <Nuxt />
    <div>
      Tela de Boas Vindas
      <v-img
        src="./logo_sigaa.png"
        max-height="239"
        max-width="257"
      >
      </v-img>
    </div>
  </v-container>
</template>

<script lang="ts">
  import Vue from 'vue'

  export default Vue.extend({
      data () {
        return {
          clipped: false,
          drawer: false,
          fixed: false,
          miniVariant: false,
          title: 'SIGAA',
          items: [
            {icon: 'mdi-account-multiple-outline', title: "Atendimentos", to: "home/atendimentos", sub: []},
            {icon: 'mdi-cart-outline', title: "Entrega de Alimentos", to: "home/alimentos", sub: []},
            {icon: 'mdi-car-outline', title: "Visita Domiciliar", to: "home/visitas", sub: []},
            {icon: 'mdi-calendar-check-outline', title: "Chamada de Oficinas", to: "home/oficinas", sub: []}
//            {icon: 'mdi-inbox-multiple-outline', title: "Consulta Itens (*)", to: "/consultapessoa", sub: itemsGerais},
//            {icon: 'mdi-inbox-multiple-outline', title: "Lista Itens (*)", to: "/cadastros/alimentos", sub: itemsGerais},
//            {icon: 'mdi-inbox-multiple-outline', title: "Registra Item (*)", to: "/cadastros/parentescos/registraitem", sub: itemsGerais},
//            {icon: 'mdi-inbox-multiple-outline', title: "Cadastros Gerais", to: "/cadastros/parentescos/registraitem", sub: itemsGerais},
          ]
        }
      }
  })
</script>

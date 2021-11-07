<template>
  <v-app dark>
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      :clipped="clipped"
      fixed
      app
    >
      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
        >
          <v-list-item-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title v-text="item.title" />
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar
      :clipped-left="clipped"
      fixed
      app
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <v-toolbar-items
        v-for="(item, i) in items"
        :key="i"
        >
          <v-btn 
            :key="i"
            :to="item.to"
            router
            exact
          >
            <v-icon>{{ item.icon }}</v-icon>
            {{item.title}}
          </v-btn>
      </v-toolbar-items>
    </v-app-bar>

    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>

    <v-footer
      :absolute="!fixed"
      app
    >
      <span>CEFAC - Centro Espírita Fé, Amor e Caridade  |  Blumenau-SC  |  {{ new Date().getFullYear() }}</span>
    </v-footer>
  </v-app>
</template>

<script>
  const itemsGerais = [
    {icon: '', title: "Parentesco", to: "/parentescos"}
  ]

  export default {
    data () {
      return {
        clipped: false,
        drawer: false,
        fixed: false,
        items: [
          {icon: 'mdi-home-outline', title: "", to: "/home", sub: []},
          {icon: 'mdi-account-multiple-outline', title: "Atendimentos", to: "/home/atendimentos", sub: []},
          {icon: '', title: "Pagamentos", to: "/home/pagamentos", sub: []},
          {icon: 'mdi-cart-outline', title: "Entrega de Alimentos", to: "/home/alimentos", sub: []},
          {icon: 'mdi-car-outline', title: "Visita Domiciliar", to: "/home/visitas", sub: []},
          {icon: 'mdi-calendar-check-outline', title: "Chamada de Oficinas", to: "/home/oficinas", sub: []},
          {icon: 'mdi-inbox-multiple-outline', title: "Cadastros Gerais", to: "/home/cadastros/parentescos", sub: itemsGerais},
        ],
        miniVariant: false,
        title: 'SIGAA'
      }
    }
  }
</script>

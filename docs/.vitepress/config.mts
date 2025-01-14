import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "myasm",
  description: "a tutorial for x86-64 assemably tutorial",
  base: '/myasm/',
  // favicon
  head: [
    ['link', { rel: 'icon', href: '/myasm/favicon.ico' }]
  ],

  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    logo: '/nasm.png',
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Docs', link: '/get_started' }
    ],

    sidebar: [
      {
        text: 'Docs',
        items: [
          { text: 'Get Started', link: '/get_started' },
          { text: 'About', link: '/about' }
        ]
      }
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/BriceLucifer/myasm' }
    ],

    // search bar
    search: {
      provider: 'local',
    },
  },

  // math
  markdown: {
    math: true
  }
})

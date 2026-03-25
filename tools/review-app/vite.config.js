import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import { resolve } from 'path'

export default defineConfig({
  plugins: [react()],
  server: {
    port: 3456,
  },
  resolve: {
    alias: {
      '@lore': resolve(__dirname, '../../'),
    }
  }
})

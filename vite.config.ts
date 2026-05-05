import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  define: {
    // This prevents the "process is not defined" error
    'process.env': {},
  },  
  server: {
    host: '0.0.0.0', // Listen on all network interfaces
    port: 3000,      // Keep this at 3000 to match your current logs
    strictPort: true,
    hmr: {
      clientPort: 5173, // CRITICAL: Tells the browser to look for updates on 5173
    },
  },
})


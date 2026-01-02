import { defineConfig } from "vite";
import laravel from "laravel-vite-plugin";
import vue from "@vitejs/plugin-vue";
export default defineConfig(({ command }) => {
    const isDev = command === 'serve'
    const host = command === 'serve' ? 'localhost':process.env.ASSET_URL;
    const protocol = command === 'serve' ? 'ws' : 'wss';
    const port = command === 'serve' ? 5173 : 443;
    return {
        server: isDev ?{
            host: '0.0.0.0',
            hmr: {
                host: host,
                protocol: protocol,
                port: port,
            },
            strictPort: true,
            port: 5173,
            watch: {
                usePolling: true,
                interval: 100,
                ignored: ['**/node_modules/**', '**/vendor/**'],
            },
        } : undefined,
        plugins: [
            laravel({
                input: ["resources/scss/app.scss", "resources/js/app.js"],
                refresh: true,
            }),
            vue({
                template: {
                    transformAssetUrls: {
                        base: null,
                        includeAbsolute: false,
                    },
                },
            }),
        ],
    }
});

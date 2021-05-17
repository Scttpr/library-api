module.exports = ({ env }) => ({
  settings: {
    cors: {
      enabled: true,
      origin: [env('CLIENT_HOST', 'http://localhost'), env('STRAPI_URL', 'http://localhost')],
    },
  },
});

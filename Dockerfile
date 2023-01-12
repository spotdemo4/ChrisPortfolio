# Pull node base image
FROM node:19-alpine

# Install node dependencies
WORKDIR /svelte
COPY ./package.json .
RUN npm install

# Build node server
COPY . .
RUN npm run build

# Launch app
CMD ["node", "build/index.js"]
EXPOSE 3000
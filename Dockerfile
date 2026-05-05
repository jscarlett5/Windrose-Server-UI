# Use Node for building the app
FROM node:20-slim

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your code
COPY . .

# Expose the default Vite port
EXPOSE 5173

# Run the dev server, allowing external connections
CMD ["npm", "run", "dev", "--", "--host"]

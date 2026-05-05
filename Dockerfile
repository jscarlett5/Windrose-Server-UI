FROM node:20

WORKDIR /app

# Copy package files
COPY package*.json ./

# Clean install to ensure no architecture mismatches
RUN npm ci

# Copy the rest of the code
COPY . .

EXPOSE 3000

# Use --host to ensure Vite broadcasts correctly
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "3000"]

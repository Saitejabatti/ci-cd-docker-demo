# Use Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]

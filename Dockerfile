# Use lightweight Node.js image
FROM node:18-alpine

# Create app directory inside container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

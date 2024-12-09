# Use a lightweight Node.js image
FROM node:22.0

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Build the application
RUN npm run build

# Expose the application port
EXPOSE 5000

# Run the app
CMD ["npm", "start"]

# Use the official Node.js image from Docker Hub
FROM node:14

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Expose the port on which the app will run
EXPOSE 3000

# Run the app when the container starts
CMD ["npm", "start"]

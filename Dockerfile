# First stage: Build stage
FROM node:14 AS build

# Set the working directory in the container
WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Clone the repository from GitHub
RUN git clone https://github.com/Yaswanthb13/weather-deployment.git .

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React application
RUN npm run build

# Second stage: Final stage
FROM nginx:alpine

# Copy the build output from the build stage to the nginx web server directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to start the nginx web server
CMD ["nginx", "-g", "daemon off;"]

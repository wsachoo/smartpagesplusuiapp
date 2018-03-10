#  Create a new image from the base nodejs 7 image.
#FROM node:6.12.0-alpine
FROM ibmcom/ibmnode

# Create the target directory in the imahge
RUN mkdir -p /app

# Set the created directory as the working directory
WORKDIR /app

# Copy the client application source files. You can use .dockerignore to exlcude files. Works just as .gitignore does.
COPY . /app

# Install required dependencies
RUN npm install

# Open port 4200. This is the port that our development server uses
EXPOSE 4200

# Start the application. This is the same as running ng serve.
CMD ["npm", "start"]
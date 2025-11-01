# Label: Use node alpine image
FROM node:16-alpine

# Label: Set working directory
WORKDIR /usr/src/app

# Label: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Label: Copy rest of the app code
COPY . .

# Label: Expose port where app runs
EXPOSE 3000

# Label: Command to start app
CMD ["node", "app.js"]


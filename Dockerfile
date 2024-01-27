FROM ubuntu:latest

# Update package lists and install dependencies in a single RUN command for efficiency
RUN apt update -y && \
    apt install -y nodejs npm git

# Create the working directory
WORKDIR /Netflix

# Clone the repository directly into the working directory
RUN git clone https://github.com/sidmulajkar/netflix-clone-using-react.git .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]

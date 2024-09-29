## Project Overview

This project demonstrates a simple Dockerized Python application. The application, defined in `hello.py`, prints "Hello, World!" when run. This guide will walk you through building, running, and pushing the Docker image to Docker Hub.

## Prerequisites

- Docker installed on your machine
- A Docker Hub account (for pushing the image)

## Project Structure

```
project-root/
│
├── Dockerfile         # Dockerfile for building the container
├── hello.py           # Python script that prints "Hello, World!"
├── requirements.txt   # Python dependencies (optional)
└── README.md          # Project documentation
```

## Getting Started

### 1. Create the `Dockerfile`

Here's the `Dockerfile` used to build the Docker image:

```dockerfile
# Use the official Python image
FROM python:3.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
# Uncomment the following line if a requirements.txt file is used
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80 to the host machine
EXPOSE 80

# Set an environment variable
ENV NAME World

# Run hello.py when the container launches
CMD ["python", "hello.py"]
```

### 2. Build the Docker Image

Navigate to the project directory (where the `Dockerfile` is located) and build the Docker image:

```bash
docker build -t friendlyhello .
```

### 3. Run the Docker Container

Run the Docker container using the following command:

```bash
docker run -p 4000:80 friendlyhello
```

### 4. Test the Application

Once the container is running, you can test the application using `curl`:

```bash
curl http://localhost:4000
```

You should see the output:

```
Hello, World!
```

### 5. Push the Docker Image to Docker Hub

To share the Docker image, tag it and push it to Docker Hub:

```bash
docker tag friendlyhello YOUR_DOCKERHUB_USERNAME/friendlyhello
docker push YOUR_DOCKERHUB_USERNAME/friendlyhello
```

### 6. Pull and Run the Docker Image from Docker Hub

You can also pull and run the Docker image from Docker Hub:

```bash
docker run -p 4000:80 YOUR_DOCKERHUB_USERNAME/friendlyhello
```

## Additional Python Code

The `hello.py` script includes a basic Python loop:

```python
for i in range(5):
    print("Hello, World!")
```

## Cleanup

To stop and remove the running container, use:

```bash
docker ps
docker stop <container-id>
docker rm <container-id>
```

## Contributing

Contributions, issues, and feature requests are welcome. Feel free to check out the [issues](https://github.com/YOUR_GITHUB_USERNAME/your-repo/issues) page if you have any questions or suggestions.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
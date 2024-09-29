FROM python:3.7-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app\
COPY . /app/

# Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "hello.py"]
# ```

# ### 2. Build the Docker image

# ```bash
# docker build -t friendlyhello .
# ```

# ### 3. Run the Docker container

# ```bash
# docker run -p 4000:80 friendlyhello
# ```

# ### 4. Test the app

# ```bash
# curl http://localhost:4000
# ```

# ### 5. Push the Docker image to Docker Hub

# ```bash
# docker tag friendlyhello YOUR_DOCKERHUB_USERNAME/friendlyhello
# docker push YOUR_DOCKERHUB_USERNAME/friendlyhello
# ```

# ### 6. Pull and run the Docker image from Docker Hub

# ```bash
# docker run -p 4000:80 YOUR_DOCKERHUB_USERNAME/friendlyhello
# ```


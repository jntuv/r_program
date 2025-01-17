# Use a valid R base image
FROM rocker/r-ver:4.3.0

# Install plumber package
RUN R -e "install.packages('plumber')"

# Copy the API script into the container
COPY api.R /app/api.R

# Set the working directory
WORKDIR /app

# Expose the port your API will use
EXPOSE 8000

# Start the Plumber API
CMD ["R", "-e", "plumber::plumb('api.R')$run(host='0.0.0.0', port=8000)"]

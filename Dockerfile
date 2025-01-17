FROM rocker/r-ver:4.3.0  # Use an R base image

# Install plumber
RUN R -e "install.packages('plumber')"

# Copy API script into the container
COPY api.R /app/api.R
WORKDIR /app

# Expose port 8000
EXPOSE 8000

# Run the Plumber API
CMD ["R", "-e", "plumber::plumb('api.R')$run(host='0.0.0.0', port=8000)"]


FROM alpine:latest AS builder



WORKDIR /app



# Copy all files
COPY . .

# Stage 2: Production stage

FROM nginx:alpine



# This command is to remove default Nginx files
RUN rm -rf /usr/share/nginx/html/*


# This is to Copy only needed files from builder stage
COPY --from=builder /app /usr/share/nginx/html


# exposing port 80 on the conatiner which will be mapped to an host port
EXPOSE 80


# this command is used to keep the Nginx process running in the foreground, 
# ensuring the Docker container does not shut down immediately after starting
CMD ["nginx", "-g", "daemon off;"]
FROM golang
# Name and Email of the author 
MAINTAINER Nildiert Jimenez <niljordan23@gmail.com>
# Create app folder 

RUN mkdir /app

COPY . /app

WORKDIR /app


# Generate binary file from our /app

RUN go build -o main .

# Expose the port 3000
EXPOSE 8080:8080
# Run the app binarry file 

CMD [ "./main"]
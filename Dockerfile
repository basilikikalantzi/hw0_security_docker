FROM alpine

RUN apk add --no-cache g++ make

COPY movies.cpp .

# Compile
RUN g++ -o movies movies.cpp

CMD ["./movies"]
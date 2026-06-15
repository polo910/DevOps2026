FROM alpine:latest
RUN apk add --no-cache python3
RUN echo "Hello! Serwer aplikacji wdrożony automatycznie przez GitHub Actions na ocene 5.0!" > index.html
EXPOSE 9898
CMD ["python3", "-m", "http.server", "9898"]

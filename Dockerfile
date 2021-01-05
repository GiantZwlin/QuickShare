FROM node:latest AS frontend
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

FROM golang:latest AS backend
WORKDIR /app
RUN git clone https://github.com/GiantZwlin/quickshareserver
WORKDIR /app/quickshareserver
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go build

FROM ubuntu:latest
WORKDIR /app
COPY --from=frontend /app/dist ./dist
COPY --from=backend /app/quickshareserver/quickshare .
EXPOSE 80
CMD ["./quickshare"]
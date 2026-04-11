# ===========================
# Stage 1: Builder (Alpine)
# ===========================
FROM python:3.9.25-alpine3.21 AS builder
WORKDIR /opt/server
# Build deps for uwsgi & friends
RUN apk add --no-cache \
    build-base \
    linux-headers \
    pcre-dev
# Only requirements first for caching
COPY requirements.txt .
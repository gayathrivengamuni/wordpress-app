# Use the official WordPress image
FROM wordpress:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    nginx \
    lua5.1 \
    liblua5.1-0-dev \
    build-essential
RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get install -y libpq-dev
RUN apt-get update && apt-get install -y libpcre3-dev
RUN apt-get update && apt-get install -y zlib1g-dev

# Set up Nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
RUN wget https://openresty.org/download/openresty-1.19.9.1.tar.gz && \
    tar -xzf openresty-1.19.9.1.tar.gz && \
    cd openresty-1.19.9.1 && \
    ./configure --prefix=/opt/openresty \
                --with-pcre-jit \
                --with-ipv6 \
                --without-http_redis2_module \
                --with-http_iconv_module \
                --with-http_postgres_module \
                -j8 && \
    make && \
    make install
# Clean up
RUN rm -rf openresty-1.19.9.1.tar.gz openresty-1.19.9.1

# Expose ports
EXPOSE 80
EXPOSE 443

# Start Nginx and WordPress
CMD ["nginx", "-g", "daemon off;"]

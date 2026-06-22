FROM nginx:stable-alpine

# small utilities for debugging
RUN apk add --no-cache curl bash

# copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

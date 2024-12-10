FROM node:20.18.0-alpine

ARG NEXT_PUBLIC_API_URL=http://fcoco404048oso8gc04k044k.159.69.19.216.sslip.io:3001/api
ARG NEXT_PUBLIC_WS_URL=ws://fcoco404048oso8gc04k044k.159.69.19.216.sslip.io:3001

ENV NEXT_PUBLIC_API_URL=${NEXT_PUBLIC_API_URL}
ENV NEXT_PUBLIC_WS_URL=${NEXT_PUBLIC_WS_URL}
ENV PORT=3000  # Explicitly set PORT

WORKDIR /home/perplexica

COPY ui /home/perplexica/

RUN yarn install --frozen-lockfile
RUN yarn build

CMD ["yarn", "start", "-p", "3000"]  # Explicitly specify port

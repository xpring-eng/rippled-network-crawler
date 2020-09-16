FROM node:12

RUN mkdir scratch
ADD . / scratch/

RUN npm --prefix scratch install

FROM node:12-alpine
RUN mkdir -p /crawler

COPY --from=0 /scratch /crawler

WORKDIR /crawler

CMD ["node", "index"]

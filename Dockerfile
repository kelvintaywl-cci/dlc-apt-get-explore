FROM ubuntu:focal

RUN apt-get update \
    && apt-get install apt-utils software-properties-common --yes \
    && add-apt-repository ppa:ondrej/apache2 --yes \
    && add-apt-repository ppa:ondrej/php --yes

CMD ["echo", "hello"]

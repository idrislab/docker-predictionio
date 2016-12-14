FROM sphereio/predictionio

RUN apt-get update && apt-get upgrade -y && apt-get install -y git  && apt-get autoremove

RUN pip install --upgrade pip;pip install setuptools;pip install predictionio

EXPOSE 8000

ADD sentiment/ /sentiment

ADD run.sh /run.sh

WORKDIR /sentiment

ENTRYPOINT /run.sh

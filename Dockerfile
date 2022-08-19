FROM openjdk:8-jre
LABEL maintainer="spot@ebi.ac.uk" 

WORKDIR /work

ENV SNOMED_VERSION=20200131
ENV SNOMED_ZIP=SnomedCT_InternationalRF2_PRODUCTION_${SNOMED_VERSION}T120000Z.zip

###### SNOMED OWL TOOLKIT ######
ENV SOT_VERSION 3.0.6
ENV SOT_JAR=https://github.com/IHTSDO/snomed-owl-toolkit/releases/download/$SOT_VERSION/snomed-owl-toolkit-${SOT_VERSION}-executable.jar
ENV SOT=/tools/snomed-owl-toolkit.jar
RUN mkdir /tools && wget $SOT_JAR -O /tools/snomed-owl-toolkit.jar && \
    chmod +x $SOT

COPY prepare_snomed.sh /tools/prepare_snomed.sh

ENV SNOMED_OWL=snomed_${SNOMED_VERSION}.owl

CMD sh /tools/prepare_snomed.sh

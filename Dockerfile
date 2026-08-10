FROM python:3.15.0rc1-alpine
WORKDIR /usr/src/myapp
# Optionally pin the installed version so `build-all` can rebuild historical versions.
# An empty value (the normal build) installs the latest release.
ARG IMPLEMENTATION_VERSION
RUN python3 -m pip install "jschon${IMPLEMENTATION_VERSION:+==${IMPLEMENTATION_VERSION}}"
COPY bowtie_jschon.py .
CMD ["python3", "bowtie_jschon.py"]

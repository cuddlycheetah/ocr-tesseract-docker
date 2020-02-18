FROM ricktorzynski/ocr-tesseract-docker:latest
RUN apt-get update -y && apt install -y software-properties-common && add-apt-repository ppa:alex-p/tesseract-ocr-devel -y
RUN apt-get install -y python-pip python-dev build-essential
RUN apt update && apt install -y libsm6 libxext6
RUN apt-get -y install tesseract-ocr tesseract-ocr-eng tesseract-ocr-deu
COPY ./app.py /app/app.py
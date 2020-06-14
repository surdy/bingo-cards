FROM python:3.8.3

WORKDIR /usr/src/app

RUN pip3 install numpy pycairo

RUN wget https://github.com/mozilla/Fira/archive/master.zip && unzip master.zip && mkdir -p /usr/share/fonts/truetype/fira && mv Fira-master/ttf/* /usr/share/fonts/truetype/fira && rm -rf master.zip Fira-master

COPY *.py ./

ENTRYPOINT ["python3", "/usr/src/app/generate_pdf.py"]

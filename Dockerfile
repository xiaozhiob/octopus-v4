FROM pytorch/pytorch:2.3.0-cuda11.8-cudnn8-devel

WORKDIR /app

COPY requirements.txt .

RUN python3 -m pip install -r requirements.txt

COPY . /app

EXPOSE 8700

CMD ["/bin/bash"]

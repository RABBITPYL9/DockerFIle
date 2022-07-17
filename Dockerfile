FROM python:3.10-alpine

WORKDIR tests

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

#запуск тестов промеченных как runik

CMD pytest -v -m runik
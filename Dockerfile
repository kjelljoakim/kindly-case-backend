FROM python:3.10.4

WORKDIR /app

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

RUN pip install pipenv
RUN pipenv sync

COPY ./backend ./backend
COPY silly_bot.sqlite silly_bot.sqlite

EXPOSE 8000

CMD [ "pipenv", "run", "uvicorn", "backend.app:app", "--reload", "--host", "0.0.0.0" ]
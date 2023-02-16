# 1 - set base image
FROM python:3.7

# 2 - set the working directory
WORKDIR /app

# 3 - copy files to the working directory
COPY . .

# 4 - pip install reqs
RUN pip install -r requirements.txt

# 5 - command that runs when container starts
CMD ["python", "src/dash/app.py"]
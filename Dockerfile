FROM qts8n/cuda-python:9.1-runtime

RUN pip install pandas

WORKDIR /kill-gpu-zombie
COPY . .
CMD ["python", "detect_and_kill.py", "--check-period-second", "3600", "--memory-threshold-MiB", "20", "--kill-threshold-second", "172800"]

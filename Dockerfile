# https://pythonspeed.com/articles/activate-conda-dockerfile/
FROM continuumio/miniconda3
EXPOSE 8888
WORKDIR /app

# copy everything
COPY environment.yml .
RUN conda env create -f environment.yml

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "datascience", "/bin/bash", "-c"]

# Activate env
RUN echo "Starting Jupyter Lab"
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "datascience", "jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
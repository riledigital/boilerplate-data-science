## Data Science Project Boilerplate

A small step toward reproducibility in Python data science environments. No more
fussing around with broken Pandas + Shapely Pyarrow installs that behave
strangely on Mac OS and Conda default channel. No fussing around with your
system to get a local data science notebook going!

# Setup

This should work cross-platform... `conda env create -f environment.yml`

- Includes Jupyter starter
- R boilerplate coming soon!
- Keep secret keys in .env file

# Docker

- run `make install` to build the Docker image.
- run `make start` to run the Docker image; it will expose port 8888 for running
  Jupyter Lab. You will need to insert the JL token which is emitted in the
  Docker image's logs.

## Image build times are slow

- Be wary that building the Docker image requires significant disk space, time,
  and network bandwidth; it downloads all requirements and creates a conda
  environment based on `environment.yml`.

## Installing packages

- You can comment out packages within `environment.yml` to build your dream
  Python data science environment. All packages source from `conda-forge` by default.

## The project directory is mounted to Docker

- All changes you make within the container should be reflected onto your host
  system; they are persistent across Docker image rebuilds

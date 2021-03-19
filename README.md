## Data Science Project Boilerplate

No more fussing around with broken Pandas + Shapely Pyarrow installs that behave
strangely on Mac OS and Conda default channel. No fussing around with your
system to get a local data science notebook going!

# Setup

This should work cross-platform. `conda env create -f environment.yml`

- Includes Jupyter starter
- R boilerplate coming soon!
- Keep secret keys in .env file

# Docker

- run `setup.sh` to build the Docker image.
- run `start.sh` to run the Docker image; it will expose port 8888 for running
  Jupyter Lab. You will need to insert the JL token which is emitted in the
  Docker image's logs.

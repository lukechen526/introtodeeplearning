FROM nvcr.io/nvidia/tensorflow:21.02-tf2-py3

# Install dependencies
RUN apt-get update && apt-get install -y python3-opencv
RUN pip install tqdm matplotlib numpy opencv-python

# Run jupyter
WORKDIR /workspace
EXPOSE 8888
CMD ["jupyter", "lab"]
FROM ghcr.io/jeertmans/manim-slides:v5.1.10

USER root
RUN pip install notebook

ARG NB_USER=manimslidesuser
USER ${NB_USER}

COPY --chown=manimslidesuser:manimslidesuser . /manim-slides

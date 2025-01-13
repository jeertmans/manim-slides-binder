FROM ghcr.io/jeertmans/manim-slides:v5.3.0

USER root
RUN pip install notebook

ARG NB_USER=manimslidesuser
USER ${NB_USER}

COPY --chown=manimslidesuser:manimslidesuser . /manim-slides

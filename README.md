# GRAWO-Net_Glitch_Detection
Glitch Recognition and Analysis with Optimized Generative Models

GRAWO-Net is a deep learning framework designed to improve the classification of transient noise glitches in gravitational-wave data. It leverages Conditional DCGANs to generate synthetic spectrograms for underrepresented glitch classes and trains a CNN classifier on both real and GAN-augmented data to enhance detection performance.

The dataset used is the Gravity Spy dataset, which contains labeled spectrograms from the LIGO detectors.
- **Gravity Spy Dataset**: [Zooniverse LIGO Project](https://www.zooniverse.org/projects/zooniverse/gravity-spy)

The GAN is trained in progressive stages up to 250 epochs with dropout regularization, spectral normalization, and an Exponential Moving Average (EMA) generator. We evaluate the GAN using Frechet Inception Distance (FID) and t-SNE visualizations.The CNN classifier is trained on real data and later evaluated on a combined dataset of real and synthetic images. Performance metrics include accuracy, F1 score, AUC-ROC, confusion entropy (CEN), and false alarm rate (FAR). ROC-based confidence filtering is also implemented.

This repository contains four main scripts: GAN training, image generation + evaluation, CNN training, and classifier testing. It is designed for Google Colab with Google Drive integration. Results include balanced class distributions, improved classification, and interpretable visualizations.For reproducibility, model checkpoints and generated samples are saved at defined epochs. The final generator and trained classifier are included for direct evaluation and reuse.


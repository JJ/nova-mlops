""" Deal with the increment in losses reported by Ukraine MoD. See README.md for details
    """

from pycaret.regression import *
import pandas as pd


def train(training_data):
    s = setup(training_data, target='Losses', silent=True,
              log_experiment=True, experiment_name='test')
    best = compare_models()
    evaluate_model(best)
    save_model(best, "test")
    plot_model(best, plot='residuals_interactive')


def process(ipd):
    return ipd.drop(columns="Date")


def go():
    raw = pd.read_parquet('../../data/ukr-mod-deltas.parquet')
    training_data = process(raw)
    train(training_data)

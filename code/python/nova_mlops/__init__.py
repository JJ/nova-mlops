""" Deal with the increment in losses reported by Ukraine MoD. See README.md for details
    """

from pycaret.regression import *
import pandas as pd


def train():
    train = pd.read_parquet('../../data/ukr-mod-deltas.parquet')
    s = setup(train, target='Losses', silent=True,
              log_experiment=True, experiment_name='test')
    best = compare_models()
    evaluate_model(best)
    save_model(best, "test")
    plot_model(best, plot='residuals_interactive')

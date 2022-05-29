#!/usr/bin/env python

import neptune.new as neptune
from dotenv import load_dotenv
import os

load_dotenv()
run = neptune.init(
    project="jjmerelo/Nova",
    api_token=os.getenv("NEPTUNE_API_TOKEN"),
)  # your credentials

params = {"learning_rate": 0.001, "optimizer": "Adam"}
run["parameters"] = params

for epoch in range(10):
    run["train/loss"].log(0.9 ** epoch)

run["eval/f1_score"] = 0.66

run.stop()

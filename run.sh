#! /bin/sh
# Copyright 2025 Carnegie Mellon University

sbcl --dynamic-space-size 20000 --eval "(in-package :cl-user)" --load http-server --eval "(jh:run-standalone)"

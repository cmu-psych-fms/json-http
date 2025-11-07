#!/bin/bash
# Copyright 2025 Carnegie Mellon University

exec sbcl --load quicklisp/setup.lisp --load http-server.lisp --eval '(jh:run-standalone)'

#!/bin/sh
chromium --profile-directory="Profile 1" --disable-gpu-vsync $@ &

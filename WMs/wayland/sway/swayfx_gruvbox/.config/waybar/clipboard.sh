#!/bin/bash
exec grim -g "$(slurp)" - | wl-copy

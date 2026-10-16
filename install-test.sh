#!/usr/bin/env bash

# Copyright (C) 2026 DauQx82
# SPDX-License-Identifier: GPL-3.0-or-later


PACKAGE="$1"
LOG_DIR="$HOME/logs/install-test"
DATE=$(date +%Y-%m-%d_%H-%M-%S) # Format: YYYY-MM-DD_HH:MM:SS


if [[ -z "$PACKAGE" ]]; then
	echo "Use: $0 <package>"
	exit 1
fi


mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/${PACKAGE}_${DATE}.log"


echo "Starting simulation: $PACKAGE"
echo "Save to: $LOG_FILE"


apt-get -s install --no-install-recommends "$PACKAGE" \
	2>&1 | tee "$LOG_FILE" #stderr → stdout [2 → 1]


STATUS="${PIPESTATUS[0]}"

echo ""
echo "Done. Exit code: $STATUS"

exit "$STATUS"

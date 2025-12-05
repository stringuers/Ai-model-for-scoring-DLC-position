#!/bin/bash

SRC="/Users/kilanimoemen/Desktop/Neural-Network-Visualisation"
DST="/Users/kilanimoemen/Desktop/taki/ChatBotInterface/frontChat/public/neural-network"

echo "Creating directories..."
mkdir -p "$DST/assets/data"
mkdir -p "$DST/exports/mlp_weights"

echo "Copying main.js..."
cp "$SRC/assets/main.js" "$DST/assets/main.js" && echo "✓ main.js copied"

echo "Copying main.css..."
cp "$SRC/assets/main.css" "$DST/assets/main.css" && echo "✓ main.css copied"

echo "Copying data files..."
cp -r "$SRC/assets/data"/* "$DST/assets/data/" && echo "✓ data files copied"

echo "Copying weights.json..."
cp "$SRC/exports/mlp_weights.json" "$DST/exports/mlp_weights.json" && echo "✓ weights.json copied"

echo "Copying weights folder..."
cp -r "$SRC/exports/mlp_weights"/* "$DST/exports/mlp_weights/" && echo "✓ weights folder copied"

echo ""
echo "Verification:"
ls -lh "$DST/assets/" 2>&1
ls -lh "$DST/exports/" 2>&1
echo ""
echo "Done! Files copied successfully."


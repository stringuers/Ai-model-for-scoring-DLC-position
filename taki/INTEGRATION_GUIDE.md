# Guide d'intégration de la visualisation Neural Network

## Fichiers à copier

Pour intégrer la visualisation Neural Network dans la page, vous devez copier les fichiers suivants depuis `/Users/kilanimoemen/Desktop/Neural-Network-Visualisation` vers `/Users/kilanimoemen/Desktop/taki/ChatBotInterface/frontChat/public/neural-network` :

### Structure de dossiers à créer :
```
public/neural-network/
├── index.html (déjà créé)
├── assets/
│   ├── main.js
│   ├── main.css
│   └── data/
│       ├── mnist-test-images-uint8.bin
│       ├── mnist-test-labels-uint8.bin
│       └── mnist-test-manifest.json
└── exports/
    ├── mlp_weights.json
    └── mlp_weights/
        ├── 000_initial.json
        ├── 001_approx-50.json
        └── ... (tous les fichiers de poids)
```

### Commandes à exécuter :

```bash
cd /Users/kilanimoemen/Desktop/taki/ChatBotInterface/frontChat/public/neural-network

# Créer les dossiers
mkdir -p assets/data exports/mlp_weights

# Copier les fichiers principaux
cp /Users/kilanimoemen/Desktop/Neural-Network-Visualisation/assets/main.js assets/
cp /Users/kilanimoemen/Desktop/Neural-Network-Visualisation/assets/main.css assets/

# Copier les données MNIST
cp -r /Users/kilanimoemen/Desktop/Neural-Network-Visualisation/assets/data/* assets/data/

# Copier les poids du réseau
cp /Users/kilanimoemen/Desktop/Neural-Network-Visualisation/exports/mlp_weights.json exports/
cp -r /Users/kilanimoemen/Desktop/Neural-Network-Visualisation/exports/mlp_weights/* exports/mlp_weights/
```

## Vérification

Après avoir copié les fichiers, vérifiez que la structure est correcte :
```bash
ls -R /Users/kilanimoemen/Desktop/taki/ChatBotInterface/frontChat/public/neural-network
```

## Utilisation

La page Neural Network chargera automatiquement la visualisation depuis `/neural-network/index.html` via un iframe.


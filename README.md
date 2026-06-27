TODO:

platform/ (branch: main)
├── bootstrap/
│   └── root-appset-manager.yaml       # root app
│
├── argocd-appsets/                    # factory
│   ├── kube-prometheus-stack.yaml
│   └── ingress-nginx.yaml
│
└── apps/                              # envs
    ├── clusters/                      # Cluster base
    │   ├── aks-dev.json
    │   ├── aks-prod-1.json
    │   ├── aks-prod-2.json
    │   ├── aks-prod-3.json
    │   └── eks-dev.json
    │
    └── prom-kube-stack/               # Values
        └── values/
            ├── values-aks-dev.yaml
            ├── values-aks-prod.yaml
            └── values-eks-dev.yaml
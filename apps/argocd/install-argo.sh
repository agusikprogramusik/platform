VERSION=9.5.22
NAMESPACE="argocd"
NAME="argocd"
SCRIPT_DIR="$(dirname "$0")"

kubectl create namespace $NAMESPACE 2>/dev/null || true

helm upgrade --install $NAME oci://ghcr.io/argoproj/argo-helm/argo-cd \
  --version $VERSION \
  --namespace $NAMESPACE \
  -f "$SCRIPT_DIR/argocd-values.yaml"
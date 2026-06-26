# Argo CD repository secrets

This directory stores declarative repository definitions for Argo CD.

## Layout

- `argo-repo.yaml` - a separate `repository` Secret for the Argo CD Helm repo.
- `kube-prom-stack-repo.yaml` - a separate `repository` Secret for the kube prometheus stack Helm repo.
- `platform-repo.yaml` - a separate `repository` Secret for a specific repository.
- `kustomization.yaml` - allows applying the whole bundle with `kubectl apply -k`.

## Usage

Use `repository` when you want to define a single repository.
Use `repo-creds` when you want to cover an entire host, for example all GitHub repositories.

In `Application` resources, you do not reference the Secret name directly. The application still uses `repoURL`, and Argo CD automatically reads the credentials from the Secret.

If one source should serve as a Helm values or manifests repository, add a second source in the `Application` with `ref`, then reference it through `$<alias>/...`.

## Deployment

```bash
kubectl apply -k repos
```

## Note

If the repository is private, it is best to store the credentials outside plain YAML, for example with SOPS or SealedSecrets.
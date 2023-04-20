
LOCAL_MANIFEST_FILE=/Users/mahao/openaios/github.com/allenhaozi/java/crds/openaios.4pd.io_operatordefinitions.yaml
#LOCAL_MANIFEST_FILE=/Users/mahao/openaios/github.com/allenhaozi/java/crds/crontab-crd.yaml

docker run \
  --rm \
  -v "$LOCAL_MANIFEST_FILE":"$LOCAL_MANIFEST_FILE" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$(pwd)":"$(pwd)" \
  -ti \
  --network host \
  ghcr.io/kubernetes-client/java/crd-model-gen:v1.0.6 \
  / \
  -u $LOCAL_MANIFEST_FILE \
  -n com.example.stable \
  -p com.example.stable \
  -o "$(pwd)"

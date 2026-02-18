build:
	podman build -t localhost/localhost/openclaw:latest -f Containerfile

test:
	podman run --rm --name openclaw localhost/localhost/openclaw:latest cat /etc/fedora-release

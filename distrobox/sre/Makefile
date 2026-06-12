build:
	podman build -t localhost/localhost/sre:44 -f Containerfile

test:
	podman run --rm --name sre  localhost/localhost/sre:44 cat /etc/fedora-release

debug:
	podman run --rm -it $(podman images --filter dangling=true -q) bash

clean:
	podman rmi $(podman images -q --filter "dangling=True")

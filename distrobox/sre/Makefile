build:
	podman build -t localhost/localhost/sre:42 -f Containerfile

test:
	podman run --rm --name ops -it localhost/localhost/sre:42 bash

debug:
	podman run --rm -it $(podman images --filter dangling=true -q) bash

clean:
	podman rmi $(podman images -q --filter "dangling=True")

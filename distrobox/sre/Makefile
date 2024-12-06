build:
	podman build -t memorycontainerregistry.azurecr.io/ops .

test:
	podman run --rm --name ops -it memorycontainerregistry.azurecr.io/ops bash

debug:
	podman run --rm -it $(podman images --filter dangling=true -q) bash

clean:
	podman rmi $(podman images -q --filter "dangling=True")

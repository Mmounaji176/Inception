# Inception

# chroot
chroot is one of the underlying mechanisms that Docker leverages to create isolated environments for running containers. However, Docker extends and builds upon chroot to provide a much more comprehensive and powerful containerization solution.
chroot is a basic Unix mechanism that allows you to change the apparent root directory for a process. When a process is run inside a chroot environment, it cannot access files or directories outside of that new root directory. This provides a limited form of isolation.
Docker uses chroot as one of its foundational building blocks. When Docker creates a container, it uses chroot to set up a separate filesystem within the container. This filesystem contains the application and its dependencies, making it isolated from the host system.

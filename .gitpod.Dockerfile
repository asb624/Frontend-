# .gitpod.Dockerfile
FROM gitpod/workspace-full-vnc

# Install Android dependencies
RUN sudo apt update && sudo apt install -y \
    openjdk-17-jdk \
    qemu-kvm \
    android-sdk \
    adb

# Set environment variables
ENV ANDROID_HOME=/usr/lib/android-sdk
ENV PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"

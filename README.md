# Docker4Rust:

This repository contains the logic needed to compile and run Rust code in a Docker container. This way, you can run Rust code on any machine without having to install any tools.

## Usage:

### Run directly:
- Go to the directory where your Rust code is located.

```bash
docker run -it --rm -v $(pwd):/app -w /app jkutkut/docker4rust
```

### Create a release image:
- Take the code from the [release dockerfile](./release/Dockerfile) and edit it to your needs in the root of your project.

- Build the image (`XXXXX` is the name of your image):
```bash
docker build -t XXXXX .
```

**Note 01**: In order to save space, a temporally image is created to build and another is created to run the code.

**Note 02**: The `Dockerfile` copies all the project to the image. If you don't need all the files, you can add a `.dockerignore` file to the root of your project to ignore some files.

## Version log:
- v1.2.0:
    - Alpine 3.20
    - cargo 1.78.0
    - cargo-watch 8.5.2
- v1.1.0:
    - cargo 1.73.0
    - cargo-watch 8.4.1
- v1.0.0:
    - cargo

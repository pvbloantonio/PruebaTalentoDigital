terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.21.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Reemplazar el contenedor Nginx con el contenedor de la aplicación Java
resource "docker_image" "java_app_image" {
  name = "test1_app:latest"
  build {
    context = "../" # Contexto que apunta a la carpeta donde está el Dockerfile
  }
}

resource "docker_container" "java_app_container" {
  image = docker_image.java_app_image.name
  name  = "java_app_container"
  ports {
    internal = 8080
    external = 8080
  }
}

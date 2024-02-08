terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host    = "unix:///run/docker.sock"
}

resource "docker_image" "redis" {
  name = "redis:7.2.3"
}

resource "docker_network" "redis_network" {
  name = "redis-network"
}

resource "docker_container" "redis_server" {
  image  = "redis:7.2.3"
  name   = "redis-server"
}

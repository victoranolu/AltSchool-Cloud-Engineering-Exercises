
variable "route" {
  type    = string
  default = "0.0.0.0/0"
}


variable "ami" {
  type    = string
  default = "ami-00de6c6491fdd3ef5"
}

variable "inst" {
  type    = string
  default = "t2.micro"
}

variable ssh {
  type        = string
  default   = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDsjgzpS4oUN34au5xJOw89xJVqoSiNl0+/2ncMHMD59oE1U9YCWaKa0nOWfN1R9u+0QEK8t4acEv6qDcMoW6JpVTOb1PPbEFzmsMHg73nQ9U/dH+I4dDIZBvLmrot4QODspfZf/ie/5oteiuRevu60y+fcXYEk7OmR6dx+s9h/Kl0REK7s0rCo5zag5l6a/bnJ2lyQIq7FgHE8Q1MBOI3iGCSW+5wBLHWu3GGLgqavViVSytn+OtONuHhb9NRooul6ApFFT140/PXj9m9TaK9kKPQ5paQPnCS0t3joWmP0YvdR3b60Qzywek2jIEVtAHt8HI8Jyqw01pln3eaZpVJCp6dN5mDTeYnoY/KLJsbwRw7zRQHbqgb50rxkgeCKfTJZhq+8WkGT87Qsu6ayzT/EHvF6/PvJfKqQvhE/wQKvmv0koca2UOxUANKoWfHl9NhctEnPOuZy1oITqBWpw4sy1HHeKcLzxUNDwBC3LkugAIZyZquD/O4eC0dnHdOZYcc= root@ubuntu-focal"  
  description = "ssh-key"
}

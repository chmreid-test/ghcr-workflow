task ghcrImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/dockstore-tool-helloworld:1"
  }
}

workflow test {
  call ghcrImage
}

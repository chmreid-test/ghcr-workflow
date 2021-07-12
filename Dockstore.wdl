task publicTagImage {
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

task publicTagImage2 {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/dockstore-tool-helloworld:3"
  }
}

task privateTagImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/dockstore-tool-helloworld-private:1"
  }
}

workflow test {
  call publicTagImage
  call publicTagImage2
  call privateTagImage
}

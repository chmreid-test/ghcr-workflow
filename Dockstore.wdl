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
  call privateTagImage
}

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

task publicDigestImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "ghcr.io/kathy-t/hello-world@sha256:88da9902eff5a6501e5514f5d18d23deb89e3885ea5f7ed52e7ca9abffea15ec"
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
  call publicDigestImage
}

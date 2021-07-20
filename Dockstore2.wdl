
version 1.0

task hello {
  command {
    echo 'Hello!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "ghcr.io/homebrew/core/python/3.9:3.9.6"
  }
}

task world {
  command {
    echo 'World!'
  }

  output {
    File response = stdout()
  }

  runtime {
    docker: "ghcr.io/homebrew/core/curl:7.77.0-1@sha256:fb8d936ef54845f01c289589985555fd679d774ba9d3eab005417ab2851df7e1"
  }
}

workflow test {
  call hello
}

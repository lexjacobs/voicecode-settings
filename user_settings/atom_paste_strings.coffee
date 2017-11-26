Packages.await 'atom', ->
  delete Commands.get('os:string').implementations['os:string@atom:atom:editor']

How to deploy a stand alone Python application
================================================

by *Joseph Turner, [GitHub](https://github.com/Tearran)*
```bash
    zip app.zip *
    echo '#!/usr/bin/env python' | cat - app.zip > app
    chmod 755 app
    sudo cp app /usr/bin/
```
that is it run from command line
```
app
```

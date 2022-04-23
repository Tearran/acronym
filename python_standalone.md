How to deploy a stand alone Python application
================================================

by *Joseph Turner, [GitHub](https://github.com/Tearran)*
```bash
appname=mypyapp
    zip app.zip *
    echo '#!/usr/bin/env python' | cat - app.zip > $appname
    chmod +x $appname
    sudo cp $appname /usr/bin/
```
that is it run from command line
```
mypyapp
```

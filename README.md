# asciidoc-template

In this tutorial we will run asciidoc in container which will generate PDF that explains how it all works. To get started, do the folowing steps

1. clone repository

> git clone https://github.com/peterducai/asciidoc-template.git

2. build container

```
cd asciidoc-template
chmod +x scripts/journal.sh
./scripts/journal.sh
```

1. run container

> podman run -v .:/workdir:Z localhost/${USER}/asciidoctor-journal asciidoctor-pdf /workdir/journal.adoc

and this will generate PDF with tutorial. Now you can read and learn how all this works :)
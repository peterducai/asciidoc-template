# asciidoc-template


1. clone repository

> git clone https://github.com/peterducai/asciidoc-template.git

2. build container

> ./scripts/journal.sh

3. run container

podman run -v .:/workdir:Z localhost/pducai/journal asciidoctor-pdf journal.adoc

and this will generate PDF with tutorial. Now you can read and learn how this container works :)



liberation-mono
liberation-narrow
liberation-sans
liberation-serif


/usr/share/fonts/liberation-serif/




<!-- podman run -v .:/workdir:Z localhost/pducai/journal asciidoctor-pdf journal.adoc

podman run --security-opt label=disable -v .:/workdir localhost/pducai/journal ls /workdir

> chcon -R system_u:object_r:container_file_t:s0 /tmp/pavucontrol-container/

> chcon -Rt svirt_sandbox_file_t /var/data -->
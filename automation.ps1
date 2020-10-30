# Download the installers
$client = New-Object System.Net.WebClient
$client.DownloadFile("https://cygwin.com/setup-x86_64.exe", "C:\setup-x86_64.exe")
$client.DownloadFile("https://cygwin.com/setup-x86.exe", "C:\setup-x86.exe")

# Run the installers
C:\setup-x86_64.exe -P asciidoc,bash-completion,bash-completion-devel,cygport,dblatex,docbook-xml45,docbook2X,gcc-core,gettext,gettext-devel,git,gnupg,gnupg2,libcurl-devel,libexpat-devel,libiconv,libiconv-devel,libpcre-devel,libssl-devel,perl-Authen-SASL-XS,perl-DBD-SQLite,perl-IO-Socket-SSL,perl-IO-Tty,perl-MailTools,perl-Net-SMTP-SSL,perl-TermReadkey,perl-Test-Harness,perl-XML-SAX,perl-YAML-Tiny,pkg-config,subversion-perl,time,xmlto,zlib-devel -q -s https://mirrors.kernel.org/sourceware/cygwin/
C:\setup-x86.exe -P asciidoc,bash-completion,bash-completion-devel,cygport,dblatex,docbook-xml45,docbook2X,gcc-core,gettext,gettext-devel,git,gnupg,gnupg2,libcurl-devel,libexpat-devel,libiconv,libiconv-devel,libpcre-devel,libssl-devel,perl-Authen-SASL-XS,perl-DBD-SQLite,perl-IO-Socket-SSL,perl-IO-Tty,perl-MailTools,perl-Net-SMTP-SSL,perl-TermReadkey,perl-Test-Harness,perl-XML-SAX,perl-YAML-Tiny,pkg-config,subversion-perl,time,xmlto,zlib-devel -q -s https://mirrors.kernel.org/sourceware/cygwin/

# Get the code
# ...only partially tested
C:\cygwin64\bin\bash.exe -l -c "cd /cygdrive/d && git clone -b next https://github.com/me-and/Cygwin-Git && cd Cygwin-Git && cygport git.cygport download"

# And compile
C:\cygwin64\bin\bash.exe -l -c "cd /cygdrive/d/Cygwin-Git && cygport git.cygport prep compile test install package"
C:\cygwin\bin\bash.exe -l -c "cd /cygdrive/d/Cygwin-Git && cygport git.cygport prep compile test install package"

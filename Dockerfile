FROM codercom/code-server:4.4.0
################################################################################
RUN apt -y install golang

RUN /usr/bin/code-server --install-extension formulahendry.code-runner && \
    /usr/bin/code-server --install-extension genuitecllc.codetogether && \
    /usr/bin/code-server --install-extension golang.go && \
    /usr/bin/code-server --install-extension jorol.perl-completions && \
    /usr/bin/code-server --install-extension KevinRose.vsc-python-indent && \
    /usr/bin/code-server --install-extension magicstack.MagicPython && \
    /usr/bin/code-server --install-extension ms-azuretools.vscode-docker && \
    /usr/bin/code-server --install-extension ms-python.python && \
    /usr/bin/code-server --install-extension ms-python.vscode-pylance && \
    /usr/bin/code-server --install-extension ms-toolsai.jupyter && \
    /usr/bin/code-server --install-extension ms-toolsai.jupyter-keymap && \
    /usr/bin/code-server --install-extension ms-toolsai.jupyter-renderers && \
    /usr/bin/code-server --install-extension ms-vscode-remote.remote-wsl && \
    /usr/bin/code-server --install-extension neonxp.gotools && \
    /usr/bin/code-server --install-extension sfodje.perlcritic && \
    /usr/bin/code-server --install-extension sfodje.perltidy && \
    /usr/bin/code-server --install-extension redhat.vscode-yaml && \
    /usr/bin/code-server --install-extension higoka.php-cs-fixer && \
    /usr/bin/code-server --install-extension qufiwefefwoyn.inline-sql-syntax && \
    /usr/bin/code-server --install-extension tuxtina.json2yaml && \
    /usr/bin/code-server --install-extension amazonwebservices.aws-toolkit-vscode && \
    /usr/bin/code-server --install-extension samuelcolvin.jinjahtml && \
    /usr/bin/code-server --install-extension redhat.ansible && \
    /usr/bin/code-server --install-extension foxundermoon.shell-format && \
    /usr/bin/code-server --install-extension jeff-hykin.better-dockerfile-syntax && \
    /usr/bin/code-server --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

################################################################################
ENTRYPOINT ["/usr/bin/entrypoint.sh","--bind-addr","0.0.0.0:8080","."]

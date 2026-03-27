FROM liyuanbiao/hysteria:latest

# 設定ファイルをコピー（後でrender.yamlやenvで上書き）
COPY config.yaml /etc/hysteria/config.yaml

EXPOSE 443/tcp
EXPOSE 443/udp   # RenderでUDPが制限されても試す

CMD ["server", "-c", "/etc/hysteria/config.yaml"]

function proxy --description 'Toggle a proxy setting'
    if contains 'on' $argv 
        echo "Activating proxy"
        set -gx HTTP_PROXY (cat ~/.proxy)
        set -gx HTTPS_PROXY (cat ~/.proxy)
    else if contains 'off' $argv 
        echo "Deactivating proxy"
        set -e HTTP_PROXY
        set -e HTTPS_PROXY
    else
        echo "Proxy info"
        echo HTTP_PROXY="$HTTP_PROXY"
        echo HTTPS_PROXY="$HTTPS_PROXY"
    end
end

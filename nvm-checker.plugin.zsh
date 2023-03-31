# Compare if the current node version is the same as the project node version
function valid_node() {
    if [[ -f ".nvmrc" ]]; then
        # Gets nvmrc version
        local nvmrc_version=$(cat .nvmrc)
        # Gets current node version
        local current_node_version=$(node -v)

        # Gets nvmrc version major number
        local version_number=${nvmrc_version#?v} 

        local node_version=${current_node_version:1}
        # Gets current node version major number
        node_version=${node_version%%.*}

        if [[ ${nvmrc_version:0:2} != ${current_node_version:1:2} ]]; then
            echo "%{$bg[red]%}%{$fg[230]%} ⚠️  NODE VERSION %{$reset_color%}"
        fi
    fi
}

# Add node version validator to the right side of the prompt
RPROMPT='$(valid_node)'
# Compare if the current node version is the same as the project node version
function valid_node() {
    if [[ -f ".nvmrc" ]]; then
        # Gets nvmrc version
        local nvmrc_version="$(cat .nvmrc)"
        # Gets current node version
        local current_node_version="$(node -v)"
        # Gets nvmrc version major number
        local nvmrc_major_version=$(echo "$nvmrc_version" | tr -d "v")
        nvmrc_major_version="${nvmrc_major_version%%.*}"
        # Gets current node version major number
        local node_major_version=$(echo "$current_node_version" | tr -d "v")
        node_major_version="${node_major_version%%.*}"

        if [[ "${nvmrc_major_version}" != "${node_major_version}" ]]; then
            echo "%{$bg[red]%}%{$fg[230]%} ⚠️  NODE VERSION %{$reset_color%}"
        fi
    fi
}

# Add node version validator to the right side of the prompt
RPROMPT="$(valid_node)"
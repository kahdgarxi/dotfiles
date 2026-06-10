function runboth --description 'Run a command locally and remotely via SSH'
    set -l remote_host frog

    if test (count $argv) -eq 0
        echo "Error: No command provided."
        echo "Usage: runboth <command>"
        return 1
    end

    echo "=== Running Locally ==="
    eval $argv

    echo ""
    echo "=== Running Remotely ($remote_host) ==="
    ssh -t "$remote_host" "$argv"
end

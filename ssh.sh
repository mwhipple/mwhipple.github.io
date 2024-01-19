declare -r SSH_ENV="${HOME}/.ssh/environment"

ssh::main() {
	if ssh::agent_is_running; then
		ssh::load_env
	else
		ssh::start_agent
	fi
}

ssh::start_agent() {
	ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	chmod 600 "${SSH_ENV}"
	ssh::load_env
	ssh-add
}

ssh::load_env() {
	if [[ -f "${SSH_ENV}" ]]; then
		. "${SSH_ENV}" > /dev/null
	fi
}

ssh::agent_is_running() {
	[[ -n "${SSH_AGENT_PID-}" ]] \
	&& [[ -d "/proc/${SSH_AGENT_PID}" ]]
}

ssh::main

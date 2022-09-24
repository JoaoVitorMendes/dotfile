if status is-interactive
    # Commands to run in interactive sessions can go here
	starship init fish | source
	set -U fish_greeting ""

	# atualizar sistema full
	alias emergeUpdate="sudo emerge -uNDa @world"

	# atualizar de forma simples
	alias emergeUpdateSimple="sudo emerge-webrsync"

	# atualizar com modificação no make
	alias emergeMakeUpdate="emerge --update --deep --with-bdeps=y --newuse @world"

	# Para quando Gentoo falar 2 package prescisam ser atualizado usa
	# sudo etc-update
	# sudo dispatch-conf
end

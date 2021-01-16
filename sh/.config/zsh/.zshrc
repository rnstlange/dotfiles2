if [ $TERM = "linux" ]; then
	export POWERLEVEL9K_CONFIG_FILE=$ZDOTDIR/.p10k.ascii.zsh
else
	export POWERLEVEL9K_CONFIG_FILE=$ZDOTDIR/.p10k.zsh
fi

export ZGEN_DIR=$ZDOTDIR/zgen

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zgen () {
	source ${ZGEN_DIR}/zgen.zsh
	zgen "$@"
}

if [[ ! -s ${ZGEN_DIR}/init.zsh ]]; then
	zgen oh-my-zsh
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/command-not-found
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load romkatv/powerlevel10k powerlevel10k

	zgen save
	zcompile ${ZGEN_DIR}/init.zsh
else
	source ${ZGEN_DIR}/init.zsh
fi

[[ ! -f $POWERLEVEL9K_CONFIG_FILE ]] || source $POWERLEVEL9K_CONFIG_FILE
source /usr/share/nvm/init-nvm.sh

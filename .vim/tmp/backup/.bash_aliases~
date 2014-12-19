alias cls='clear'
alias update='aptitude update'
alias ins='aptitude install'
alias la='ls -a'
alias ll='ls -al'
alias vimset=' vim $HOME/.vimrc'
alias vismet=' vim $HOME/.vimrc'
alias adlias='vim $HOME/.bash_aliases'
alias search='apt-cache search'
alias pkg='apt-cache show'
alias pkgd='apt-cache showpkg'
alias rem='aptitude remove'
alias clean='aptitude clean'
alias elink='elinks'
alias mkvimtut='cd $HOME;cp -if vimtutor temptutor'
alias pkgs='dpkg --get-selections'
alias temptutor='vim temptutor'
alias saverc='cd $HOME;mkdir -p /sdcard/dotfiles/.vim/; cp .vimrc /sdcard/dotfiles/; cp .bashrc /sdcard/dotfiles/; cp .bash_aliases /sdcard/dotfiles/;fldrsave code; mv -f code.tar.gz /sdcard/dotfiles/; cd .vim/;cp -rf !(bundle) /sdcard/dotfiles/.vim/; cd /sdcard/dotfiles'
alias dc='cd'
alias s='ls'
alias gitconfig='git config --global credential.helper wincred'
alias vimspeed='cd ~;rm vim.log; vim --startuptime vim.log'
alias vimin='vim +PluginInstall +qall'
alias vi='vim'
alias rrc='source ~/.bashrc; source ~/.bash_aliases'
fldrsave (){
    tar cvfz "$1".tar.gz "$1"
}
md (){
    rm ${1%\.m*d*}.html 2>/dev/null
    ~/code/Markdown_1.0.1/Markdown.pl "$1" > ${1%\.m*d*}.html
}
nand (){
    projDir=~/code/osproj;
    if [ $# -ne 3 ] 
    then
        printf "\nProgram List:\nasm: Assembler\ncpu: CPU Emulator\nhds: Hardware Simulator\njcp: Jack Compiler\nvme: VM Emulator\n\n";
        printf "Format:\nnand [File Number] \"[Name/Pattern of File]\" [Program]\n\n"
        return;
    fi

    cd "$projDir"/tools;
    echo;
    file="$projDir"/projects/"$1"/"$2";
    for i in $file; do
        echo $i;
        sh "$3" "$i";
        echo;
    done
}

codeDir=~/code
dotfileDir=$HOME/dotfiles
musicDir=~/Downloads/chromeSongs
fldrsave (){
    tar zcvf "$1".tar.gz "$1"
}
tarx (){
    tar zxvf "$1"
}
md (){
    if [ $# -ne 1 ]
    then
        printf "\nSorry only supports one file at a time\n\n"
        return;
    fi

    fileName=${1%\.m*d*}

    rm "$fileName".html "$fileName".tar.gz 2>/dev/null
    "$codeDir"/Markdown_1.0.1/Markdown.pl "$1" > "$fileName".html
    zip "$fileName".zip "$fileName".html $1
    tar cvfz "$fileName".tar.gz "$fileName".html $1
}
nand (){
    projDir="$codeDir"/osproj;
    if [ $# -ne 3 ] 
    then
        printf "\nProgram List:\nasm: Assembler\ncpu: CPU Emulator\nhds: Hardware Simulator\njcp: Jack Compiler\nvme: VM Emulator\n\n";
        printf "Format:\nnand [File Number] \"[Name/Pattern of File]\" [Program]\n\n"
        return;
    fi

    program=""

    case $3 in
        hds)
            program="HardwareSimulator.sh"
            ;;
        asm)
            program="Assembler.sh"
            ;;
        cpu)
            program="CPUEmulator.sh"
            ;;
        jcp)
            program="JackCompiler.sh"
            ;;
        vme)
            program="VMEmulator.sh"
            ;;
        *)
            printf "\nProgram List:\nasm: Assembler\ncpu: CPU Emulator\nhds: Hardware Simulator\njcp: Jack Compiler\nvme: VM Emulator\n\n";
            printf "Format:\nnand [File Number] \"[Name/Pattern of File]\" [Program]\n\n"
            return;
            ;;
    esac

    cd "$projDir"/tools;
    echo;
    file="$projDir"/projects/"$1"/"$2";
    for i in $file; do
        echo $i;
        sh "$program" "$i";
        echo;
    done
}


alias cls='clear'
alias update='sudo apt-get update'
alias ins='sudo apt-get install'
alias upgrade='sudo apt-get upgrade'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias vimset=' vim $HOME/.vimrc'
alias vismet=' vim $HOME/.vimrc'
alias adlias='vim $HOME/.bash_aliases'
alias search='apt-cache search'
alias pkg='apt-cache show'
alias pkgd='apt-cache showpkg'
alias rem='sudo apt-get autoremove'
alias dl='cd ~/Downloads'
alias dls='dl;ls'
alias wrk='cd $codeDir/workspace'
alias hack='cd $codeDir/hack'
alias clean='sudo apt-get clean'
alias elink='elinks'
alias mkvimtut='cd $HOME;cp -if vimtutor temptutor'
alias pkgs='dpkg --get-selections'
alias temptutor='vim temptutor'
alias saverc='cd $HOME;mkdir -p $dotfileDir/.vim/; cp -rf -t $dotfileDir .vimrc .bashrc .bash_aliases; cd .vim/;cp -rf !(bundle) $dotfileDir/.vim/; cd $dotfileDir; rm softwareins.log; dpkg --get-selections > softwareins.log; git add .vim; git add .'
alias bd='brightness down'
alias bu='brightness up'
alias dc='cd'
alias s='ls'
alias gitconfig='git config --global credential.helper wincred'
alias vimspeed='cd ~;rm vim.log; vim --startuptime vim.log'
alias vimin='vim +PluginInstall +qall'
alias vimclean='vim +PluginClean +qall'
alias vi='vim'
alias rrc='source ~/.bashrc; source ~/.bash_aliases'
alias safe='cd $codeDir/safe'
alias todo='vim $codeDir/todo.md'
alias cds='cd $codeDir'
alias pdf='okular'
alias pod='xdg-open'

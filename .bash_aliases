codeDir=~/code
dotfileDir=$HOME/dotfiles
musicDir=~/Downloads/chromeSongs
fldrsave (){
    tar zcvf "$1".tar.gz "$1"
}
tarx (){
    tar zxvf "$1"
}
#md (){
    #if [ $# -ne 1 ]
    #then
        #printf "\nSorry only supports one file at a time\n\n"
        #return;
    #fi

    #fileName=${1%\.m*d*}

    #rm "$fileName".html "$fileName".tar.gz 2>/dev/null
    #"$codeDir"/Markdown_1.0.1/Markdown.pl "$1" > "$fileName".html
    #zip "$fileName".zip "$fileName".html $1
    #tar cvfz "$fileName".tar.gz "$fileName".html $1
#}
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
alias update='sudo aptitude update'
alias ins='sudo aptitude install'
alias upgrade='sudo aptitude upgrade'
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
alias rem='sudo aptitude autoremove'
alias dl='cd ~/Desktop/Download'
alias dlc='cd ~/Downloads'
alias dls='dl;ls'
alias wrk='cd $codeDir/workspace'
alias hack='cd $codeDir/hack'
alias clean='sudo aptitude clean'
alias elink='elinks'
alias mkvimtut='cd $HOME;cp -if vimtutor temptutor'
alias pkgs='dpkg --get-selections'
alias temptutor='vim temptutor'
alias saverc='cd $HOME;mkdir -p $dotfileDir/.vim/; cp -rf -t $dotfileDir .vimrc .bashrc .bash_aliases .tmux.conf; cd .vim/;cp -rf !(bundle) $dotfileDir/.vim/; cd $dotfileDir; rm softwareins.log; dpkg --get-selections > softwareins.log; git add .vim; git add .'
alias drop='cd ~/Dropbox'
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
alias saveas='source ~/.bash_aliases'
alias safe='cd $codeDir/safe'
alias todo='vim $codeDir/todo.md'
alias cds='cd $codeDir'
alias pdf='okular'
alias pod='xdg-open'
alias sound='alsamixer'
alias learn='cd ~/Videos/learning'
alias repo='sudo apt-add-repository'
alias deb='sudo dpkg -i'
alias remdeb='sudo dpkg -r'
alias dlw='cd ~/websites'
alias chrome='chromium-browser'
alias gcal='gcalcli'
alias ..='cd ..'
alias class='cd ~/Videos/learning/cousera/assignment'
alias pushback='cp $dotfileDir/.vimrc ~/.vimrc.new'
alias sshinto='ssh -i ~/.ssh/id_rsa jung4351@104.196.167.28'
alias work='cd ~/code/deeppixel/'
alias javawork='cd ~/code/deeppixel/sonnet-bot/src/com/deeppixel/laserlux'
alias gitsub="git submodule foreach git pull origin master"
alias eclim="pkill -f eclim; ~/eclipse/eclimd"
alias mvndep="mvn dependency:copy-dependencies"
alias ipython2='python2.7 -m IPython'

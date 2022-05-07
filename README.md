# devenv

## ssh keygen

ssh key를 만들어서 github에 등록해두면 pull/push 할 때 비밀번호를 입력할 필요가 없어서 편합니다.

```{sh}
cd ~/.ssh
ssh-keygen
```

input을 요구하면 그냥 다 enter 쳐도 되고, 아니면 검색하고 해보세요. 기본값으로도 충분하다고 봅니다.

생성후에 `*.pub` 파일의 (기본값으로 했으면 `id_rsa.pub`) 내용을 github에 등록합니다.

```{sh}
cat ~/.ssh/id_rsa.pub
```

github 우상단 logo -> Settings -> SSH and GPG keys -> New SSH key

## 각종 config 파일 교체

```
cd ~
git clone git@github.com:eunmo/devenv.git bin
rm .bashrc .vimrc .gitconfig
ln -s bin/bashrc .bashrc
ln -s bin/vimrc .vimrc
ln -s bin/gitconfig .gitconfig
```

# vim plugin 설치

```{sh}
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
```

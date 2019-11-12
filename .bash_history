git config --global user.email liyaxeh251@net3mail.com
git config --global user.name liyaxeh251
git clone https://github.com/benve-meucci/ITIS-Meucci
cd ITIS-Meucci/
git remote set-url origin https://github.com/liyaxeh251/verifica-git.git
ls
vim index.html 
echo "Sito istituzionale dell'ITIS Meucci" > itis-meucci.html
git status
git add itis-meucci.html 
git commit -am "creata pagina Meucci e modificata index"
git checkout -b chi-siamo
echo "Chi Siamo - ITIS Meucci" > chi-siamo.html
git add chi-siamo.html 
git commit -am "creata pagina Chi Siamo"
git checkout master 
git merge chi-siamo 
git checkout -b dove-siamo
cp chi-siamo.html dove-siamo.html
echo "Dove Siamo - ITIS Meucci" > dove-siamo.html 
cat dove-siamo.html 
git add dove-siamo.html 
git commit -am "duplicata pagina chi-siamo in dove-siamo"
git checkout master
ls
vim dove-siamo.html
git add dove-siamo.html 
git commit -am "creata pagina Dove Siamo"
git merge dove-siamo 
vim dove-siamo.html 
git status
git add dove-siamo.html 
git status
git commit
git log --all
git commit --amend -m "Conflitto risolto su dove-siamo"
git log --all
git push -u origin master
git config -l
git push -u origin master
git push -u origin chi-siamo 
git push -u origin dove-siamo 
cd ~/Desktop/
git clone https://github.com/liyaxeh251/verifica-git
echo "Tel. 055 70.70.11" >> verifica-git/dove-siamo.html 
cd verifica-git/
cat dove-siamo.html 
git commit -am "Aggiunto telefono a dove-siamo.html"
git push
cd ~/ITIS-Meucci/

REPOSITORY = jponte

help:
	@echo -B --always-make
	@echo first

.PHONY: first
first:
	rm -rfv .git
	git init
	git add --all
	git commit -m "make this the first and the only commit"
	git remote add origin https://github.com/albraga/${REPOSITORY}
	git push -u --force origin master 

repository:
	curl -u 'albraga' https://api.github.com/user/repos -d '{"name":"${REPOSITORY}"}'


forcepull:
	git fetch --all
	git reset --hard origin/master

java:
	java -classpath `cygpath -wp "./dist:/cygdrive/d/lib/*"` pacote.Jponte

javac:
	javac -classpath `cygpath -wp ".:/cygdrive/d/lib/*"` src/pacote/jponte.java -d dist
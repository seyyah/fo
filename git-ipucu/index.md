# Git: İpucu

.fx: first

Nurettin Şenyer <seyyah@bil.omu.edu.tr>

http://seyyah.me

Haziran, 2012

Samsun

.qr: 150|http://seyyah.me/p/git-ipucu

---

# Tags

Yeni bir tag oluştururken,

	!bash
	$ git tag -a v1.4 -m "version 1.4"
	$ git log
	67278c7f5f3a3b009a1474ca201f2b52f7728262 bla bla
	$ git tag -a v1.0-ustad -m "version 1.4" 67278c7f5f3a3b009a1474ca201f2b52f7728262

Tag leri listelerken,

	!bash
	$ git tag
	$ git tag -l v1.*
	v1.1
	v1.2
---

# Tags: göster, paylaş

Tag i göstermek,

	!bash
	$ git show v1.4

Tag leri paylaşmak,

	!bash
	$ git push --tags

Kaynak: <http://learn.github.com/p/tagging.html>

---

# Tags: rename

Yeniden adlandırırken,

	!bash
	git checkout old
	git tag new
	git tag -d old
	git push origin :refs/tags/old

Kaynak: http://stackoverflow.com/questions/1028649/rename-a-tag-in-git

---

# Checkout

Dal ismi olmaksızın,

	!bash
	$ git log
	67278c7f5f3a3b009a1474ca201f2b52f7728262 bla bla
	$ git checkout 67278c7f5f3a3b009a1474ca201f2b52f7728262
	$ git branch
	$ git checkout -b v1.0-ustad
	$ git branch

Kaynak: [GETTING OLD VERSIONS](http://gitimmersion.com/lab_12.html)

---

# Github

Commit mesajıyla issues'u kapatmak: 123 issues'u kapat,

	!bash
	# commit mesajında
	foo bar. Close #123

---

# Branch: current

Bir çok yaklaşım mevcut,

	!bash
	git rev-parse --abbrev-ref HEAD

	VEYA

	echo $(git branch | grep "*" | sed "s/* //")

	VEYA

	git branch

---

# Branch: rename

Senaryo: `old` dalını `new` olarak yerelde ve uzakta isimlendirmek.

Komutlar, yerel için,

	!bash
	$ git branch -m old new

uzağı da çözelim,

	!bash
	$ git push origin :old
	$ git push origin new:ref/heads/new

**Not**: silinecek uzak dal, github'da _default branch_ olmamalı!

Kaynaklar: <http://www.dmo.ca/blog/20080307124544/>

---

# Branch: delete

Nasıl,

	!bash
	git push origin --delete <branchName>

	VEYA

	git push origin :<branchName>

Örnek,

	!bash
	g checkout beni_sil
	g push origin :beni_sil
	g checkout dev
	g branch -d beni_sil

Kaynak:

- http://stackoverflow.com/questions/2003505/how-do-i-delete-a-git-branch-both-locally-and-in-github
- http://git-scm.com/book/en/Git-Branching-Remote-Branches

---

# Etc

Kısa kısa,

	!bash
	$ git diff --cached


nc = docker-compose exec --user www-data nextcloud-app
nc-occ = $(nc) php occ

install-apps:
	- $(nc-occ) app:install bookmarks
	- $(nc-occ) app:install contacts
	- $(nc-occ) app:install mail
	- $(nc-occ) app:install files_markdown
	- $(nc-occ) app:install news
	- $(nc-occ) app:install notes
	- $(nc-occ) app:install calendar
setup:
	git submodule init && git submodule update

clean:
	find straight/repos -mindepth 1 -maxdepth 1 -not -name straight.el -exec rm -rf {} \;
	find straight -mindepth 1 -maxdepth 1 -not -name repos -exec rm -rf {} \;

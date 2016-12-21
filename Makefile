all: gui

gui:
	$(MAKE) -C rtgraph/res

run:
	python3 rtgraph/RTGraph.py -i

.PHONY: clean
clean:
	$(MAKE) clean -C rtgraph/res
	rm -rf rtgraph/*.pyc
	rm -rf rtgraph/*.log*
	rm -rf rtgraph/__pycache__
	rm -rf data
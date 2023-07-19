#CROSS_COMPILE?=aarch64-none-linux-gnu-
CROSS_COMPILE?=
CC=$(CROSS_COMPILE)gcc
SOURCES=writer.c
TARGETS=writer

#rule
all: $(TARGETS) execution

$(TARGETS): $(SOURCES)
	$(CC) -o $@ $<

clean:
	@rm -rf $(TARGETS)
	@echo "Clean $(TARGETS)"

execution:
	chmod a+x $(TARGETS)

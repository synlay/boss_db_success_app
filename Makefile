.PHONY: compile xref eunit clean check-all make deps test

REBAR=rebar3

all: compile

compile:
	@$(REBAR) compile

xref:
	@$(REBAR) xref

test:
	@$(REBAR) eunit

clean:
	@$(REBAR) clean

dialyzer:
	@$(REBAR) as test dialyzer

check-all: test dialyzer

.PHONY: compile xref eunit clean check-all make deps test

REBAR=rebar3

all: compile

compile:
	@$(REBAR) compile

xref:
	@$(REBAR) xref

test:
	@$(REBAR) as test eunit eqc

clean:
	@$(REBAR) clean

dialyzer:
	@$(REBAR) dialyzer

check-all: test xref dialyzer

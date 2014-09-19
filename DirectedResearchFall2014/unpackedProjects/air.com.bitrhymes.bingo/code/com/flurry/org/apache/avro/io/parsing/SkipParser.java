package com.flurry.org.apache.avro.io.parsing;

import java.io.*;

public class SkipParser extends Parser
{
    private final SkipHandler skipHandler;
    
    public SkipParser(final Symbol symbol, final ActionHandler actionHandler, final SkipHandler skipHandler) throws IOException {
        super(symbol, actionHandler);
        this.skipHandler = skipHandler;
    }
    
    public final void skipRepeater() throws IOException {
        final int pos = this.pos;
        final Symbol[] stack = this.stack;
        final int pos2 = this.pos - 1;
        this.pos = pos2;
        final Symbol symbol = stack[pos2];
        assert symbol.kind == Symbol.Kind.REPEATER;
        this.pushProduction(symbol);
        this.skipTo(pos);
    }
    
    public final void skipSymbol(final Symbol symbol) throws IOException {
        final int pos = this.pos;
        this.pushSymbol(symbol);
        this.skipTo(pos);
    }
    
    public final void skipTo(final int i) throws IOException {
        while (i < this.pos) {
            final Symbol symbol = this.stack[this.pos - 1];
            if (symbol.kind != Symbol.Kind.TERMINAL) {
                if (symbol.kind == Symbol.Kind.IMPLICIT_ACTION || symbol.kind == Symbol.Kind.EXPLICIT_ACTION) {
                    this.skipHandler.skipAction();
                }
                else {
                    --this.pos;
                    this.pushProduction(symbol);
                }
            }
            else {
                this.skipHandler.skipTopSymbol();
            }
        }
    }
    
    public interface SkipHandler
    {
        void skipAction() throws IOException;
        
        void skipTopSymbol() throws IOException;
    }
}

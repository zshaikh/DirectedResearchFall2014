package com.flurry.org.apache.avro.io.parsing;

import java.io.*;
import com.flurry.org.apache.avro.*;

public class Parser
{
    protected int pos;
    protected Symbol[] stack;
    protected final ActionHandler symbolHandler;
    
    public Parser(final Symbol symbol, final ActionHandler symbolHandler) throws IOException {
        super();
        this.symbolHandler = symbolHandler;
        (this.stack = new Symbol[5])[0] = symbol;
        this.pos = 1;
    }
    
    private void expandStack() {
        final Symbol[] stack = new Symbol[this.stack.length + Math.max(this.stack.length, 1024)];
        System.arraycopy(this.stack, 0, stack, 0, this.stack.length);
        this.stack = stack;
    }
    
    public final Symbol advance(final Symbol obj) throws IOException {
        while (true) {
            final Symbol[] stack = this.stack;
            final int pos = this.pos - 1;
            this.pos = pos;
            final Symbol obj2 = stack[pos];
            if (obj2 == obj) {
                return obj2;
            }
            final Symbol.Kind kind = obj2.kind;
            if (kind == Symbol.Kind.IMPLICIT_ACTION) {
                final Symbol doAction = this.symbolHandler.doAction(obj, obj2);
                if (doAction != null) {
                    return doAction;
                }
                continue;
            }
            else {
                if (kind == Symbol.Kind.TERMINAL) {
                    throw new AvroTypeException("Attempt to process a " + obj + " when a " + obj2 + " was expected.");
                }
                if (kind == Symbol.Kind.REPEATER && obj == ((Symbol.Repeater)obj2).end) {
                    return obj;
                }
                this.pushProduction(obj2);
            }
        }
    }
    
    public int depth() {
        return this.pos;
    }
    
    public Symbol popSymbol() {
        final Symbol[] stack = this.stack;
        final int pos = this.pos - 1;
        this.pos = pos;
        return stack[pos];
    }
    
    public final void processImplicitActions() throws IOException {
        while (this.pos > 1) {
            final Symbol symbol = this.stack[this.pos - 1];
            if (symbol.kind == Symbol.Kind.IMPLICIT_ACTION) {
                --this.pos;
                this.symbolHandler.doAction(null, symbol);
            }
            else {
                if (symbol.kind == Symbol.Kind.TERMINAL) {
                    break;
                }
                --this.pos;
                this.pushProduction(symbol);
            }
        }
    }
    
    public final void processTrailingImplicitActions() throws IOException {
        while (this.pos >= 1) {
            final Symbol symbol = this.stack[this.pos - 1];
            if (symbol.kind != Symbol.Kind.IMPLICIT_ACTION || !((Symbol.ImplicitAction)symbol).isTrailing) {
                break;
            }
            --this.pos;
            this.symbolHandler.doAction(null, symbol);
        }
    }
    
    public final void pushProduction(final Symbol symbol) {
        final Symbol[] production = symbol.production;
        while (this.pos + production.length > this.stack.length) {
            this.expandStack();
        }
        System.arraycopy(production, 0, this.stack, this.pos, production.length);
        this.pos += production.length;
    }
    
    public void pushSymbol(final Symbol symbol) {
        if (this.pos == this.stack.length) {
            this.expandStack();
        }
        this.stack[this.pos++] = symbol;
    }
    
    public void reset() {
        this.pos = 1;
    }
    
    public Symbol topSymbol() {
        return this.stack[this.pos - 1];
    }
    
    public interface ActionHandler
    {
        Symbol doAction(Symbol p0, Symbol p1) throws IOException;
    }
}

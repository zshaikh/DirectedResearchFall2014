package com.flurry.org.apache.avro.io;

import com.flurry.org.apache.avro.io.parsing.*;
import java.io.*;

public abstract class ParsingDecoder extends Decoder implements ActionHandler, SkipHandler
{
    protected final SkipParser parser;
    
    protected ParsingDecoder(final Symbol symbol) throws IOException {
        super();
        this.parser = new SkipParser(symbol, this, (SkipParser.SkipHandler)this);
    }
    
    @Override
    public void skipAction() throws IOException {
        this.parser.popSymbol();
    }
    
    protected abstract void skipFixed() throws IOException;
    
    @Override
    public void skipTopSymbol() throws IOException {
        final Symbol topSymbol = this.parser.topSymbol();
        if (topSymbol == Symbol.NULL) {
            this.readNull();
        }
        if (topSymbol == Symbol.BOOLEAN) {
            this.readBoolean();
        }
        else {
            if (topSymbol == Symbol.INT) {
                this.readInt();
                return;
            }
            if (topSymbol == Symbol.LONG) {
                this.readLong();
                return;
            }
            if (topSymbol == Symbol.FLOAT) {
                this.readFloat();
                return;
            }
            if (topSymbol == Symbol.DOUBLE) {
                this.readDouble();
                return;
            }
            if (topSymbol == Symbol.STRING) {
                this.skipString();
                return;
            }
            if (topSymbol == Symbol.BYTES) {
                this.skipBytes();
                return;
            }
            if (topSymbol == Symbol.ENUM) {
                this.readEnum();
                return;
            }
            if (topSymbol == Symbol.FIXED) {
                this.skipFixed();
                return;
            }
            if (topSymbol == Symbol.UNION) {
                this.readIndex();
                return;
            }
            if (topSymbol == Symbol.ARRAY_START) {
                this.skipArray();
                return;
            }
            if (topSymbol == Symbol.MAP_START) {
                this.skipMap();
            }
        }
    }
}

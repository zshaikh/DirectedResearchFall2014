package com.flurry.org.apache.avro.io;

import java.io.*;
import com.flurry.org.apache.avro.io.parsing.*;
import java.nio.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.util.*;

public class ValidatingEncoder extends ParsingEncoder implements ActionHandler
{
    protected Encoder out;
    protected final Parser parser;
    
    ValidatingEncoder(final Schema schema, final Encoder encoder) throws IOException {
        this(new ValidatingGrammarGenerator().generate(schema), encoder);
    }
    
    ValidatingEncoder(final Symbol symbol, final Encoder out) throws IOException {
        super();
        this.out = out;
        this.parser = new Parser(symbol, (Parser.ActionHandler)this);
    }
    
    public ValidatingEncoder configure(final Encoder out) {
        this.parser.reset();
        this.out = out;
        return this;
    }
    
    @Override
    public Symbol doAction(final Symbol symbol, final Symbol symbol2) throws IOException {
        return null;
    }
    
    @Override
    public void flush() throws IOException {
        this.out.flush();
    }
    
    @Override
    public void setItemCount(final long n) throws IOException {
        super.setItemCount(n);
        this.out.setItemCount(n);
    }
    
    @Override
    public void startItem() throws IOException {
        super.startItem();
        this.out.startItem();
    }
    
    @Override
    public void writeArrayEnd() throws IOException {
        this.parser.advance(Symbol.ARRAY_END);
        this.out.writeArrayEnd();
        this.pop();
    }
    
    @Override
    public void writeArrayStart() throws IOException {
        this.push();
        this.parser.advance(Symbol.ARRAY_START);
        this.out.writeArrayStart();
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException {
        this.parser.advance(Symbol.BOOLEAN);
        this.out.writeBoolean(b);
    }
    
    @Override
    public void writeBytes(final ByteBuffer byteBuffer) throws IOException {
        this.parser.advance(Symbol.BYTES);
        this.out.writeBytes(byteBuffer);
    }
    
    @Override
    public void writeBytes(final byte[] array, final int n, final int n2) throws IOException {
        this.parser.advance(Symbol.BYTES);
        this.out.writeBytes(array, n, n2);
    }
    
    @Override
    public void writeDouble(final double n) throws IOException {
        this.parser.advance(Symbol.DOUBLE);
        this.out.writeDouble(n);
    }
    
    @Override
    public void writeEnum(final int i) throws IOException {
        this.parser.advance(Symbol.ENUM);
        final Symbol.IntCheckAction intCheckAction = (Symbol.IntCheckAction)this.parser.popSymbol();
        if (i < 0 || i >= intCheckAction.size) {
            throw new AvroTypeException("Enumeration out of range: max is " + intCheckAction.size + " but received " + i);
        }
        this.out.writeEnum(i);
    }
    
    @Override
    public void writeFixed(final byte[] array, final int n, final int i) throws IOException {
        this.parser.advance(Symbol.FIXED);
        final Symbol.IntCheckAction intCheckAction = (Symbol.IntCheckAction)this.parser.popSymbol();
        if (i != intCheckAction.size) {
            throw new AvroTypeException("Incorrect length for fixed binary: expected " + intCheckAction.size + " but received " + i + " bytes.");
        }
        this.out.writeFixed(array, n, i);
    }
    
    @Override
    public void writeFloat(final float n) throws IOException {
        this.parser.advance(Symbol.FLOAT);
        this.out.writeFloat(n);
    }
    
    @Override
    public void writeIndex(final int n) throws IOException {
        this.parser.advance(Symbol.UNION);
        this.parser.pushSymbol(((Symbol.Alternative)this.parser.popSymbol()).getSymbol(n));
        this.out.writeIndex(n);
    }
    
    @Override
    public void writeInt(final int n) throws IOException {
        this.parser.advance(Symbol.INT);
        this.out.writeInt(n);
    }
    
    @Override
    public void writeLong(final long n) throws IOException {
        this.parser.advance(Symbol.LONG);
        this.out.writeLong(n);
    }
    
    @Override
    public void writeMapEnd() throws IOException {
        this.parser.advance(Symbol.MAP_END);
        this.out.writeMapEnd();
        this.pop();
    }
    
    @Override
    public void writeMapStart() throws IOException {
        this.push();
        this.parser.advance(Symbol.MAP_START);
        this.out.writeMapStart();
    }
    
    @Override
    public void writeNull() throws IOException {
        this.parser.advance(Symbol.NULL);
        this.out.writeNull();
    }
    
    @Override
    public void writeString(final Utf8 utf8) throws IOException {
        this.parser.advance(Symbol.STRING);
        this.out.writeString(utf8);
    }
    
    @Override
    public void writeString(final CharSequence charSequence) throws IOException {
        this.parser.advance(Symbol.STRING);
        this.out.writeString(charSequence);
    }
    
    @Override
    public void writeString(final String s) throws IOException {
        this.parser.advance(Symbol.STRING);
        this.out.writeString(s);
    }
}

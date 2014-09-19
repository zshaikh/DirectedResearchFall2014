package com.flurry.org.apache.avro.io;

import java.io.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.io.parsing.*;
import java.nio.*;
import com.flurry.org.apache.avro.util.*;

public class ValidatingDecoder extends ParsingDecoder implements ActionHandler
{
    protected Decoder in;
    
    ValidatingDecoder(final Schema schema, final Decoder decoder) throws IOException {
        this(getSymbol(schema), decoder);
    }
    
    ValidatingDecoder(final Symbol symbol, final Decoder decoder) throws IOException {
        super(symbol);
        this.configure(decoder);
    }
    
    private void checkFixed(final int i) throws IOException {
        this.parser.advance(Symbol.FIXED);
        final Symbol.IntCheckAction intCheckAction = (Symbol.IntCheckAction)this.parser.popSymbol();
        if (i != intCheckAction.size) {
            throw new AvroTypeException("Incorrect length for fixed binary: expected " + intCheckAction.size + " but received " + i + " bytes.");
        }
    }
    
    private static Symbol getSymbol(final Schema schema) {
        if (schema == null) {
            throw new NullPointerException("Schema cannot be null");
        }
        return new ValidatingGrammarGenerator().generate(schema);
    }
    
    @Override
    public long arrayNext() throws IOException {
        this.parser.processTrailingImplicitActions();
        final long arrayNext = this.in.arrayNext();
        if (arrayNext == 0L) {
            this.parser.advance(Symbol.ARRAY_END);
        }
        return arrayNext;
    }
    
    public ValidatingDecoder configure(final Decoder in) throws IOException {
        this.parser.reset();
        this.in = in;
        return this;
    }
    
    @Override
    public Symbol doAction(final Symbol symbol, final Symbol symbol2) throws IOException {
        return null;
    }
    
    @Override
    public long mapNext() throws IOException {
        this.parser.processTrailingImplicitActions();
        final long mapNext = this.in.mapNext();
        if (mapNext == 0L) {
            this.parser.advance(Symbol.MAP_END);
        }
        return mapNext;
    }
    
    @Override
    public long readArrayStart() throws IOException {
        this.parser.advance(Symbol.ARRAY_START);
        final long arrayStart = this.in.readArrayStart();
        if (arrayStart == 0L) {
            this.parser.advance(Symbol.ARRAY_END);
        }
        return arrayStart;
    }
    
    @Override
    public boolean readBoolean() throws IOException {
        this.parser.advance(Symbol.BOOLEAN);
        return this.in.readBoolean();
    }
    
    @Override
    public ByteBuffer readBytes(final ByteBuffer byteBuffer) throws IOException {
        this.parser.advance(Symbol.BYTES);
        return this.in.readBytes(byteBuffer);
    }
    
    @Override
    public double readDouble() throws IOException {
        this.parser.advance(Symbol.DOUBLE);
        return this.in.readDouble();
    }
    
    @Override
    public int readEnum() throws IOException {
        this.parser.advance(Symbol.ENUM);
        final Symbol.IntCheckAction intCheckAction = (Symbol.IntCheckAction)this.parser.popSymbol();
        final int enum1 = this.in.readEnum();
        if (enum1 < 0 || enum1 >= intCheckAction.size) {
            throw new AvroTypeException("Enumeration out of range: max is " + intCheckAction.size + " but received " + enum1);
        }
        return enum1;
    }
    
    @Override
    public void readFixed(final byte[] array, final int n, final int n2) throws IOException {
        this.checkFixed(n2);
        this.in.readFixed(array, n, n2);
    }
    
    @Override
    public float readFloat() throws IOException {
        this.parser.advance(Symbol.FLOAT);
        return this.in.readFloat();
    }
    
    @Override
    public int readIndex() throws IOException {
        this.parser.advance(Symbol.UNION);
        final Symbol.Alternative alternative = (Symbol.Alternative)this.parser.popSymbol();
        final int index = this.in.readIndex();
        this.parser.pushSymbol(alternative.getSymbol(index));
        return index;
    }
    
    @Override
    public int readInt() throws IOException {
        this.parser.advance(Symbol.INT);
        return this.in.readInt();
    }
    
    @Override
    public long readLong() throws IOException {
        this.parser.advance(Symbol.LONG);
        return this.in.readLong();
    }
    
    @Override
    public long readMapStart() throws IOException {
        this.parser.advance(Symbol.MAP_START);
        final long mapStart = this.in.readMapStart();
        if (mapStart == 0L) {
            this.parser.advance(Symbol.MAP_END);
        }
        return mapStart;
    }
    
    @Override
    public void readNull() throws IOException {
        this.parser.advance(Symbol.NULL);
        this.in.readNull();
    }
    
    @Override
    public Utf8 readString(final Utf8 utf8) throws IOException {
        this.parser.advance(Symbol.STRING);
        return this.in.readString(utf8);
    }
    
    @Override
    public String readString() throws IOException {
        this.parser.advance(Symbol.STRING);
        return this.in.readString();
    }
    
    @Override
    public long skipArray() throws IOException {
        this.parser.advance(Symbol.ARRAY_START);
        for (long n = this.in.skipArray(); n != 0L; n = this.in.skipArray()) {
            long n2 = n;
            while (true) {
                final long n3 = n2 - 1L;
                if (n2 <= 0L) {
                    break;
                }
                this.parser.skipRepeater();
                n2 = n3;
            }
        }
        this.parser.advance(Symbol.ARRAY_END);
        return 0L;
    }
    
    @Override
    public void skipBytes() throws IOException {
        this.parser.advance(Symbol.BYTES);
        this.in.skipBytes();
    }
    
    @Override
    protected void skipFixed() throws IOException {
        this.parser.advance(Symbol.FIXED);
        this.in.skipFixed(((Symbol.IntCheckAction)this.parser.popSymbol()).size);
    }
    
    @Override
    public void skipFixed(final int n) throws IOException {
        this.checkFixed(n);
        this.in.skipFixed(n);
    }
    
    @Override
    public long skipMap() throws IOException {
        this.parser.advance(Symbol.MAP_START);
        for (long n = this.in.skipMap(); n != 0L; n = this.in.skipMap()) {
            long n2 = n;
            while (true) {
                final long n3 = n2 - 1L;
                if (n2 <= 0L) {
                    break;
                }
                this.parser.skipRepeater();
                n2 = n3;
            }
        }
        this.parser.advance(Symbol.MAP_END);
        return 0L;
    }
    
    @Override
    public void skipString() throws IOException {
        this.parser.advance(Symbol.STRING);
        this.in.skipString();
    }
}

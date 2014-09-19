package com.flurry.org.apache.avro.io;

import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.apache.avro.io.parsing.*;
import com.flurry.org.apache.avro.*;
import java.nio.*;
import com.flurry.org.apache.avro.util.*;

public class JsonEncoder extends ParsingEncoder implements ActionHandler
{
    protected BitSet isEmpty;
    private JsonGenerator out;
    final Parser parser;
    
    JsonEncoder(final Schema schema, final JsonGenerator jsonGenerator) throws IOException {
        super();
        this.isEmpty = new BitSet();
        this.configure(jsonGenerator);
        this.parser = new Parser(new JsonGrammarGenerator().generate(schema), (Parser.ActionHandler)this);
    }
    
    JsonEncoder(final Schema schema, final OutputStream outputStream) throws IOException {
        this(schema, getJsonGenerator(outputStream));
    }
    
    private static JsonGenerator getJsonGenerator(final OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new NullPointerException("OutputStream cannot be null");
        }
        final JsonGenerator jsonGenerator = new JsonFactory().createJsonGenerator(outputStream, JsonEncoding.UTF8);
        final MinimalPrettyPrinter prettyPrinter = new MinimalPrettyPrinter();
        prettyPrinter.setRootValueSeparator(System.getProperty("line.separator"));
        jsonGenerator.setPrettyPrinter(prettyPrinter);
        return jsonGenerator;
    }
    
    private void writeByteArray(final byte[] bytes, final int offset, final int length) throws IOException {
        this.out.writeString(new String(bytes, offset, length, "ISO-8859-1"));
    }
    
    public JsonEncoder configure(final JsonGenerator out) throws IOException {
        if (out == null) {
            throw new NullPointerException("JsonGenerator cannot be null");
        }
        if (this.parser != null) {
            this.flush();
        }
        this.out = out;
        return this;
    }
    
    public JsonEncoder configure(final OutputStream outputStream) throws IOException {
        this.configure(getJsonGenerator(outputStream));
        return this;
    }
    
    @Override
    public Symbol doAction(final Symbol symbol, final Symbol obj) throws IOException {
        if (obj instanceof Symbol.FieldAdjustAction) {
            this.out.writeFieldName(((Symbol.FieldAdjustAction)obj).fname);
        }
        else if (obj == Symbol.RECORD_START) {
            this.out.writeStartObject();
        }
        else if (obj == Symbol.RECORD_END || obj == Symbol.UNION_END) {
            this.out.writeEndObject();
        }
        else if (obj != Symbol.FIELD_END) {
            throw new AvroTypeException("Unknown action symbol " + obj);
        }
        return null;
    }
    
    @Override
    public void flush() throws IOException {
        this.parser.processImplicitActions();
        if (this.out != null) {
            this.out.flush();
        }
    }
    
    @Override
    public void startItem() throws IOException {
        if (!this.isEmpty.get(this.pos)) {
            this.parser.advance(Symbol.ITEM_END);
        }
        super.startItem();
        this.isEmpty.clear(this.depth());
    }
    
    @Override
    public void writeArrayEnd() throws IOException {
        if (!this.isEmpty.get(this.pos)) {
            this.parser.advance(Symbol.ITEM_END);
        }
        this.pop();
        this.parser.advance(Symbol.ARRAY_END);
        this.out.writeEndArray();
    }
    
    @Override
    public void writeArrayStart() throws IOException {
        this.parser.advance(Symbol.ARRAY_START);
        this.out.writeStartArray();
        this.push();
        this.isEmpty.set(this.depth());
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException {
        this.parser.advance(Symbol.BOOLEAN);
        this.out.writeBoolean(b);
    }
    
    @Override
    public void writeBytes(final ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.hasArray()) {
            this.writeBytes(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining());
            return;
        }
        final byte[] array = new byte[byteBuffer.remaining()];
        for (int i = 0; i < array.length; ++i) {
            array[i] = byteBuffer.get();
        }
        this.writeBytes(array);
    }
    
    @Override
    public void writeBytes(final byte[] array, final int n, final int n2) throws IOException {
        this.parser.advance(Symbol.BYTES);
        this.writeByteArray(array, n, n2);
    }
    
    @Override
    public void writeDouble(final double n) throws IOException {
        this.parser.advance(Symbol.DOUBLE);
        this.out.writeNumber(n);
    }
    
    @Override
    public void writeEnum(final int i) throws IOException {
        this.parser.advance(Symbol.ENUM);
        final Symbol.EnumLabelsAction enumLabelsAction = (Symbol.EnumLabelsAction)this.parser.popSymbol();
        if (i < 0 || i >= enumLabelsAction.size) {
            throw new AvroTypeException("Enumeration out of range: max is " + enumLabelsAction.size + " but received " + i);
        }
        this.out.writeString(enumLabelsAction.getLabel(i));
    }
    
    @Override
    public void writeFixed(final byte[] array, final int n, final int i) throws IOException {
        this.parser.advance(Symbol.FIXED);
        final Symbol.IntCheckAction intCheckAction = (Symbol.IntCheckAction)this.parser.popSymbol();
        if (i != intCheckAction.size) {
            throw new AvroTypeException("Incorrect length for fixed binary: expected " + intCheckAction.size + " but received " + i + " bytes.");
        }
        this.writeByteArray(array, n, i);
    }
    
    @Override
    public void writeFloat(final float n) throws IOException {
        this.parser.advance(Symbol.FLOAT);
        this.out.writeNumber(n);
    }
    
    @Override
    public void writeIndex(final int n) throws IOException {
        this.parser.advance(Symbol.UNION);
        final Symbol.Alternative alternative = (Symbol.Alternative)this.parser.popSymbol();
        final Symbol symbol = alternative.getSymbol(n);
        if (symbol != Symbol.NULL) {
            this.out.writeStartObject();
            this.out.writeFieldName(alternative.getLabel(n));
            this.parser.pushSymbol(Symbol.UNION_END);
        }
        this.parser.pushSymbol(symbol);
    }
    
    @Override
    public void writeInt(final int n) throws IOException {
        this.parser.advance(Symbol.INT);
        this.out.writeNumber(n);
    }
    
    @Override
    public void writeLong(final long n) throws IOException {
        this.parser.advance(Symbol.LONG);
        this.out.writeNumber(n);
    }
    
    @Override
    public void writeMapEnd() throws IOException {
        if (!this.isEmpty.get(this.pos)) {
            this.parser.advance(Symbol.ITEM_END);
        }
        this.pop();
        this.parser.advance(Symbol.MAP_END);
        this.out.writeEndObject();
    }
    
    @Override
    public void writeMapStart() throws IOException {
        this.push();
        this.isEmpty.set(this.depth());
        this.parser.advance(Symbol.MAP_START);
        this.out.writeStartObject();
    }
    
    @Override
    public void writeNull() throws IOException {
        this.parser.advance(Symbol.NULL);
        this.out.writeNull();
    }
    
    @Override
    public void writeString(final Utf8 utf8) throws IOException {
        this.writeString(utf8.toString());
    }
    
    @Override
    public void writeString(final String s) throws IOException {
        this.parser.advance(Symbol.STRING);
        if (this.parser.topSymbol() == Symbol.MAP_KEY_MARKER) {
            this.parser.advance(Symbol.MAP_KEY_MARKER);
            this.out.writeFieldName(s);
            return;
        }
        this.out.writeString(s);
    }
}

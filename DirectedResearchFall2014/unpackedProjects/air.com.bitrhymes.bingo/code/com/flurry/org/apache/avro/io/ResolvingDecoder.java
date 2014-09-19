package com.flurry.org.apache.avro.io;

import java.io.*;
import com.flurry.org.apache.avro.io.parsing.*;
import com.flurry.org.apache.avro.*;

public class ResolvingDecoder extends ValidatingDecoder
{
    private Decoder backup;
    
    ResolvingDecoder(final Schema schema, final Schema schema2, final Decoder decoder) throws IOException {
        this(resolve(schema, schema2), decoder);
    }
    
    private ResolvingDecoder(final Object o, final Decoder decoder) throws IOException {
        super((Symbol)o, decoder);
    }
    
    public static Object resolve(final Schema schema, final Schema schema2) throws IOException {
        if (schema == null) {
            throw new NullPointerException("writer cannot be null!");
        }
        if (schema2 == null) {
            throw new NullPointerException("reader cannot be null!");
        }
        return new ResolvingGrammarGenerator().generate(schema, schema2);
    }
    
    @Override
    public Symbol doAction(final Symbol obj, final Symbol obj2) throws IOException {
        if (obj2 instanceof Symbol.FieldOrderAction) {
            if (obj == Symbol.FIELD_ACTION) {
                return obj2;
            }
            return null;
        }
        else {
            if (!(obj2 instanceof Symbol.ResolvingAction)) {
                if (obj2 instanceof Symbol.SkipAction) {
                    this.parser.skipSymbol(((Symbol.SkipAction)obj2).symToSkip);
                }
                else if (obj2 instanceof Symbol.WriterUnionAction) {
                    this.parser.pushSymbol(((Symbol.Alternative)this.parser.popSymbol()).getSymbol(this.in.readIndex()));
                }
                else {
                    if (obj2 instanceof Symbol.ErrorAction) {
                        throw new AvroTypeException(((Symbol.ErrorAction)obj2).msg);
                    }
                    if (obj2 instanceof Symbol.DefaultStartAction) {
                        final Symbol.DefaultStartAction defaultStartAction = (Symbol.DefaultStartAction)obj2;
                        this.backup = this.in;
                        this.in = DecoderFactory.get().binaryDecoder(defaultStartAction.contents, null);
                    }
                    else {
                        if (obj2 != Symbol.DEFAULT_END_ACTION) {
                            throw new AvroTypeException("Unknown action: " + obj2);
                        }
                        this.in = this.backup;
                    }
                }
                return null;
            }
            final Symbol.ResolvingAction resolvingAction = (Symbol.ResolvingAction)obj2;
            if (resolvingAction.reader != obj) {
                throw new AvroTypeException("Found " + resolvingAction.reader + " while looking for " + obj);
            }
            return resolvingAction.writer;
        }
    }
    
    public final void drain() throws IOException {
        this.parser.processImplicitActions();
    }
    
    @Override
    public double readDouble() throws IOException {
        final Symbol advance = this.parser.advance(Symbol.DOUBLE);
        if (advance == Symbol.INT) {
            return this.in.readInt();
        }
        if (advance == Symbol.LONG) {
            return this.in.readLong();
        }
        if (advance == Symbol.FLOAT) {
            return this.in.readFloat();
        }
        assert advance == Symbol.DOUBLE;
        return this.in.readDouble();
    }
    
    @Override
    public int readEnum() throws IOException {
        this.parser.advance(Symbol.ENUM);
        final Object o = ((Symbol.EnumAdjustAction)this.parser.popSymbol()).adjustments[this.in.readEnum()];
        if (o instanceof Integer) {
            return (int)o;
        }
        throw new AvroTypeException((String)o);
    }
    
    public final Schema.Field[] readFieldOrder() throws IOException {
        return ((Symbol.FieldOrderAction)this.parser.advance(Symbol.FIELD_ACTION)).fields;
    }
    
    @Override
    public float readFloat() throws IOException {
        final Symbol advance = this.parser.advance(Symbol.FLOAT);
        if (advance == Symbol.INT) {
            return this.in.readInt();
        }
        if (advance == Symbol.LONG) {
            return this.in.readLong();
        }
        assert advance == Symbol.FLOAT;
        return this.in.readFloat();
    }
    
    @Override
    public int readIndex() throws IOException {
        this.parser.advance(Symbol.UNION);
        final Symbol.UnionAdjustAction unionAdjustAction = (Symbol.UnionAdjustAction)this.parser.popSymbol();
        this.parser.pushSymbol(unionAdjustAction.symToParse);
        return unionAdjustAction.rindex;
    }
    
    @Override
    public long readLong() throws IOException {
        final Symbol advance = this.parser.advance(Symbol.LONG);
        if (advance == Symbol.INT) {
            return this.in.readInt();
        }
        if (advance == Symbol.DOUBLE) {
            return (long)this.in.readDouble();
        }
        assert advance == Symbol.LONG;
        return this.in.readLong();
    }
    
    @Override
    public void skipAction() throws IOException {
        final Symbol popSymbol = this.parser.popSymbol();
        if (popSymbol instanceof Symbol.ResolvingAction) {
            this.parser.pushSymbol(((Symbol.ResolvingAction)popSymbol).writer);
        }
        else {
            if (popSymbol instanceof Symbol.SkipAction) {
                this.parser.pushSymbol(((Symbol.SkipAction)popSymbol).symToSkip);
                return;
            }
            if (popSymbol instanceof Symbol.WriterUnionAction) {
                this.parser.pushSymbol(((Symbol.Alternative)this.parser.popSymbol()).getSymbol(this.in.readIndex()));
                return;
            }
            if (popSymbol instanceof Symbol.ErrorAction) {
                throw new AvroTypeException(((Symbol.ErrorAction)popSymbol).msg);
            }
            if (popSymbol instanceof Symbol.DefaultStartAction) {
                final Symbol.DefaultStartAction defaultStartAction = (Symbol.DefaultStartAction)popSymbol;
                this.backup = this.in;
                this.in = DecoderFactory.get().binaryDecoder(defaultStartAction.contents, null);
                return;
            }
            if (popSymbol == Symbol.DEFAULT_END_ACTION) {
                this.in = this.backup;
            }
        }
    }
}

package com.flurry.org.apache.avro.generic;

import com.flurry.org.apache.avro.*;
import java.util.*;
import com.flurry.org.apache.avro.io.*;
import java.io.*;
import java.nio.*;

public class GenericDatumWriter<D> implements DatumWriter<D>
{
    private final GenericData data;
    private Schema root;
    
    public GenericDatumWriter() {
        this(GenericData.get());
    }
    
    public GenericDatumWriter(final Schema schema) {
        this();
        this.setSchema(schema);
    }
    
    protected GenericDatumWriter(final Schema schema, final GenericData genericData) {
        this(genericData);
        this.setSchema(schema);
    }
    
    protected GenericDatumWriter(final GenericData data) {
        super();
        this.data = data;
    }
    
    private void error(final Schema obj, final Object obj2) {
        throw new AvroTypeException("Not a " + obj + ": " + obj2);
    }
    
    protected Iterator<?> getArrayElements(final Object o) {
        return ((Collection)o).iterator();
    }
    
    protected long getArraySize(final Object o) {
        return ((Collection)o).size();
    }
    
    public GenericData getData() {
        return this.data;
    }
    
    protected Iterable<Map.Entry<Object, Object>> getMapEntries(final Object o) {
        return (Iterable<Map.Entry<Object, Object>>)((Map)o).entrySet();
    }
    
    protected int getMapSize(final Object o) {
        return ((Map)o).size();
    }
    
    protected NullPointerException npe(final NullPointerException ex, final String str) {
        final NullPointerException ex2 = new NullPointerException(ex.getMessage() + str);
        Throwable cause;
        if (ex.getCause() == null) {
            cause = ex;
        }
        else {
            cause = ex.getCause();
        }
        ex2.initCause(cause);
        return ex2;
    }
    
    protected int resolveUnion(final Schema schema, final Object o) {
        return this.data.resolveUnion(schema, o);
    }
    
    @Override
    public void setSchema(final Schema root) {
        this.root = root;
    }
    
    protected void write(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        Label_0268: {
            Label_0256: {
                Label_0244: {
                    Label_0232: {
                        Label_0220: {
                            Label_0208: {
                                Label_0201: {
                                    Label_0193: {
                                        Label_0185: {
                                            Label_0150: {
                                                Label_0142: {
                                                    Label_0134: {
                                                        try {
                                                            switch (schema.getType()) {
                                                                default: {
                                                                    this.error(schema, o);
                                                                    return;
                                                                }
                                                                case RECORD: {
                                                                    this.writeRecord(schema, o, encoder);
                                                                    return;
                                                                }
                                                                case ENUM: {
                                                                    break;
                                                                }
                                                                case ARRAY: {
                                                                    break Label_0134;
                                                                }
                                                                case MAP: {
                                                                    break Label_0142;
                                                                }
                                                                case UNION: {
                                                                    break Label_0150;
                                                                }
                                                                case FIXED: {
                                                                    break Label_0185;
                                                                }
                                                                case STRING: {
                                                                    break Label_0193;
                                                                }
                                                                case BYTES: {
                                                                    break Label_0201;
                                                                }
                                                                case INT: {
                                                                    break Label_0208;
                                                                }
                                                                case LONG: {
                                                                    break Label_0220;
                                                                }
                                                                case FLOAT: {
                                                                    break Label_0232;
                                                                }
                                                                case DOUBLE: {
                                                                    break Label_0244;
                                                                }
                                                                case BOOLEAN: {
                                                                    break Label_0256;
                                                                }
                                                                case NULL: {
                                                                    break Label_0268;
                                                                }
                                                            }
                                                        }
                                                        catch (NullPointerException ex) {
                                                            throw this.npe(ex, " of " + schema.getFullName());
                                                        }
                                                        this.writeEnum(schema, o, encoder);
                                                        return;
                                                    }
                                                    this.writeArray(schema, o, encoder);
                                                    return;
                                                }
                                                this.writeMap(schema, o, encoder);
                                                return;
                                            }
                                            final int resolveUnion = this.resolveUnion(schema, o);
                                            encoder.writeIndex(resolveUnion);
                                            this.write(schema.getTypes().get(resolveUnion), o, encoder);
                                            return;
                                        }
                                        this.writeFixed(schema, o, encoder);
                                        return;
                                    }
                                    this.writeString(schema, o, encoder);
                                    return;
                                }
                                this.writeBytes(o, encoder);
                                return;
                            }
                            encoder.writeInt(((Number)o).intValue());
                            return;
                        }
                        encoder.writeLong((long)o);
                        return;
                    }
                    encoder.writeFloat((float)o);
                    return;
                }
                encoder.writeDouble((double)o);
                return;
            }
            encoder.writeBoolean((boolean)o);
            return;
        }
        encoder.writeNull();
    }
    
    @Override
    public void write(final D n, final Encoder encoder) throws IOException {
        this.write(this.root, n, encoder);
    }
    
    protected void writeArray(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        final Schema elementType = schema.getElementType();
        final long arraySize = this.getArraySize(o);
        encoder.writeArrayStart();
        encoder.setItemCount(arraySize);
        final Iterator<?> arrayElements = this.getArrayElements(o);
        while (arrayElements.hasNext()) {
            encoder.startItem();
            this.write(elementType, arrayElements.next(), encoder);
        }
        encoder.writeArrayEnd();
    }
    
    protected void writeBytes(final Object o, final Encoder encoder) throws IOException {
        encoder.writeBytes((ByteBuffer)o);
    }
    
    protected void writeEnum(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        encoder.writeEnum(schema.getEnumOrdinal(o.toString()));
    }
    
    protected void writeFixed(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        encoder.writeFixed(((GenericFixed)o).bytes(), 0, schema.getFixedSize());
    }
    
    protected void writeMap(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        final Schema valueType = schema.getValueType();
        final int mapSize = this.getMapSize(o);
        encoder.writeMapStart();
        encoder.setItemCount(mapSize);
        for (final Map.Entry<Object, Object> entry : this.getMapEntries(o)) {
            encoder.startItem();
            this.writeString(entry.getKey(), encoder);
            this.write(valueType, entry.getValue(), encoder);
        }
        encoder.writeMapEnd();
    }
    
    protected void writeRecord(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        final Object recordState = this.data.getRecordState(o, schema);
        for (final Schema.Field field : schema.getFields()) {
            final Object field2 = this.data.getField(o, field.name(), field.pos(), recordState);
            try {
                this.write(field.schema(), field2, encoder);
                continue;
            }
            catch (NullPointerException ex) {
                throw this.npe(ex, " in field " + field.name());
            }
            break;
        }
    }
    
    protected void writeString(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        this.writeString(o, encoder);
    }
    
    protected void writeString(final Object o, final Encoder encoder) throws IOException {
        encoder.writeString((CharSequence)o);
    }
}

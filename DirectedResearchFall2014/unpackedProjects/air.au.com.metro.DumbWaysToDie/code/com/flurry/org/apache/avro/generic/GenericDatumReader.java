package com.flurry.org.apache.avro.generic;

import java.io.*;
import java.nio.*;
import com.flurry.org.apache.avro.util.*;
import com.flurry.org.apache.avro.io.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class GenericDatumReader<D> implements DatumReader<D>
{
    private static final ThreadLocal<Map<Schema, Map<Schema, ResolvingDecoder>>> RESOLVER_CACHE;
    private Schema actual;
    private final Thread creator;
    private ResolvingDecoder creatorResolver;
    private final GenericData data;
    private Schema expected;
    
    static {
        RESOLVER_CACHE = new ThreadLocal<Map<Schema, Map<Schema, ResolvingDecoder>>>() {
            @Override
            protected Map<Schema, Map<Schema, ResolvingDecoder>> initialValue() {
                return new WeakIdentityHashMap<Schema, Map<Schema, ResolvingDecoder>>();
            }
        };
    }
    
    public GenericDatumReader() {
        this(null, null, GenericData.get());
    }
    
    public GenericDatumReader(final Schema schema) {
        this(schema, schema, GenericData.get());
    }
    
    public GenericDatumReader(final Schema schema, final Schema schema2) {
        this(schema, schema2, GenericData.get());
    }
    
    protected GenericDatumReader(final Schema actual, final Schema expected, final GenericData data) {
        super();
        this.creatorResolver = null;
        this.actual = actual;
        this.expected = expected;
        this.data = data;
        this.creator = Thread.currentThread();
    }
    
    public static void skip(final Schema obj, final Decoder decoder) throws IOException {
        switch (obj.getType()) {
            default: {
                throw new RuntimeException("Unknown type: " + obj);
            }
            case NULL: {}
            case RECORD: {
                final Iterator<Schema.Field> iterator = obj.getFields().iterator();
                while (iterator.hasNext()) {
                    skip(((Schema.Field)iterator.next()).schema(), decoder);
                }
            }
            case MAP: {
                final Schema valueType = obj.getValueType();
                for (long n = decoder.skipMap(); n > 0L; n = decoder.skipMap()) {
                    for (long n2 = 0L; n2 < n; ++n2) {
                        decoder.skipString();
                        skip(valueType, decoder);
                    }
                }
            }
            case ARRAY: {
                final Schema elementType = obj.getElementType();
                for (long n3 = decoder.skipArray(); n3 > 0L; n3 = decoder.skipArray()) {
                    for (long n4 = 0L; n4 < n3; ++n4) {
                        skip(elementType, decoder);
                    }
                }
            }
            case ENUM: {
                decoder.readInt();
            }
            case UNION: {
                skip(obj.getTypes().get(decoder.readIndex()), decoder);
            }
            case FIXED: {
                decoder.skipFixed(obj.getFixedSize());
            }
            case STRING: {
                decoder.skipString();
            }
            case BYTES: {
                decoder.skipBytes();
            }
            case INT: {
                decoder.readInt();
            }
            case LONG: {
                decoder.readLong();
            }
            case FLOAT: {
                decoder.readFloat();
            }
            case DOUBLE: {
                decoder.readDouble();
            }
            case BOOLEAN: {
                decoder.readBoolean();
            }
        }
    }
    
    protected void addToArray(final Object o, final long n, final Object o2) {
        ((Collection)o).add(o2);
    }
    
    protected void addToMap(final Object o, final Object o2, final Object o3) {
        ((Map)o).put(o2, o3);
    }
    
    protected Object createBytes(final byte[] array) {
        return ByteBuffer.wrap(array);
    }
    
    protected Object createEnum(final String s, final Schema schema) {
        return new GenericData.EnumSymbol(schema, s);
    }
    
    @Deprecated
    protected Object createFixed(final Object o, final Schema schema) {
        return this.data.createFixed(o, schema);
    }
    
    @Deprecated
    protected Object createFixed(final Object o, final byte[] array, final Schema schema) {
        return this.data.createFixed(o, array, schema);
    }
    
    protected Object createString(final String s) {
        return new Utf8(s);
    }
    
    public GenericData getData() {
        return this.data;
    }
    
    public Schema getExpected() {
        return this.expected;
    }
    
    protected final ResolvingDecoder getResolver(final Schema schema, final Schema schema2) throws IOException {
        final Thread currentThread = Thread.currentThread();
        if (currentThread == this.creator && this.creatorResolver != null) {
            return this.creatorResolver;
        }
        Map<Schema, ResolvingDecoder> map = GenericDatumReader.RESOLVER_CACHE.get().get(schema);
        if (map == null) {
            map = new WeakIdentityHashMap<Schema, ResolvingDecoder>();
            GenericDatumReader.RESOLVER_CACHE.get().put(schema, map);
        }
        ResolvingDecoder resolvingDecoder = map.get(schema2);
        if (resolvingDecoder == null) {
            resolvingDecoder = DecoderFactory.get().resolvingDecoder(Schema.applyAliases(schema, schema2), schema2, null);
            map.put(schema2, resolvingDecoder);
        }
        if (currentThread == this.creator) {
            this.creatorResolver = resolvingDecoder;
        }
        return resolvingDecoder;
    }
    
    public Schema getSchema() {
        return this.actual;
    }
    
    protected Object newArray(final Object o, final int n, final Schema schema) {
        if (o instanceof Collection) {
            ((Collection)o).clear();
            return o;
        }
        return new GenericData.Array(n, schema);
    }
    
    protected Object newMap(final Object o, final int initialCapacity) {
        if (o instanceof Map) {
            ((Map)o).clear();
            return o;
        }
        return new HashMap(initialCapacity);
    }
    
    @Deprecated
    protected Object newRecord(final Object o, final Schema schema) {
        return this.data.newRecord(o, schema);
    }
    
    protected Object peekArray(final Object o) {
        if (o instanceof GenericArray) {
            return ((GenericArray)o).peek();
        }
        return null;
    }
    
    protected Object read(final Object o, final Schema obj, final ResolvingDecoder resolvingDecoder) throws IOException {
        switch (obj.getType()) {
            default: {
                throw new AvroRuntimeException("Unknown type: " + obj);
            }
            case RECORD: {
                return this.readRecord(o, obj, resolvingDecoder);
            }
            case ENUM: {
                return this.readEnum(obj, resolvingDecoder);
            }
            case ARRAY: {
                return this.readArray(o, obj, resolvingDecoder);
            }
            case MAP: {
                return this.readMap(o, obj, resolvingDecoder);
            }
            case UNION: {
                return this.read(o, obj.getTypes().get(resolvingDecoder.readIndex()), resolvingDecoder);
            }
            case FIXED: {
                return this.readFixed(o, obj, resolvingDecoder);
            }
            case STRING: {
                return this.readString(o, obj, resolvingDecoder);
            }
            case BYTES: {
                return this.readBytes(o, resolvingDecoder);
            }
            case INT: {
                return this.readInt(o, obj, resolvingDecoder);
            }
            case LONG: {
                return resolvingDecoder.readLong();
            }
            case FLOAT: {
                return resolvingDecoder.readFloat();
            }
            case DOUBLE: {
                return resolvingDecoder.readDouble();
            }
            case BOOLEAN: {
                return resolvingDecoder.readBoolean();
            }
            case NULL: {
                resolvingDecoder.readNull();
                return null;
            }
        }
    }
    
    @Override
    public D read(final D n, final Decoder decoder) throws IOException {
        final ResolvingDecoder resolver = this.getResolver(this.actual, this.expected);
        resolver.configure(decoder);
        final Object read = this.read(n, this.expected, resolver);
        resolver.drain();
        return (D)read;
    }
    
    protected Object readArray(final Object o, final Schema schema, final ResolvingDecoder resolvingDecoder) throws IOException {
        final Schema elementType = schema.getElementType();
        long n = resolvingDecoder.readArrayStart();
        long n2 = 0L;
        if (n > 0L) {
            final Object array = this.newArray(o, (int)n, schema);
            do {
                for (long n3 = 0L; n3 < n; ++n3) {
                    this.addToArray(array, n2 + n3, this.read(this.peekArray(array), elementType, resolvingDecoder));
                }
                n2 += n;
                n = resolvingDecoder.arrayNext();
            } while (n > 0L);
            return array;
        }
        return this.newArray(o, 0, schema);
    }
    
    protected Object readBytes(final Object o, final Decoder decoder) throws IOException {
        ByteBuffer byteBuffer;
        if (o instanceof ByteBuffer) {
            byteBuffer = (ByteBuffer)o;
        }
        else {
            byteBuffer = null;
        }
        return decoder.readBytes(byteBuffer);
    }
    
    protected Object readEnum(final Schema schema, final Decoder decoder) throws IOException {
        return this.createEnum(schema.getEnumSymbols().get(decoder.readEnum()), schema);
    }
    
    protected Object readFixed(final Object o, final Schema schema, final Decoder decoder) throws IOException {
        final GenericFixed genericFixed = (GenericFixed)this.data.createFixed(o, schema);
        decoder.readFixed(genericFixed.bytes(), 0, schema.getFixedSize());
        return genericFixed;
    }
    
    protected Object readInt(final Object o, final Schema schema, final Decoder decoder) throws IOException {
        return decoder.readInt();
    }
    
    protected Object readMap(final Object o, final Schema schema, final ResolvingDecoder resolvingDecoder) throws IOException {
        final Schema valueType = schema.getValueType();
        long n = resolvingDecoder.readMapStart();
        final Object map = this.newMap(o, (int)n);
        if (n > 0L) {
            do {
                for (int n2 = 0; n2 < n; ++n2) {
                    this.addToMap(map, this.readString(null, schema, resolvingDecoder), this.read(null, valueType, resolvingDecoder));
                }
                n = resolvingDecoder.mapNext();
            } while (n > 0L);
        }
        return map;
    }
    
    protected Object readRecord(final Object o, final Schema schema, final ResolvingDecoder resolvingDecoder) throws IOException {
        final Object record = this.data.newRecord(o, schema);
        final Object recordState = this.data.getRecordState(record, schema);
        for (final Schema.Field field : resolvingDecoder.readFieldOrder()) {
            final int pos = field.pos();
            final String name = field.name();
            Object field2;
            if (o != null) {
                field2 = this.data.getField(record, name, pos, recordState);
            }
            else {
                field2 = null;
            }
            this.data.setField(record, name, pos, this.read(field2, field.schema(), resolvingDecoder), recordState);
        }
        return record;
    }
    
    protected Object readString(final Object o, final Schema schema, final Decoder decoder) throws IOException {
        final GenericData data = this.data;
        final GenericData data2 = this.data;
        if ("String".equals(schema.getProp("avro.java.string"))) {
            return decoder.readString();
        }
        return this.readString(o, decoder);
    }
    
    protected Object readString(final Object o, final Decoder decoder) throws IOException {
        Utf8 utf8;
        if (o instanceof Utf8) {
            utf8 = (Utf8)o;
        }
        else {
            utf8 = null;
        }
        return decoder.readString(utf8);
    }
    
    public void setExpected(final Schema expected) {
        this.expected = expected;
        this.creatorResolver = null;
    }
    
    @Override
    public void setSchema(final Schema actual) {
        this.actual = actual;
        if (this.expected == null) {
            this.expected = this.actual;
        }
        this.creatorResolver = null;
    }
}

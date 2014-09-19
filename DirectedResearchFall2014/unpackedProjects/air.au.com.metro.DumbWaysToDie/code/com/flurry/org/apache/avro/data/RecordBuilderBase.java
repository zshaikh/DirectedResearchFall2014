package com.flurry.org.apache.avro.data;

import com.flurry.org.apache.avro.generic.*;
import java.util.concurrent.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.io.parsing.*;
import com.flurry.org.apache.avro.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import java.util.*;

public abstract class RecordBuilderBase<T extends IndexedRecord> implements RecordBuilder<T>
{
    private static final ConcurrentMap<String, ConcurrentMap<Integer, Object>> DEFAULT_VALUE_CACHE;
    private static final Schema.Field[] EMPTY_FIELDS;
    private final GenericData data;
    private BinaryDecoder decoder;
    private BinaryEncoder encoder;
    private final boolean[] fieldSetFlags;
    private final Schema.Field[] fields;
    private final Schema schema;
    
    static {
        DEFAULT_VALUE_CACHE = new ConcurrentHashMap<String, ConcurrentMap<Integer, Object>>();
        EMPTY_FIELDS = new Schema.Field[0];
    }
    
    protected RecordBuilderBase(final Schema schema, final GenericData data) {
        super();
        this.encoder = null;
        this.decoder = null;
        this.schema = schema;
        this.data = data;
        this.fields = schema.getFields().toArray(RecordBuilderBase.EMPTY_FIELDS);
        this.fieldSetFlags = new boolean[this.fields.length];
    }
    
    protected RecordBuilderBase(final RecordBuilderBase<T> recordBuilderBase, final GenericData data) {
        super();
        this.encoder = null;
        this.decoder = null;
        this.schema = recordBuilderBase.schema;
        this.data = data;
        this.fields = this.schema.getFields().toArray(RecordBuilderBase.EMPTY_FIELDS);
        this.fieldSetFlags = new boolean[recordBuilderBase.fieldSetFlags.length];
        System.arraycopy(recordBuilderBase.fieldSetFlags, 0, this.fieldSetFlags, 0, this.fieldSetFlags.length);
    }
    
    protected static boolean isValidValue(final Schema.Field field, final Object o) {
        if (o != null) {
            return true;
        }
        final Schema schema = field.schema();
        final Schema.Type type = schema.getType();
        if (type == Schema.Type.NULL) {
            return true;
        }
        if (type == Schema.Type.UNION) {
            final Iterator<Schema> iterator = schema.getTypes().iterator();
            while (iterator.hasNext()) {
                if (iterator.next().getType() == Schema.Type.NULL) {
                    return true;
                }
            }
        }
        return false;
    }
    
    protected final GenericData data() {
        return this.data;
    }
    
    protected Object defaultValue(final Schema.Field obj) throws IOException {
        final JsonNode defaultValue = obj.defaultValue();
        if (defaultValue == null) {
            throw new AvroRuntimeException("Field " + obj + " not set and has no default value");
        }
        if (defaultValue.isNull() && (obj.schema().getType() == Schema.Type.NULL || (obj.schema().getType() == Schema.Type.UNION && obj.schema().getTypes().get(0).getType() == Schema.Type.NULL))) {
            return null;
        }
        ConcurrentMap<Object, Object> concurrentMap = RecordBuilderBase.DEFAULT_VALUE_CACHE.get(this.schema.getFullName());
        if (concurrentMap == null) {
            RecordBuilderBase.DEFAULT_VALUE_CACHE.putIfAbsent(this.schema.getFullName(), new ConcurrentHashMap<Integer, Object>(this.fields.length));
            concurrentMap = RecordBuilderBase.DEFAULT_VALUE_CACHE.get(this.schema.getFullName());
        }
        Object o = concurrentMap.get(obj.pos());
        if (o == null) {
            final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ResolvingGrammarGenerator.encode(this.encoder = EncoderFactory.get().binaryEncoder(byteArrayOutputStream, this.encoder), obj.schema(), defaultValue);
            this.encoder.flush();
            this.decoder = DecoderFactory.get().binaryDecoder(byteArrayOutputStream.toByteArray(), this.decoder);
            o = this.data.createDatumReader(obj.schema()).read(null, this.decoder);
            concurrentMap.putIfAbsent(obj.pos(), o);
        }
        return this.data.deepCopy(obj.schema(), o);
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (this.getClass() != o.getClass()) {
            return false;
        }
        final RecordBuilderBase recordBuilderBase = (RecordBuilderBase)o;
        if (!Arrays.equals(this.fieldSetFlags, recordBuilderBase.fieldSetFlags)) {
            return false;
        }
        if (this.schema == null) {
            if (recordBuilderBase.schema != null) {
                return false;
            }
        }
        else if (!this.schema.equals(recordBuilderBase.schema)) {
            return false;
        }
        return true;
    }
    
    protected final boolean[] fieldSetFlags() {
        return this.fieldSetFlags;
    }
    
    protected final Schema.Field[] fields() {
        return this.fields;
    }
    
    @Override
    public int hashCode() {
        final int n = 31 * (31 + Arrays.hashCode(this.fieldSetFlags));
        int hashCode;
        if (this.schema == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.schema.hashCode();
        }
        return n + hashCode;
    }
    
    protected final Schema schema() {
        return this.schema;
    }
    
    protected void validate(final Schema.Field obj, final Object o) {
        if (!isValidValue(obj, o) && obj.defaultValue() == null) {
            throw new AvroRuntimeException("Field " + obj + " does not accept null values");
        }
    }
}

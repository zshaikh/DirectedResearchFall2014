package com.flurry.org.apache.avro.generic;

import com.flurry.org.apache.avro.util.*;
import java.nio.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.io.*;
import java.util.*;
import java.io.*;

public class GenericData
{
    private static final GenericData INSTANCE;
    private static final Schema STRINGS;
    protected static final String STRING_PROP = "avro.java.string";
    protected static final String STRING_TYPE_STRING = "String";
    
    static {
        INSTANCE = new GenericData();
        STRINGS = Schema.create(Schema.Type.STRING);
    }
    
    public static GenericData get() {
        return GenericData.INSTANCE;
    }
    
    public static void setStringType(final Schema schema, final StringType stringType) {
        if (stringType == StringType.String) {
            schema.addProp("avro.java.string", "String");
        }
    }
    
    private void writeEscapedString(final String s, final StringBuilder sb) {
        for (int i = 0; i < s.length(); ++i) {
            final char char1 = s.charAt(i);
            switch (char1) {
                default: {
                    if ((char1 >= '\0' && char1 <= '\u001f') || (char1 >= '\u007f' && char1 <= '\u009f') || (char1 >= '\u2000' && char1 <= '\u20ff')) {
                        Integer.toHexString(char1);
                        sb.append("\\u");
                        for (int j = 0; j < 4 - sb.length(); ++j) {
                            sb.append('0');
                        }
                        sb.append(s.toUpperCase());
                        break;
                    }
                    sb.append(char1);
                    break;
                }
                case 34: {
                    sb.append("\\\"");
                    break;
                }
                case 92: {
                    sb.append("\\\\");
                    break;
                }
                case 8: {
                    sb.append("\\b");
                    break;
                }
                case 12: {
                    sb.append("\\f");
                    break;
                }
                case 10: {
                    sb.append("\\n");
                    break;
                }
                case 13: {
                    sb.append("\\r");
                    break;
                }
                case 9: {
                    sb.append("\\t");
                    break;
                }
                case 47: {
                    sb.append("\\/");
                    break;
                }
            }
        }
    }
    
    public int compare(final Object o, final Object o2, final Schema schema) {
        return this.compare(o, o2, schema, false);
    }
    
    protected int compare(final Object o, final Object o2, final Schema schema, final boolean b) {
        if (o == o2) {
            return 0;
        }
        switch (schema.getType()) {
            default: {
                return ((Comparable)o).compareTo(o2);
            }
            case RECORD: {
                for (final Schema.Field field : schema.getFields()) {
                    if (field.order() != Schema.Field.Order.IGNORE) {
                        final int pos = field.pos();
                        final String name = field.name();
                        final int compare = this.compare(this.getField(o, name, pos), this.getField(o2, name, pos), field.schema(), b);
                        if (compare == 0) {
                            continue;
                        }
                        if (field.order() == Schema.Field.Order.DESCENDING) {
                            return -compare;
                        }
                        return compare;
                    }
                }
                return 0;
            }
            case ENUM: {
                return schema.getEnumOrdinal(o.toString()) - schema.getEnumOrdinal(o2.toString());
            }
            case ARRAY: {
                final Collection collection = (Collection)o;
                final Collection collection2 = (Collection)o2;
                final Iterator<Object> iterator2 = collection.iterator();
                final Iterator<Object> iterator3 = collection2.iterator();
                final Schema elementType = schema.getElementType();
                while (iterator2.hasNext() && iterator3.hasNext()) {
                    final int compare2 = this.compare(iterator2.next(), iterator3.next(), elementType, b);
                    if (compare2 != 0) {
                        return compare2;
                    }
                }
                if (iterator2.hasNext()) {
                    return 1;
                }
                if (iterator3.hasNext()) {
                    return -1;
                }
                return 0;
            }
            case MAP: {
                if (!b) {
                    throw new AvroRuntimeException("Can't compare maps!");
                }
                if (((Map)o).equals(o2)) {
                    return 0;
                }
                return 1;
            }
            case UNION: {
                final int resolveUnion = this.resolveUnion(schema, o);
                final int resolveUnion2 = this.resolveUnion(schema, o2);
                if (resolveUnion == resolveUnion2) {
                    return this.compare(o, o2, schema.getTypes().get(resolveUnion), b);
                }
                return resolveUnion - resolveUnion2;
            }
            case NULL: {
                return 0;
            }
            case STRING: {
                Utf8 utf8;
                if (o instanceof Utf8) {
                    utf8 = (Utf8)o;
                }
                else {
                    utf8 = new Utf8(o.toString());
                }
                Utf8 utf2;
                if (o2 instanceof Utf8) {
                    utf2 = (Utf8)o2;
                }
                else {
                    utf2 = new Utf8(o2.toString());
                }
                return utf8.compareTo(utf2);
            }
        }
    }
    
    public DatumReader createDatumReader(final Schema schema) {
        return new GenericDatumReader(schema, schema, this);
    }
    
    public Object createFixed(final Object o, final Schema schema) {
        if (o instanceof GenericFixed && ((GenericFixed)o).bytes().length == schema.getFixedSize()) {
            return o;
        }
        return new Fixed(schema);
    }
    
    public Object createFixed(final Object o, final byte[] array, final Schema schema) {
        final GenericFixed genericFixed = (GenericFixed)this.createFixed(o, schema);
        System.arraycopy(array, 0, genericFixed.bytes(), 0, schema.getFixedSize());
        return genericFixed;
    }
    
    public Object deepCopy(final Schema obj, final Object obj2) {
        if (obj2 == null) {
            return null;
        }
        switch (obj.getType()) {
            default: {
                throw new AvroRuntimeException("Deep copy failed for schema \"" + obj + "\" and value \"" + obj2 + "\"");
            }
            case ARRAY: {
                final List list = (List)obj2;
                final Array array = new Array<Object>(list.size(), obj);
                final Iterator<Object> iterator = list.iterator();
                while (iterator.hasNext()) {
                    array.add(this.deepCopy(obj.getElementType(), iterator.next()));
                }
                return array;
            }
            case BOOLEAN: {
                return new Boolean((boolean)obj2);
            }
            case BYTES: {
                final ByteBuffer byteBuffer = (ByteBuffer)obj2;
                final byte[] array2 = new byte[byteBuffer.capacity()];
                byteBuffer.rewind();
                byteBuffer.get(array2);
                byteBuffer.rewind();
                return ByteBuffer.wrap(array2);
            }
            case DOUBLE: {
                return new Double((double)obj2);
            }
            case ENUM: {
                return obj2;
            }
            case FIXED: {
                return this.createFixed(null, ((GenericFixed)obj2).bytes(), obj);
            }
            case FLOAT: {
                return new Float((float)obj2);
            }
            case INT: {
                return new Integer((int)obj2);
            }
            case LONG: {
                return new Long((long)obj2);
            }
            case MAP: {
                final Map map = (Map)obj2;
                final HashMap hashMap = new HashMap<CharSequence, Object>(map.size());
                for (final Map.Entry<Object, V> entry : map.entrySet()) {
                    hashMap.put((CharSequence)this.deepCopy(GenericData.STRINGS, entry.getKey()), this.deepCopy(obj.getValueType(), entry.getValue()));
                }
                return hashMap;
            }
            case NULL: {
                return null;
            }
            case RECORD: {
                final IndexedRecord indexedRecord = (IndexedRecord)obj2;
                final IndexedRecord indexedRecord2 = (IndexedRecord)this.newRecord(null, obj);
                for (final Schema.Field field : obj.getFields()) {
                    indexedRecord2.put(field.pos(), this.deepCopy(field.schema(), indexedRecord.get(field.pos())));
                }
                return indexedRecord2;
            }
            case STRING: {
                if (obj2 instanceof String) {
                    return obj2;
                }
                if (obj2 instanceof Utf8) {
                    return new Utf8((Utf8)obj2);
                }
                return new Utf8(obj2.toString());
            }
            case UNION: {
                return this.deepCopy(obj.getTypes().get(this.resolveUnion(obj, obj2)), obj2);
            }
        }
    }
    
    protected Schema getEnumSchema(final Object o) {
        return ((GenericContainer)o).getSchema();
    }
    
    public Object getField(final Object o, final String s, final int n) {
        return ((IndexedRecord)o).get(n);
    }
    
    protected Object getField(final Object o, final String s, final int n, final Object o2) {
        return this.getField(o, s, n);
    }
    
    protected Schema getFixedSchema(final Object o) {
        return ((GenericContainer)o).getSchema();
    }
    
    protected Schema getRecordSchema(final Object o) {
        return ((GenericContainer)o).getSchema();
    }
    
    protected Object getRecordState(final Object o, final Schema schema) {
        return null;
    }
    
    protected String getSchemaName(final Object obj) {
        if (obj == null) {
            return Schema.Type.NULL.getName();
        }
        if (this.isRecord(obj)) {
            return this.getRecordSchema(obj).getFullName();
        }
        if (this.isEnum(obj)) {
            return this.getEnumSchema(obj).getFullName();
        }
        if (this.isArray(obj)) {
            return Schema.Type.ARRAY.getName();
        }
        if (this.isMap(obj)) {
            return Schema.Type.MAP.getName();
        }
        if (this.isFixed(obj)) {
            return this.getFixedSchema(obj).getFullName();
        }
        if (this.isString(obj)) {
            return Schema.Type.STRING.getName();
        }
        if (this.isBytes(obj)) {
            return Schema.Type.BYTES.getName();
        }
        if (obj instanceof Integer) {
            return Schema.Type.INT.getName();
        }
        if (obj instanceof Long) {
            return Schema.Type.LONG.getName();
        }
        if (obj instanceof Float) {
            return Schema.Type.FLOAT.getName();
        }
        if (obj instanceof Double) {
            return Schema.Type.DOUBLE.getName();
        }
        if (obj instanceof Boolean) {
            return Schema.Type.BOOLEAN.getName();
        }
        throw new AvroRuntimeException("Unknown datum type: " + obj);
    }
    
    public int hashCode(final Object o, final Schema schema) {
        if (o == null) {
            return 0;
        }
        int n = 1;
        switch (schema.getType()) {
            default: {
                return o.hashCode();
            }
            case RECORD: {
                for (final Schema.Field field : schema.getFields()) {
                    if (field.order() != Schema.Field.Order.IGNORE) {
                        n = this.hashCodeAdd(n, this.getField(o, field.name(), field.pos()), field.schema());
                    }
                }
                return n;
            }
            case ARRAY: {
                final Collection collection = (Collection)o;
                final Schema elementType = schema.getElementType();
                final Iterator<Object> iterator2 = collection.iterator();
                while (iterator2.hasNext()) {
                    n = this.hashCodeAdd(n, iterator2.next(), elementType);
                }
                return n;
            }
            case UNION: {
                return this.hashCode(o, schema.getTypes().get(this.resolveUnion(schema, o)));
            }
            case ENUM: {
                return schema.getEnumOrdinal(o.toString());
            }
            case NULL: {
                return 0;
            }
            case STRING: {
                Object o2;
                if (o instanceof Utf8) {
                    o2 = o;
                }
                else {
                    o2 = new Utf8(o.toString());
                }
                return o2.hashCode();
            }
        }
    }
    
    protected int hashCodeAdd(final int n, final Object o, final Schema schema) {
        return n * 31 + this.hashCode(o, schema);
    }
    
    public Schema induce(final Object obj) {
        if (this.isRecord(obj)) {
            return this.getRecordSchema(obj);
        }
        if (obj instanceof Collection) {
            Schema induce = null;
            for (final Object next : (Collection)obj) {
                if (induce == null) {
                    induce = this.induce(next);
                }
                else {
                    if (!induce.equals(this.induce(next))) {
                        throw new AvroTypeException("No mixed type arrays.");
                    }
                    continue;
                }
            }
            if (induce == null) {
                throw new AvroTypeException("Empty array: " + obj);
            }
            return Schema.createArray(induce);
        }
        else if (obj instanceof Map) {
            final Map map = (Map)obj;
            Schema induce2 = null;
            for (final Map.Entry<K, Object> entry : map.entrySet()) {
                if (induce2 == null) {
                    induce2 = this.induce(entry.getValue());
                }
                else {
                    if (!induce2.equals(this.induce(entry.getValue()))) {
                        throw new AvroTypeException("No mixed type map values.");
                    }
                    continue;
                }
            }
            if (induce2 == null) {
                throw new AvroTypeException("Empty map: " + obj);
            }
            return Schema.createMap(induce2);
        }
        else {
            if (obj instanceof GenericFixed) {
                return Schema.createFixed(null, null, null, ((GenericFixed)obj).bytes().length);
            }
            if (obj instanceof CharSequence) {
                return Schema.create(Schema.Type.STRING);
            }
            if (obj instanceof ByteBuffer) {
                return Schema.create(Schema.Type.BYTES);
            }
            if (obj instanceof Integer) {
                return Schema.create(Schema.Type.INT);
            }
            if (obj instanceof Long) {
                return Schema.create(Schema.Type.LONG);
            }
            if (obj instanceof Float) {
                return Schema.create(Schema.Type.FLOAT);
            }
            if (obj instanceof Double) {
                return Schema.create(Schema.Type.DOUBLE);
            }
            if (obj instanceof Boolean) {
                return Schema.create(Schema.Type.BOOLEAN);
            }
            if (obj == null) {
                return Schema.create(Schema.Type.NULL);
            }
            throw new AvroTypeException("Can't create schema for: " + obj);
        }
    }
    
    protected boolean instanceOf(final Schema obj, final Object o) {
        switch (obj.getType()) {
            default: {
                throw new AvroRuntimeException("Unexpected type: " + obj);
            }
            case RECORD: {
                if (!this.isRecord(o)) {
                    return false;
                }
                if (obj.getFullName() == null) {
                    return this.getRecordSchema(o).getFullName() == null;
                }
                return obj.getFullName().equals(this.getRecordSchema(o).getFullName());
            }
            case ENUM: {
                return this.isEnum(o) && obj.getFullName().equals(this.getEnumSchema(o).getFullName());
            }
            case ARRAY: {
                return this.isArray(o);
            }
            case MAP: {
                return this.isMap(o);
            }
            case FIXED: {
                return this.isFixed(o) && obj.getFullName().equals(this.getFixedSchema(o).getFullName());
            }
            case STRING: {
                return this.isString(o);
            }
            case BYTES: {
                return this.isBytes(o);
            }
            case INT: {
                return o instanceof Integer;
            }
            case LONG: {
                return o instanceof Long;
            }
            case FLOAT: {
                return o instanceof Float;
            }
            case DOUBLE: {
                return o instanceof Double;
            }
            case BOOLEAN: {
                return o instanceof Boolean;
            }
            case NULL: {
                return o == null;
            }
        }
    }
    
    protected boolean isArray(final Object o) {
        return o instanceof Collection;
    }
    
    protected boolean isBytes(final Object o) {
        return o instanceof ByteBuffer;
    }
    
    protected boolean isEnum(final Object o) {
        return o instanceof GenericEnumSymbol;
    }
    
    protected boolean isFixed(final Object o) {
        return o instanceof GenericFixed;
    }
    
    protected boolean isMap(final Object o) {
        return o instanceof Map;
    }
    
    protected boolean isRecord(final Object o) {
        return o instanceof IndexedRecord;
    }
    
    protected boolean isString(final Object o) {
        return o instanceof CharSequence;
    }
    
    public Object newRecord(final Object o, final Schema schema) {
        if (o instanceof IndexedRecord) {
            final IndexedRecord indexedRecord = (IndexedRecord)o;
            if (indexedRecord.getSchema() == schema) {
                return indexedRecord;
            }
        }
        return new Record(schema);
    }
    
    public int resolveUnion(final Schema schema, final Object o) {
        final Integer indexNamed = schema.getIndexNamed(this.getSchemaName(o));
        if (indexNamed != null) {
            return indexNamed;
        }
        throw new UnresolvedUnionException(schema, o);
    }
    
    public void setField(final Object o, final String s, final int n, final Object o2) {
        ((IndexedRecord)o).put(n, o2);
    }
    
    protected void setField(final Object o, final String s, final int n, final Object o2, final Object o3) {
        this.setField(o, s, n, o2);
    }
    
    public String toString(final Object o) {
        final StringBuilder sb = new StringBuilder();
        this.toString(o, sb);
        return sb.toString();
    }
    
    protected void toString(final Object obj, final StringBuilder sb) {
        if (this.isRecord(obj)) {
            sb.append("{");
            int n = 0;
            final Schema recordSchema = this.getRecordSchema(obj);
            for (final Schema.Field field : recordSchema.getFields()) {
                this.toString(field.name(), sb);
                sb.append(": ");
                this.toString(this.getField(obj, field.name(), field.pos()), sb);
                ++n;
                if (n < recordSchema.getFields().size()) {
                    sb.append(", ");
                }
            }
            sb.append("}");
            return;
        }
        if (obj instanceof Collection) {
            final Collection collection = (Collection)obj;
            sb.append("[");
            final long n2 = collection.size() - 1;
            int n3 = 0;
            final Iterator<Object> iterator2 = collection.iterator();
            while (iterator2.hasNext()) {
                this.toString(iterator2.next(), sb);
                final int n4 = n3 + 1;
                if (n3 < n2) {
                    sb.append(", ");
                }
                n3 = n4;
            }
            sb.append("]");
            return;
        }
        if (obj instanceof Map) {
            sb.append("{");
            int n5 = 0;
            final Map map = (Map)obj;
            for (final Map.Entry<Object, V> entry : map.entrySet()) {
                this.toString(entry.getKey(), sb);
                sb.append(": ");
                this.toString(entry.getValue(), sb);
                ++n5;
                if (n5 < map.size()) {
                    sb.append(", ");
                }
            }
            sb.append("}");
            return;
        }
        if (obj instanceof CharSequence || obj instanceof GenericEnumSymbol) {
            sb.append("\"");
            this.writeEscapedString(obj.toString(), sb);
            sb.append("\"");
            return;
        }
        if (obj instanceof ByteBuffer) {
            sb.append("{\"bytes\": \"");
            final ByteBuffer byteBuffer = (ByteBuffer)obj;
            for (int i = byteBuffer.position(); i < byteBuffer.limit(); ++i) {
                sb.append((char)byteBuffer.get(i));
            }
            sb.append("\"}");
            return;
        }
        sb.append(obj);
    }
    
    public boolean validate(final Schema schema, final Object o) {
        switch (schema.getType()) {
            default: {
                return false;
            }
            case RECORD: {
                if (!this.isRecord(o)) {
                    return false;
                }
                for (final Schema.Field field : schema.getFields()) {
                    if (!this.validate(field.schema(), this.getField(o, field.name(), field.pos()))) {
                        return false;
                    }
                }
                return true;
            }
            case ENUM: {
                return schema.getEnumSymbols().contains(o.toString());
            }
            case ARRAY: {
                if (!(o instanceof Collection)) {
                    return false;
                }
                final Iterator<Object> iterator2 = ((Collection)o).iterator();
                while (iterator2.hasNext()) {
                    if (!this.validate(schema.getElementType(), iterator2.next())) {
                        return false;
                    }
                }
                return true;
            }
            case MAP: {
                if (!(o instanceof Map)) {
                    return false;
                }
                final Iterator<Map.Entry<K, Object>> iterator3 = ((Map)o).entrySet().iterator();
                while (iterator3.hasNext()) {
                    if (!this.validate(schema.getValueType(), iterator3.next().getValue())) {
                        return false;
                    }
                }
                return true;
            }
            case UNION: {
                final Iterator<Schema> iterator4 = schema.getTypes().iterator();
                while (iterator4.hasNext()) {
                    if (this.validate(iterator4.next(), o)) {
                        return true;
                    }
                }
                return false;
            }
            case FIXED: {
                return o instanceof GenericFixed && ((GenericFixed)o).bytes().length == schema.getFixedSize();
            }
            case STRING: {
                return this.isString(o);
            }
            case BYTES: {
                return this.isBytes(o);
            }
            case INT: {
                return o instanceof Integer;
            }
            case LONG: {
                return o instanceof Long;
            }
            case FLOAT: {
                return o instanceof Float;
            }
            case DOUBLE: {
                return o instanceof Double;
            }
            case BOOLEAN: {
                return o instanceof Boolean;
            }
            case NULL: {
                return o == null;
            }
        }
    }
    
    public static class Array<T> extends AbstractList<T> implements GenericArray<T>, Comparable<GenericArray<T>>
    {
        private static final Object[] EMPTY;
        private Object[] elements;
        private final Schema schema;
        private int size;
        
        static {
            EMPTY = new Object[0];
        }
        
        public Array(final int n, final Schema schema) {
            super();
            this.elements = Array.EMPTY;
            if (schema == null || !Schema.Type.ARRAY.equals(schema.getType())) {
                throw new AvroRuntimeException("Not an array schema: " + schema);
            }
            this.schema = schema;
            if (n != 0) {
                this.elements = new Object[n];
            }
        }
        
        public Array(final Schema schema, final Collection<T> c) {
            super();
            this.elements = Array.EMPTY;
            if (schema == null || !Schema.Type.ARRAY.equals(schema.getType())) {
                throw new AvroRuntimeException("Not an array schema: " + schema);
            }
            this.schema = schema;
            if (c != null) {
                this.elements = new Object[c.size()];
                this.addAll((Collection<? extends T>)c);
            }
        }
        
        @Override
        public void add(final int i, final T t) {
            if (i > this.size || i < 0) {
                throw new IndexOutOfBoundsException("Index " + i + " out of bounds.");
            }
            if (this.size == this.elements.length) {
                final Object[] elements = new Object[1 + 3 * this.size / 2];
                System.arraycopy(this.elements, 0, elements, 0, this.size);
                this.elements = elements;
            }
            System.arraycopy(this.elements, i, this.elements, i + 1, this.size - i);
            this.elements[i] = t;
            ++this.size;
        }
        
        @Override
        public boolean add(final T t) {
            if (this.size == this.elements.length) {
                final Object[] elements = new Object[1 + 3 * this.size / 2];
                System.arraycopy(this.elements, 0, elements, 0, this.size);
                this.elements = elements;
            }
            this.elements[this.size++] = t;
            return true;
        }
        
        @Override
        public void clear() {
            this.size = 0;
        }
        
        @Override
        public int compareTo(final GenericArray<T> genericArray) {
            return GenericData.get().compare(this, genericArray, this.getSchema());
        }
        
        @Override
        public T get(final int i) {
            if (i >= this.size) {
                throw new IndexOutOfBoundsException("Index " + i + " out of bounds.");
            }
            return (T)this.elements[i];
        }
        
        @Override
        public Schema getSchema() {
            return this.schema;
        }
        
        @Override
        public Iterator<T> iterator() {
            return new Iterator<T>() {
                private int position = 0;
                
                @Override
                public boolean hasNext() {
                    return this.position < Array.this.size;
                }
                
                @Override
                public T next() {
                    return (T)Array.this.elements[this.position++];
                }
                
                @Override
                public void remove() {
                    throw new UnsupportedOperationException();
                }
            };
        }
        
        @Override
        public T peek() {
            if (this.size < this.elements.length) {
                return (T)this.elements[this.size];
            }
            return null;
        }
        
        @Override
        public T remove(final int i) {
            if (i >= this.size) {
                throw new IndexOutOfBoundsException("Index " + i + " out of bounds.");
            }
            final Object o = this.elements[i];
            --this.size;
            System.arraycopy(this.elements, i + 1, this.elements, i, this.size - i);
            this.elements[this.size] = null;
            return (T)o;
        }
        
        @Override
        public void reverse() {
            for (int i = 0, n = this.elements.length - 1; i < n; ++i, --n) {
                final Object o = this.elements[i];
                this.elements[i] = this.elements[n];
                this.elements[n] = o;
            }
        }
        
        @Override
        public T set(final int i, final T t) {
            if (i >= this.size) {
                throw new IndexOutOfBoundsException("Index " + i + " out of bounds.");
            }
            final Object o = this.elements[i];
            this.elements[i] = t;
            return (T)o;
        }
        
        @Override
        public int size() {
            return this.size;
        }
        
        @Override
        public String toString() {
            final StringBuffer sb = new StringBuffer();
            sb.append("[");
            int n = 0;
            for (final Object next : this) {
                String string;
                if (next == null) {
                    string = "null";
                }
                else {
                    string = next.toString();
                }
                sb.append(string);
                if (++n < this.size()) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }
    
    public static class EnumSymbol implements GenericEnumSymbol
    {
        private Schema schema;
        private String symbol;
        
        public EnumSymbol(final Schema schema, final String symbol) {
            super();
            this.schema = schema;
            this.symbol = symbol;
        }
        
        @Override
        public boolean equals(final Object o) {
            return o == this || (o instanceof GenericEnumSymbol && this.symbol.equals(o.toString()));
        }
        
        @Override
        public Schema getSchema() {
            return this.schema;
        }
        
        @Override
        public int hashCode() {
            return this.symbol.hashCode();
        }
        
        @Override
        public String toString() {
            return this.symbol;
        }
    }
    
    public static class Fixed implements GenericFixed, Comparable<Fixed>
    {
        private byte[] bytes;
        private Schema schema;
        
        protected Fixed() {
            super();
        }
        
        public Fixed(final Schema schema) {
            super();
            this.setSchema(schema);
        }
        
        public Fixed(final Schema schema, final byte[] bytes) {
            super();
            this.schema = schema;
            this.bytes = bytes;
        }
        
        public void bytes(final byte[] bytes) {
            this.bytes = bytes;
        }
        
        @Override
        public byte[] bytes() {
            return this.bytes;
        }
        
        @Override
        public int compareTo(final Fixed fixed) {
            return BinaryData.compareBytes(this.bytes, 0, this.bytes.length, fixed.bytes, 0, fixed.bytes.length);
        }
        
        @Override
        public boolean equals(final Object o) {
            return o == this || (o instanceof GenericFixed && Arrays.equals(this.bytes, ((GenericFixed)o).bytes()));
        }
        
        @Override
        public Schema getSchema() {
            return this.schema;
        }
        
        @Override
        public int hashCode() {
            return Arrays.hashCode(this.bytes);
        }
        
        protected void setSchema(final Schema schema) {
            this.schema = schema;
            this.bytes = new byte[schema.getFixedSize()];
        }
        
        @Override
        public String toString() {
            return Arrays.toString(this.bytes);
        }
    }
    
    public static class Record implements GenericRecord, Comparable<Record>
    {
        private final Schema schema;
        private final Object[] values;
        
        public Record(final Schema schema) {
            super();
            if (schema == null || !Schema.Type.RECORD.equals(schema.getType())) {
                throw new AvroRuntimeException("Not a record schema: " + schema);
            }
            this.schema = schema;
            this.values = new Object[schema.getFields().size()];
        }
        
        public Record(final Record record, final boolean b) {
            super();
            this.schema = record.schema;
            this.values = new Object[this.schema.getFields().size()];
            if (b) {
                for (int i = 0; i < this.values.length; ++i) {
                    this.values[i] = GenericData.INSTANCE.deepCopy(((Schema.Field)this.schema.getFields().get(i)).schema(), record.values[i]);
                }
            }
            else {
                System.arraycopy(record.values, 0, this.values, 0, record.values.length);
            }
        }
        
        @Override
        public int compareTo(final Record record) {
            return GenericData.get().compare(this, record, this.schema);
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Record)) {
                return false;
            }
            final Record record = (Record)o;
            return this.schema.getFullName().equals(record.schema.getFullName()) && GenericData.get().compare(this, record, this.schema, true) == 0;
        }
        
        @Override
        public Object get(final int n) {
            return this.values[n];
        }
        
        @Override
        public Object get(final String s) {
            final Schema.Field field = this.schema.getField(s);
            if (field == null) {
                return null;
            }
            return this.values[field.pos()];
        }
        
        @Override
        public Schema getSchema() {
            return this.schema;
        }
        
        @Override
        public int hashCode() {
            return GenericData.get().hashCode(this, this.schema);
        }
        
        @Override
        public void put(final int n, final Object o) {
            this.values[n] = o;
        }
        
        @Override
        public void put(final String str, final Object o) {
            final Schema.Field field = this.schema.getField(str);
            if (field == null) {
                throw new AvroRuntimeException("Not a valid schema field: " + str);
            }
            this.values[field.pos()] = o;
        }
        
        @Override
        public String toString() {
            return GenericData.get().toString(this);
        }
    }
    
    public enum StringType
    {
        CharSequence, 
        String, 
        Utf8;
    }
}

package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.generic.*;
import java.util.concurrent.*;
import com.flurry.org.apache.avro.io.*;
import java.nio.*;
import java.lang.reflect.*;
import com.flurry.org.apache.avro.*;
import java.util.*;

public class SpecificData extends GenericData
{
    private static final Map<Class, Constructor> CTOR_CACHE;
    private static final SpecificData INSTANCE;
    private static final Class<?>[] NO_ARG;
    private static final Class NO_CLASS;
    private static final Schema NULL_SCHEMA;
    private static final Class<?>[] SCHEMA_ARG;
    private Map<String, Class> classCache;
    private final ClassLoader classLoader;
    private final WeakHashMap<Type, Schema> schemaCache;
    
    static {
        INSTANCE = new SpecificData();
        NO_ARG = new Class[0];
        SCHEMA_ARG = new Class[] { Schema.class };
        CTOR_CACHE = new ConcurrentHashMap<Class, Constructor>();
        NO_CLASS = new Object() {}.getClass();
        NULL_SCHEMA = Schema.create(Schema.Type.NULL);
    }
    
    protected SpecificData() {
        this(SpecificData.class.getClassLoader());
    }
    
    public SpecificData(final ClassLoader classLoader) {
        super();
        this.classCache = new ConcurrentHashMap<String, Class>();
        this.schemaCache = new WeakHashMap<Type, Schema>();
        this.classLoader = classLoader;
    }
    
    public static SpecificData get() {
        return SpecificData.INSTANCE;
    }
    
    public static String getClassName(final Schema schema) {
        final String namespace = schema.getNamespace();
        final String name = schema.getName();
        if (namespace == null || "".equals(namespace)) {
            return name;
        }
        String str;
        if (namespace.endsWith("$")) {
            str = "";
        }
        else {
            str = ".";
        }
        return namespace + str + name;
    }
    
    public static Object newInstance(final Class clazz, final Schema schema) {
        final boolean assignable = SchemaConstructable.class.isAssignableFrom(clazz);
        try {
            Constructor<?> declaredConstructor = SpecificData.CTOR_CACHE.get(clazz);
            if (declaredConstructor == null) {
                Class<?>[] parameterTypes;
                if (assignable) {
                    parameterTypes = SpecificData.SCHEMA_ARG;
                }
                else {
                    parameterTypes = SpecificData.NO_ARG;
                }
                declaredConstructor = clazz.getDeclaredConstructor(parameterTypes);
                declaredConstructor.setAccessible(true);
                SpecificData.CTOR_CACHE.put(clazz, declaredConstructor);
            }
            Object[] initargs;
            if (assignable) {
                initargs = new Object[] { schema };
            }
            else {
                initargs = null;
            }
            return declaredConstructor.newInstance(initargs);
        }
        catch (Exception cause) {
            throw new RuntimeException(cause);
        }
    }
    
    @Override
    protected int compare(final Object o, final Object o2, final Schema schema, final boolean b) {
        switch (schema.getType()) {
            case ENUM: {
                if (o instanceof Enum) {
                    return ((Enum)o).ordinal() - ((Enum)o2).ordinal();
                }
                break;
            }
        }
        return super.compare(o, o2, schema, b);
    }
    
    @Override
    public DatumReader createDatumReader(final Schema schema) {
        return new SpecificDatumReader(schema, schema, this);
    }
    
    @Override
    public Object createFixed(final Object o, final Schema schema) {
        final Class class1 = get().getClass(schema);
        if (class1 == null) {
            return super.createFixed(o, schema);
        }
        if (class1.isInstance(o)) {
            return o;
        }
        return newInstance(class1, schema);
    }
    
    protected Schema createSchema(final Type obj, final Map<String, Schema> map) {
        if (obj instanceof Class && CharSequence.class.isAssignableFrom((Class<?>)obj)) {
            return Schema.create(Schema.Type.STRING);
        }
        if (obj == ByteBuffer.class) {
            return Schema.create(Schema.Type.BYTES);
        }
        if (obj == Integer.class || obj == Integer.TYPE) {
            return Schema.create(Schema.Type.INT);
        }
        if (obj == Long.class || obj == Long.TYPE) {
            return Schema.create(Schema.Type.LONG);
        }
        if (obj == Float.class || obj == Float.TYPE) {
            return Schema.create(Schema.Type.FLOAT);
        }
        if (obj == Double.class || obj == Double.TYPE) {
            return Schema.create(Schema.Type.DOUBLE);
        }
        if (obj == Boolean.class || obj == Boolean.TYPE) {
            return Schema.create(Schema.Type.BOOLEAN);
        }
        if (obj == Void.class || obj == Void.TYPE) {
            return Schema.create(Schema.Type.NULL);
        }
        if (!(obj instanceof ParameterizedType)) {
            if (obj instanceof Class) {
                final Class obj2 = (Class)obj;
                final String name = obj2.getName();
                Schema parse = map.get(name);
                Label_0421: {
                    if (parse != null) {
                        break Label_0421;
                    }
                    try {
                        parse = (Schema)obj2.getDeclaredField("SCHEMA$").get(null);
                        if (!name.equals(getClassName(parse))) {
                            parse = Schema.parse(parse.toString().replace(parse.getNamespace(), obj2.getPackage().getName()));
                        }
                        map.put(name, parse);
                        return parse;
                    }
                    catch (NoSuchFieldException ex2) {
                        throw new AvroRuntimeException("Not a Specific class: " + obj2);
                    }
                    catch (IllegalAccessException ex) {
                        throw new AvroRuntimeException(ex);
                    }
                }
            }
            throw new AvroTypeException("Unknown type: " + obj);
        }
        final ParameterizedType parameterizedType = (ParameterizedType)obj;
        final Class clazz = (Class)parameterizedType.getRawType();
        final Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (Collection.class.isAssignableFrom(clazz)) {
            if (actualTypeArguments.length != 1) {
                throw new AvroTypeException("No array type specified.");
            }
            return Schema.createArray(this.createSchema(actualTypeArguments[0], map));
        }
        else {
            if (!Map.class.isAssignableFrom(clazz)) {
                return this.createSchema(clazz, map);
            }
            final Type obj3 = actualTypeArguments[0];
            final Type type = actualTypeArguments[1];
            if (!(obj instanceof Class) || !CharSequence.class.isAssignableFrom((Class<?>)obj)) {
                throw new AvroTypeException("Map key class not CharSequence: " + obj3);
            }
            return Schema.createMap(this.createSchema(type, map));
        }
    }
    
    public Class getClass(final Schema obj) {
        switch (obj.getType()) {
            default: {
                throw new AvroRuntimeException("Unknown type: " + obj);
            }
            case FIXED:
            case RECORD:
            case ENUM: {
                final String fullName = obj.getFullName();
                if (fullName == null) {
                    return null;
                }
                Class<?> clazz = this.classCache.get(fullName);
                while (true) {
                    if (clazz == null) {
                        while (true) {
                            try {
                                clazz = this.classLoader.loadClass(getClassName(obj));
                                this.classCache.put(fullName, clazz);
                                if (clazz == SpecificData.NO_CLASS) {
                                    return null;
                                }
                            }
                            catch (ClassNotFoundException ex) {
                                clazz = (Class<?>)SpecificData.NO_CLASS;
                                continue;
                            }
                            break;
                        }
                        return clazz;
                    }
                    continue;
                }
            }
            case ARRAY: {
                return List.class;
            }
            case MAP: {
                return Map.class;
            }
            case UNION: {
                final List<Schema> types = obj.getTypes();
                if (types.size() == 2 && types.contains(SpecificData.NULL_SCHEMA)) {
                    int n;
                    if (types.get(0).equals(SpecificData.NULL_SCHEMA)) {
                        n = 1;
                    }
                    else {
                        n = 0;
                    }
                    return this.getClass(types.get(n));
                }
                return Object.class;
            }
            case STRING: {
                if ("String".equals(obj.getProp("avro.java.string"))) {
                    return String.class;
                }
                return CharSequence.class;
            }
            case BYTES: {
                return ByteBuffer.class;
            }
            case INT: {
                return Integer.TYPE;
            }
            case LONG: {
                return Long.TYPE;
            }
            case FLOAT: {
                return Float.TYPE;
            }
            case DOUBLE: {
                return Double.TYPE;
            }
            case BOOLEAN: {
                return Boolean.TYPE;
            }
            case NULL: {
                return Void.TYPE;
            }
        }
    }
    
    @Override
    protected Schema getEnumSchema(final Object o) {
        if (o instanceof Enum) {
            return this.getSchema(o.getClass());
        }
        return super.getEnumSchema(o);
    }
    
    public Protocol getProtocol(final Class obj) {
        try {
            Protocol parse = (Protocol)obj.getDeclaredField("PROTOCOL").get(null);
            if (!parse.getNamespace().equals(obj.getPackage().getName())) {
                parse = Protocol.parse(parse.toString().replace(parse.getNamespace(), obj.getPackage().getName()));
            }
            return parse;
        }
        catch (NoSuchFieldException ex2) {
            throw new AvroRuntimeException("Not a Specific protocol: " + obj);
        }
        catch (IllegalAccessException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public Schema getSchema(final Type type) {
        Schema schema = this.schemaCache.get(type);
        if (schema == null) {
            schema = this.createSchema(type, new LinkedHashMap<String, Schema>());
            this.schemaCache.put(type, schema);
        }
        return schema;
    }
    
    @Override
    protected boolean isEnum(final Object o) {
        return o instanceof Enum || super.isEnum(o);
    }
    
    @Override
    public Object newRecord(final Object o, final Schema schema) {
        final Class class1 = get().getClass(schema);
        if (class1 == null) {
            return super.newRecord(o, schema);
        }
        if (class1.isInstance(o)) {
            return o;
        }
        return newInstance(class1, schema);
    }
    
    public interface SchemaConstructable
    {
    }
}

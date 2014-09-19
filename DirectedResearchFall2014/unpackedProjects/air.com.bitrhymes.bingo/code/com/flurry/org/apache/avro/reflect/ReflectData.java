package com.flurry.org.apache.avro.reflect;

import java.util.concurrent.*;
import com.thoughtworks.paranamer.*;
import com.flurry.org.codehaus.jackson.*;
import java.lang.annotation.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.io.*;
import java.lang.reflect.*;
import java.nio.*;
import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.codehaus.jackson.node.*;
import java.util.*;
import com.flurry.org.apache.avro.generic.*;

public class ReflectData extends SpecificData
{
    private static final Class BYTES_CLASS;
    static final String CLASS_PROP = "java-class";
    static final String ELEMENT_PROP = "java-element-class";
    private static final Map<Class, Map<String, Field>> FIELD_CACHE;
    private static final ReflectData INSTANCE;
    private static final Schema THROWABLE_MESSAGE;
    private final Paranamer paranamer;
    
    static {
        INSTANCE = new ReflectData();
        FIELD_CACHE = new ConcurrentHashMap<Class, Map<String, Field>>();
        BYTES_CLASS = new byte[0].getClass();
        THROWABLE_MESSAGE = makeNullable(Schema.create(Schema.Type.STRING));
    }
    
    protected ReflectData() {
        super();
        this.paranamer = (Paranamer)new CachingParanamer();
    }
    
    private static Field findField(final Class obj, final String s) {
        Class superclass = obj;
        while (true) {
            try {
                final Field declaredField = superclass.getDeclaredField(s);
                declaredField.setAccessible(true);
                return declaredField;
            }
            catch (NoSuchFieldException ex) {
                superclass = superclass.getSuperclass();
                if (superclass == null) {
                    throw new AvroRuntimeException("No field named " + s + " in: " + obj);
                }
                continue;
            }
            break;
        }
    }
    
    public static ReflectData get() {
        return ReflectData.INSTANCE;
    }
    
    private Schema getAnnotatedUnion(final Union union, final Map<String, Schema> map) {
        final ArrayList<Schema> list = new ArrayList<Schema>();
        final Class[] value = union.value();
        for (int length = value.length, i = 0; i < length; ++i) {
            list.add(this.createSchema(value[i], map));
        }
        return Schema.createUnion(list);
    }
    
    static Class getClassProp(final Schema schema, final String s) {
        final String prop = schema.getProp(s);
        if (prop == null) {
            return null;
        }
        try {
            return Class.forName(prop);
        }
        catch (ClassNotFoundException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    private static Field getField(final Class clazz, final String s) {
        Map<String, Field> map = ReflectData.FIELD_CACHE.get(clazz);
        if (map == null) {
            map = new ConcurrentHashMap<String, Field>();
            ReflectData.FIELD_CACHE.put(clazz, map);
        }
        Field field = map.get(s);
        if (field == null) {
            field = findField(clazz, s);
            map.put(s, field);
        }
        return field;
    }
    
    private Collection<Field> getFields(final Class clazz) {
        final LinkedHashMap<String, Field> linkedHashMap = new LinkedHashMap<String, Field>();
        Class superclass = clazz;
        while (superclass.getPackage() == null || !superclass.getPackage().getName().startsWith("java.")) {
            for (final Field obj : superclass.getDeclaredFields()) {
                if ((0x88 & obj.getModifiers()) == 0x0 && linkedHashMap.put(obj.getName(), obj) != null) {
                    throw new AvroTypeException(superclass + " contains two fields named: " + obj);
                }
            }
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                break;
            }
        }
        return linkedHashMap.values();
    }
    
    private Protocol.Message getMessage(final Method method, final Protocol protocol, final Map<String, Schema> map) {
        final ArrayList<Schema.Field> list = new ArrayList<Schema.Field>();
        final String[] lookupParameterNames = this.paranamer.lookupParameterNames((AccessibleObject)method);
        final Type[] genericParameterTypes = method.getGenericParameterTypes();
        final Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        for (int i = 0; i < genericParameterTypes.length; ++i) {
            Schema schema = this.getSchema(genericParameterTypes[i], map);
            for (int j = 0; j < parameterAnnotations[i].length; ++j) {
                if (parameterAnnotations[i][j] instanceof Union) {
                    schema = this.getAnnotatedUnion((Union)parameterAnnotations[i][j], map);
                }
                else if (parameterAnnotations[i][j] instanceof Nullable) {
                    schema = makeNullable(schema);
                }
            }
            String string;
            if (lookupParameterNames.length == genericParameterTypes.length) {
                string = lookupParameterNames[i];
            }
            else {
                string = schema.getName() + i;
            }
            list.add(new Schema.Field(string, schema, null, null));
        }
        final Schema record = Schema.createRecord(list);
        final Union union = method.getAnnotation(Union.class);
        Schema schema2;
        if (union == null) {
            schema2 = this.getSchema(method.getGenericReturnType(), map);
        }
        else {
            schema2 = this.getAnnotatedUnion(union, map);
        }
        if (method.isAnnotationPresent(Nullable.class)) {
            schema2 = makeNullable(schema2);
        }
        final ArrayList<Schema> list2 = new ArrayList<Schema>();
        list2.add(Protocol.SYSTEM_ERROR);
        for (final Type type : method.getGenericExceptionTypes()) {
            if (type != AvroRemoteException.class) {
                list2.add(this.getSchema(type, map));
            }
        }
        return protocol.createMessage(method.getName(), null, record, schema2, Schema.createUnion(list2));
    }
    
    private Schema getSchema(final Type obj, final Map<String, Schema> map) {
        try {
            return this.createSchema(obj, map);
        }
        catch (AvroTypeException ex) {
            throw new AvroTypeException("Error getting schema for " + obj + ": " + ex.getMessage(), ex);
        }
    }
    
    public static Schema makeNullable(final Schema schema) {
        return Schema.createUnion(Arrays.asList(Schema.create(Schema.Type.NULL), schema));
    }
    
    private void setElement(final Schema schema, final Type type) {
        if (type instanceof Class) {
            final Class clazz = (Class)type;
            if (clazz.getAnnotation(Union.class) != null) {
                schema.addProp("java-element-class", clazz.getName());
            }
        }
    }
    
    @Override
    protected int compare(final Object o, final Object o2, final Schema schema, final boolean b) {
        switch (schema.getType()) {
            case ARRAY: {
                if (o.getClass().isArray()) {
                    final Schema elementType = schema.getElementType();
                    final int length = java.lang.reflect.Array.getLength(o);
                    final int length2 = java.lang.reflect.Array.getLength(o2);
                    for (int min = Math.min(length, length2), i = 0; i < min; ++i) {
                        final int compare = this.compare(java.lang.reflect.Array.get(o, i), java.lang.reflect.Array.get(o2, i), elementType, b);
                        if (compare != 0) {
                            return compare;
                        }
                    }
                    return length - length2;
                }
                break;
            }
            case BYTES: {
                if (o.getClass().isArray()) {
                    final byte[] array = (byte[])o;
                    final byte[] array2 = (byte[])o2;
                    return BinaryData.compareBytes(array, 0, array.length, array2, 0, array2.length);
                }
                break;
            }
        }
        return super.compare(o, o2, schema, b);
    }
    
    @Override
    public DatumReader createDatumReader(final Schema schema) {
        return new ReflectDatumReader(schema, schema, this);
    }
    
    protected Schema createFieldSchema(final Field field, final Map<String, Schema> map) {
        Schema schema = this.createSchema(field.getGenericType(), map);
        if (field.isAnnotationPresent(Nullable.class)) {
            schema = makeNullable(schema);
        }
        return schema;
    }
    
    @Override
    protected Schema createSchema(final Type type, final Map<String, Schema> map) {
        if (!(type instanceof GenericArrayType)) {
            if (type instanceof ParameterizedType) {
                final ParameterizedType parameterizedType = (ParameterizedType)type;
                final Class clazz = (Class)parameterizedType.getRawType();
                final Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (Map.class.isAssignableFrom(clazz)) {
                    final Type obj = actualTypeArguments[0];
                    final Type type2 = actualTypeArguments[1];
                    if (obj != String.class) {
                        throw new AvroTypeException("Map key class not String: " + obj);
                    }
                    return Schema.createMap(this.createSchema(type2, map));
                }
                else if (Collection.class.isAssignableFrom(clazz)) {
                    if (actualTypeArguments.length != 1) {
                        throw new AvroTypeException("No array type specified.");
                    }
                    final Schema array = Schema.createArray(this.createSchema(actualTypeArguments[0], map));
                    array.addProp("java-class", clazz.getName());
                    return array;
                }
            }
            else {
                if (type == Byte.class || type == Byte.TYPE) {
                    final Schema create = Schema.create(Schema.Type.INT);
                    create.addProp("java-class", Byte.class.getName());
                    return create;
                }
                if (type == Short.class || type == Short.TYPE) {
                    final Schema create2 = Schema.create(Schema.Type.INT);
                    create2.addProp("java-class", Short.class.getName());
                    return create2;
                }
                if (type instanceof Class) {
                    final Class clazz2 = (Class)type;
                    if (clazz2.isPrimitive() || Number.class.isAssignableFrom(clazz2) || clazz2 == Void.class || clazz2 == Boolean.class) {
                        return super.createSchema(type, map);
                    }
                    if (clazz2.isArray()) {
                        final Class<?> componentType = clazz2.getComponentType();
                        if (componentType == Byte.TYPE) {
                            return Schema.create(Schema.Type.BYTES);
                        }
                        final Schema array2 = Schema.createArray(this.createSchema(componentType, map));
                        this.setElement(array2, componentType);
                        return array2;
                    }
                    else {
                        if (CharSequence.class.isAssignableFrom(clazz2)) {
                            return Schema.create(Schema.Type.STRING);
                        }
                        if (ByteBuffer.class.isAssignableFrom(clazz2)) {
                            return Schema.create(Schema.Type.BYTES);
                        }
                        if (Collection.class.isAssignableFrom(clazz2)) {
                            throw new AvroRuntimeException("Can't find element type of Collection");
                        }
                        final String name = clazz2.getName();
                        Schema schema = map.get(name);
                        if (schema == null) {
                            final String simpleName = clazz2.getSimpleName();
                            String s;
                            if (clazz2.getPackage() == null) {
                                s = "";
                            }
                            else {
                                s = clazz2.getPackage().getName();
                            }
                            if (clazz2.getEnclosingClass() != null) {
                                s = clazz2.getEnclosingClass().getName() + "$";
                            }
                            final Union union = clazz2.getAnnotation(Union.class);
                            if (union != null) {
                                return this.getAnnotatedUnion(union, map);
                            }
                            if (clazz2.isAnnotationPresent(Stringable.class)) {
                                final Schema create3 = Schema.create(Schema.Type.STRING);
                                create3.addProp("java-class", clazz2.getName());
                                return create3;
                            }
                            if (clazz2.isEnum()) {
                                final ArrayList<String> list = new ArrayList<String>();
                                final Enum[] array3 = (Enum[])clazz2.getEnumConstants();
                                for (int i = 0; i < array3.length; ++i) {
                                    list.add(array3[i].name());
                                }
                                schema = Schema.createEnum(simpleName, null, s, list);
                            }
                            else if (GenericFixed.class.isAssignableFrom(clazz2)) {
                                schema = Schema.createFixed(simpleName, null, s, clazz2.getAnnotation(FixedSize.class).value());
                            }
                            else {
                                if (IndexedRecord.class.isAssignableFrom(clazz2)) {
                                    return super.createSchema(type, map);
                                }
                                final ArrayList<Schema.Field> fields = new ArrayList<Schema.Field>();
                                final boolean assignable = Throwable.class.isAssignableFrom(clazz2);
                                schema = Schema.createRecord(simpleName, null, s, assignable);
                                map.put(clazz2.getName(), schema);
                                for (final Field field : this.getFields(clazz2)) {
                                    if ((0x88 & field.getModifiers()) == 0x0) {
                                        final Schema fieldSchema = this.createFieldSchema(field, map);
                                        final Schema.Type type3 = fieldSchema.getType();
                                        final Schema.Type union2 = Schema.Type.UNION;
                                        JsonNode instance = null;
                                        if (type3 == union2) {
                                            final Schema.Type type4 = fieldSchema.getTypes().get(0).getType();
                                            final Schema.Type null = Schema.Type.NULL;
                                            instance = null;
                                            if (type4 == null) {
                                                instance = NullNode.getInstance();
                                            }
                                        }
                                        fields.add(new Schema.Field(field.getName(), fieldSchema, null, instance));
                                    }
                                }
                                if (assignable) {
                                    fields.add(new Schema.Field("detailMessage", ReflectData.THROWABLE_MESSAGE, null, null));
                                }
                                schema.setFields(fields);
                            }
                            map.put(name, schema);
                        }
                        return schema;
                    }
                }
            }
            return super.createSchema(type, map);
        }
        final Type genericComponentType = ((GenericArrayType)type).getGenericComponentType();
        if (genericComponentType == Byte.TYPE) {
            return Schema.create(Schema.Type.BYTES);
        }
        final Schema array4 = Schema.createArray(this.createSchema(genericComponentType, map));
        this.setElement(array4, genericComponentType);
        return array4;
    }
    
    @Override
    public Class getClass(final Schema schema) {
        switch (schema.getType()) {
            case ARRAY: {
                final Class classProp = getClassProp(schema, "java-class");
                if (classProp != null) {
                    return classProp;
                }
                return java.lang.reflect.Array.newInstance(this.getClass(schema.getElementType()), 0).getClass();
            }
            case STRING: {
                return String.class;
            }
            case BYTES: {
                return ReflectData.BYTES_CLASS;
            }
            case INT: {
                final String prop = schema.getProp("java-class");
                if (Byte.class.getName().equals(prop)) {
                    return Byte.TYPE;
                }
                if (Short.class.getName().equals(prop)) {
                    return Short.TYPE;
                }
                break;
            }
        }
        return super.getClass(schema);
    }
    
    @Override
    public Object getField(final Object obj, final String s, final int n) {
        if (obj instanceof IndexedRecord) {
            return super.getField(obj, s, n);
        }
        try {
            return getField(obj.getClass(), s).get(obj);
        }
        catch (IllegalAccessException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    @Override
    public Protocol getProtocol(final Class clazz) {
        final String simpleName = clazz.getSimpleName();
        String name;
        if (clazz.getPackage() == null) {
            name = "";
        }
        else {
            name = clazz.getPackage().getName();
        }
        final Protocol protocol = new Protocol(simpleName, name);
        final LinkedHashMap<String, Schema> linkedHashMap = new LinkedHashMap<String, Schema>();
        final Map<String, Protocol.Message> messages = protocol.getMessages();
        for (final Method method : clazz.getMethods()) {
            if ((0x8 & method.getModifiers()) == 0x0) {
                final String name2 = method.getName();
                if (messages.containsKey(name2)) {
                    throw new AvroTypeException("Two methods with same name: " + name2);
                }
                messages.put(name2, this.getMessage(method, protocol, linkedHashMap));
            }
        }
        final ArrayList<Schema> list = new ArrayList<Schema>();
        list.addAll(linkedHashMap.values());
        Collections.reverse(list);
        protocol.setTypes(list);
        return protocol;
    }
    
    @Override
    protected Schema getRecordSchema(final Object o) {
        if (o instanceof GenericContainer) {
            return super.getRecordSchema(o);
        }
        return this.getSchema(o.getClass());
    }
    
    @Override
    protected boolean isArray(final Object o) {
        return o != null && (o instanceof Collection || o.getClass().isArray());
    }
    
    @Override
    protected boolean isBytes(final Object o) {
        if (o == null) {
            return false;
        }
        if (super.isBytes(o)) {
            return true;
        }
        final Class<?> class1 = o.getClass();
        return class1.isArray() && class1.getComponentType() == Byte.TYPE;
    }
    
    @Override
    protected boolean isRecord(final Object o) {
        return o != null && (super.isRecord(o) || (!(o instanceof Collection) && this.getSchema(o.getClass()).getType() == Schema.Type.RECORD));
    }
    
    @Override
    public void setField(final Object obj, final String s, final int n, final Object value) {
        if (obj instanceof IndexedRecord) {
            super.setField(obj, s, n, value);
            return;
        }
        try {
            getField(obj.getClass(), s).set(obj, value);
        }
        catch (IllegalAccessException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    @Override
    public boolean validate(final Schema schema, final Object o) {
        switch (schema.getType()) {
            default: {
                return super.validate(schema, o);
            }
            case ARRAY: {
                if (!o.getClass().isArray()) {
                    return super.validate(schema, o);
                }
                for (int length = java.lang.reflect.Array.getLength(o), i = 0; i < length; ++i) {
                    if (!this.validate(schema.getElementType(), java.lang.reflect.Array.get(o, i))) {
                        return false;
                    }
                }
                return true;
            }
        }
    }
    
    public static class AllowNull extends ReflectData
    {
        private static final AllowNull INSTANCE;
        
        static {
            INSTANCE = new AllowNull();
        }
        
        public static AllowNull get() {
            return AllowNull.INSTANCE;
        }
        
        @Override
        protected Schema createFieldSchema(final Field field, final Map<String, Schema> map) {
            return ReflectData.makeNullable(super.createFieldSchema(field, map));
        }
    }
}

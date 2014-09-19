package com.flurry.org.apache.avro;

import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import java.util.*;

public abstract class Schema
{
    static final JsonFactory FACTORY;
    private static final Set<String> FIELD_RESERVED;
    static final ObjectMapper MAPPER;
    private static final int NO_HASHCODE = Integer.MIN_VALUE;
    static final Map<String, Type> PRIMITIVES;
    private static final Set<String> SCHEMA_RESERVED;
    private static final ThreadLocal<Set> SEEN_EQUALS;
    private static final ThreadLocal<Map> SEEN_HASHCODE;
    private static ThreadLocal<Boolean> validateNames;
    int hashCode;
    Props props;
    private final Type type;
    
    static {
        FACTORY = new JsonFactory();
        MAPPER = new ObjectMapper(Schema.FACTORY);
        Schema.FACTORY.enable(JsonParser.Feature.ALLOW_COMMENTS);
        Schema.FACTORY.setCodec(Schema.MAPPER);
        Collections.addAll(SCHEMA_RESERVED = new HashSet<String>(), "doc", "fields", "items", "name", "namespace", "size", "symbols", "values", "type");
        Collections.addAll(FIELD_RESERVED = new HashSet<String>(), "default", "doc", "name", "order", "type");
        SEEN_EQUALS = new ThreadLocal<Set>() {
            @Override
            protected Set initialValue() {
                return new HashSet();
            }
        };
        SEEN_HASHCODE = new ThreadLocal<Map>() {
            @Override
            protected Map initialValue() {
                return new IdentityHashMap();
            }
        };
        (PRIMITIVES = new HashMap<String, Type>()).put("string", Type.STRING);
        Schema.PRIMITIVES.put("bytes", Type.BYTES);
        Schema.PRIMITIVES.put("int", Type.INT);
        Schema.PRIMITIVES.put("long", Type.LONG);
        Schema.PRIMITIVES.put("float", Type.FLOAT);
        Schema.PRIMITIVES.put("double", Type.DOUBLE);
        Schema.PRIMITIVES.put("boolean", Type.BOOLEAN);
        Schema.PRIMITIVES.put("null", Type.NULL);
        Schema.validateNames = new ThreadLocal<Boolean>() {
            @Override
            protected Boolean initialValue() {
                return true;
            }
        };
    }
    
    Schema(final Type type) {
        super();
        this.props = new Props(Schema.SCHEMA_RESERVED);
        this.hashCode = Integer.MIN_VALUE;
        this.type = type;
    }
    
    public static Schema applyAliases(final Schema schema, final Schema schema2) {
        if (schema == schema2) {
            return schema;
        }
        final IdentityHashMap<Schema, Schema> identityHashMap = new IdentityHashMap<Schema, Schema>(1);
        final HashMap<Name, Name> hashMap = new HashMap<Name, Name>(1);
        final HashMap<Name, Map<String, String>> hashMap2 = new HashMap<Name, Map<String, String>>(1);
        getAliases(schema2, identityHashMap, hashMap, hashMap2);
        if (hashMap.size() == 0 && hashMap2.size() == 0) {
            return schema;
        }
        identityHashMap.clear();
        return applyAliases(schema, identityHashMap, hashMap, hashMap2);
    }
    
    private static Schema applyAliases(final Schema schema, final Map<Schema, Schema> map, final Map<Name, Name> map2, final Map<Name, Map<String, String>> map3) {
        Object name;
        if (schema instanceof NamedSchema) {
            name = ((NamedSchema)schema).name;
        }
        else {
            name = null;
        }
        Schema schema2 = null;
        Label_0071: {
            switch (schema.getType()) {
                case RECORD: {
                    if (map.containsKey(schema)) {
                        return map.get(schema);
                    }
                    Object o;
                    if (map2.containsKey(name)) {
                        o = map2.get(name);
                    }
                    else {
                        o = name;
                    }
                    final Schema record = createRecord(((Name)o).full, schema.getDoc(), null, schema.isError());
                    map.put(schema, record);
                    final ArrayList<Field> fields = new ArrayList<Field>();
                    for (final Field field : schema.getFields()) {
                        final Field field2 = new Field(getFieldAlias((Name)o, field.name, map3), applyAliases(field.schema, map, map2, map3), field.doc, field.defaultValue, field.order);
                        field2.props.putAll(field.props);
                        fields.add(field2);
                    }
                    record.setFields(fields);
                    schema2 = record;
                    break Label_0071;
                }
                case ENUM: {
                    if (map2.containsKey(name)) {
                        schema2 = createEnum(map2.get(name).full, schema.getDoc(), null, schema.getEnumSymbols());
                        break Label_0071;
                    }
                    break;
                }
                case ARRAY: {
                    final Schema applyAliases = applyAliases(schema.getElementType(), map, map2, map3);
                    if (applyAliases != schema.getElementType()) {
                        schema2 = createArray(applyAliases);
                        break Label_0071;
                    }
                    break;
                }
                case MAP: {
                    final Schema applyAliases2 = applyAliases(schema.getValueType(), map, map2, map3);
                    if (applyAliases2 != schema.getValueType()) {
                        schema2 = createMap(applyAliases2);
                        break Label_0071;
                    }
                    break;
                }
                case UNION: {
                    final ArrayList<Schema> list = new ArrayList<Schema>();
                    final Iterator<Schema> iterator2 = schema.getTypes().iterator();
                    while (iterator2.hasNext()) {
                        list.add(applyAliases(iterator2.next(), map, map2, map3));
                    }
                    schema2 = createUnion(list);
                    break Label_0071;
                }
                case FIXED: {
                    if (map2.containsKey(name)) {
                        schema2 = createFixed(map2.get(name).full, schema.getDoc(), null, schema.getFixedSize());
                        break Label_0071;
                    }
                    break;
                }
            }
            schema2 = schema;
        }
        if (schema2 != schema) {
            schema2.props.putAll(schema.props);
        }
        return schema2;
    }
    
    public static Schema create(final Type obj) {
        switch (obj) {
            default: {
                throw new AvroRuntimeException("Can't create a: " + obj);
            }
            case STRING: {
                return new StringSchema();
            }
            case BYTES: {
                return new BytesSchema();
            }
            case INT: {
                return new IntSchema();
            }
            case LONG: {
                return new LongSchema();
            }
            case FLOAT: {
                return new FloatSchema();
            }
            case DOUBLE: {
                return new DoubleSchema();
            }
            case BOOLEAN: {
                return new BooleanSchema();
            }
            case NULL: {
                return new NullSchema();
            }
        }
    }
    
    public static Schema createArray(final Schema schema) {
        return new ArraySchema(schema);
    }
    
    public static Schema createEnum(final String s, final String s2, final String s3, final List<String> list) {
        return new EnumSchema(new Name(s, s3), s2, (LockableArrayList<String>)new LockableArrayList((List<Object>)list));
    }
    
    public static Schema createFixed(final String s, final String s2, final String s3, final int n) {
        return new FixedSchema(new Name(s, s3), s2, n);
    }
    
    public static Schema createMap(final Schema schema) {
        return new MapSchema(schema);
    }
    
    public static Schema createRecord(final String s, final String s2, final String s3, final boolean b) {
        return new RecordSchema(new Name(s, s3), s2, b);
    }
    
    public static Schema createRecord(final List<Field> fields) {
        final Schema record = createRecord(null, null, null, false);
        record.setFields(fields);
        return record;
    }
    
    public static Schema createUnion(final List<Schema> list) {
        return new UnionSchema((LockableArrayList<Schema>)new LockableArrayList((List<Object>)list));
    }
    
    private static void getAliases(final Schema schema, final Map<Schema, Schema> map, final Map<Name, Name> map2, final Map<Name, Map<String, String>> map3) {
        if (schema instanceof NamedSchema) {
            final NamedSchema namedSchema = (NamedSchema)schema;
            if (namedSchema.aliases != null) {
                final Iterator<Name> iterator = namedSchema.aliases.iterator();
                while (iterator.hasNext()) {
                    map2.put(iterator.next(), namedSchema.name);
                }
            }
        }
        switch (schema.getType()) {
            case RECORD: {
                if (map.containsKey(schema)) {
                    break;
                }
                map.put(schema, schema);
                final RecordSchema recordSchema = (RecordSchema)schema;
                for (final Field field : schema.getFields()) {
                    if (field.aliases != null) {
                        for (final String s : field.aliases) {
                            Map<String, String> map4 = map3.get(recordSchema.name);
                            if (map4 == null) {
                                final Name name = recordSchema.name;
                                map4 = new HashMap<String, String>();
                                map3.put(name, map4);
                            }
                            map4.put(s, field.name);
                        }
                    }
                    getAliases(field.schema, map, map2, map3);
                }
                if (recordSchema.aliases != null && map3.containsKey(recordSchema.name)) {
                    final Iterator<Name> iterator4 = recordSchema.aliases.iterator();
                    while (iterator4.hasNext()) {
                        map3.put(iterator4.next(), map3.get(recordSchema.name));
                    }
                    break;
                }
                break;
            }
            case ARRAY: {
                getAliases(schema.getElementType(), map, map2, map3);
            }
            case MAP: {
                getAliases(schema.getValueType(), map, map2, map3);
            }
            case UNION: {
                final Iterator<Schema> iterator5 = schema.getTypes().iterator();
                while (iterator5.hasNext()) {
                    getAliases(iterator5.next(), map, map2, map3);
                }
                break;
            }
        }
    }
    
    private static String getFieldAlias(final Name name, final String s, final Map<Name, Map<String, String>> map) {
        final Map<String, String> map2 = map.get(name);
        if (map2 == null) {
            return s;
        }
        final String s2 = map2.get(s);
        if (s2 == null) {
            return s;
        }
        return s2;
    }
    
    private static String getOptionalText(final JsonNode jsonNode, final String s) {
        final JsonNode value = jsonNode.get(s);
        if (value != null) {
            return value.getTextValue();
        }
        return null;
    }
    
    private static String getRequiredText(final JsonNode obj, final String s, final String str) {
        final String optionalText = getOptionalText(obj, s);
        if (optionalText == null) {
            throw new SchemaParseException(str + ": " + obj);
        }
        return optionalText;
    }
    
    static Schema parse(final JsonNode obj, final Names names) {
        if (obj.isTextual()) {
            final Schema value = names.get(obj.getTextValue());
            if (value == null) {
                throw new SchemaParseException("Undefined name: " + obj);
            }
            return value;
        }
        else {
            if (obj.isObject()) {
                final String requiredText = getRequiredText(obj, "type", "No type");
                String optionalText = null;
                Name name = null;
                String space = null;
                Label_0205: {
                    if (!requiredText.equals("record") && !requiredText.equals("error") && !requiredText.equals("enum")) {
                        final boolean equals = requiredText.equals("fixed");
                        optionalText = null;
                        name = null;
                        space = null;
                        if (!equals) {
                            break Label_0205;
                        }
                    }
                    final String optionalText2 = getOptionalText(obj, "namespace");
                    optionalText = getOptionalText(obj, "doc");
                    String space2;
                    if (optionalText2 == null) {
                        space2 = names.space();
                    }
                    else {
                        space2 = optionalText2;
                    }
                    name = new Name(getRequiredText(obj, "name", "No name in schema"), space2);
                    final String access$600 = name.space;
                    space = null;
                    if (access$600 != null) {
                        space = names.space();
                        names.space(name.space);
                    }
                }
                final String s = space;
                final Name name2 = name;
                Schema create;
                if (Schema.PRIMITIVES.containsKey(requiredText)) {
                    create = create(Schema.PRIMITIVES.get(requiredText));
                }
                else if (requiredText.equals("record") || requiredText.equals("error")) {
                    final ArrayList<Field> fields = new ArrayList<Field>();
                    final RecordSchema recordSchema = new RecordSchema(name2, optionalText, requiredText.equals("error"));
                    if (name2 != null) {
                        names.add(recordSchema);
                    }
                    final JsonNode value2 = obj.get("fields");
                    if (value2 == null || !value2.isArray()) {
                        throw new SchemaParseException("Record has no fields: " + obj);
                    }
                    for (final JsonNode obj2 : value2) {
                        final String requiredText2 = getRequiredText(obj2, "name", "No field name");
                        final String optionalText3 = getOptionalText(obj2, "doc");
                        final JsonNode value3 = obj2.get("type");
                        if (value3 == null) {
                            throw new SchemaParseException("No field type: " + obj2);
                        }
                        if (value3.isTextual() && names.get(value3.getTextValue()) == null) {
                            throw new SchemaParseException(value3 + " is not a defined name." + " The type of the \"" + requiredText2 + "\" field must be" + " a defined name or a {\"type\": ...} expression.");
                        }
                        final Schema parse = parse(value3, names);
                        Order order = Order.ASCENDING;
                        final JsonNode value4 = obj2.get("order");
                        if (value4 != null) {
                            order = Order.valueOf(value4.getTextValue().toUpperCase());
                        }
                        JsonNode value5 = obj2.get("default");
                        if (value5 != null && (Type.FLOAT.equals(parse.getType()) || Type.DOUBLE.equals(parse.getType())) && value5.isTextual()) {
                            value5 = new DoubleNode(Double.valueOf(value5.getTextValue()));
                        }
                        final Field field = new Field(requiredText2, parse, optionalText3, value5, order);
                        final Iterator<String> fieldNames = obj2.getFieldNames();
                        while (fieldNames.hasNext()) {
                            final String s2 = fieldNames.next();
                            final String textValue = obj2.get(s2).getTextValue();
                            if (!Schema.FIELD_RESERVED.contains(s2) && textValue != null) {
                                field.addProp(s2, textValue);
                            }
                        }
                        field.aliases = parseAliases(obj2);
                        fields.add(field);
                    }
                    recordSchema.setFields(fields);
                    create = recordSchema;
                }
                else if (requiredText.equals("enum")) {
                    final JsonNode value6 = obj.get("symbols");
                    if (value6 == null || !value6.isArray()) {
                        throw new SchemaParseException("Enum has no symbols: " + obj);
                    }
                    final LockableArrayList list = new LockableArrayList();
                    final Iterator<JsonNode> iterator2 = value6.iterator();
                    while (iterator2.hasNext()) {
                        list.add(iterator2.next().getTextValue());
                    }
                    final EnumSchema enumSchema = new EnumSchema(name2, optionalText, (LockableArrayList<String>)list);
                    if (name2 != null) {
                        names.add(enumSchema);
                    }
                    create = enumSchema;
                }
                else if (requiredText.equals("array")) {
                    final JsonNode value7 = obj.get("items");
                    if (value7 == null) {
                        throw new SchemaParseException("Array has no items type: " + obj);
                    }
                    create = new ArraySchema(parse(value7, names));
                }
                else if (requiredText.equals("map")) {
                    final JsonNode value8 = obj.get("values");
                    if (value8 == null) {
                        throw new SchemaParseException("Map has no values type: " + obj);
                    }
                    create = new MapSchema(parse(value8, names));
                }
                else {
                    if (!requiredText.equals("fixed")) {
                        throw new SchemaParseException("Type not supported: " + requiredText);
                    }
                    final JsonNode value9 = obj.get("size");
                    if (value9 == null || !value9.isInt()) {
                        throw new SchemaParseException("Invalid or no size: " + obj);
                    }
                    final FixedSchema fixedSchema = new FixedSchema(name2, optionalText, value9.getIntValue());
                    if (name2 != null) {
                        names.add(fixedSchema);
                    }
                    create = fixedSchema;
                }
                final Iterator<String> fieldNames2 = obj.getFieldNames();
                while (fieldNames2.hasNext()) {
                    final String s3 = fieldNames2.next();
                    final String textValue2 = obj.get(s3).getTextValue();
                    if (!Schema.SCHEMA_RESERVED.contains(s3) && textValue2 != null) {
                        create.addProp(s3, textValue2);
                    }
                }
                if (s != null) {
                    names.space(s);
                }
                if (create instanceof NamedSchema) {
                    final Set<String> aliases = parseAliases(obj);
                    if (aliases != null) {
                        final Iterator<String> iterator3 = aliases.iterator();
                        while (iterator3.hasNext()) {
                            create.addAlias(iterator3.next());
                        }
                    }
                }
                return create;
            }
            if (obj.isArray()) {
                final LockableArrayList<Schema> list2 = new LockableArrayList<Schema>(obj.size());
                final Iterator<JsonNode> iterator4 = obj.iterator();
                while (iterator4.hasNext()) {
                    list2.add(parse(iterator4.next(), names));
                }
                return new UnionSchema(list2);
            }
            throw new SchemaParseException("Schema not yet supported: " + obj);
        }
    }
    
    public static Schema parse(final File file) throws IOException {
        return new Parser().parse(file);
    }
    
    public static Schema parse(final InputStream inputStream) throws IOException {
        return new Parser().parse(inputStream);
    }
    
    public static Schema parse(final String s) {
        return new Parser().parse(s);
    }
    
    public static Schema parse(final String s, final boolean validate) {
        return new Parser().setValidate(validate).parse(s);
    }
    
    private static Set<String> parseAliases(final JsonNode obj) {
        final JsonNode value = obj.get("aliases");
        if (value == null) {
            return null;
        }
        if (!value.isArray()) {
            throw new SchemaParseException("aliases not an array: " + obj);
        }
        final LinkedHashSet<String> set = new LinkedHashSet<String>();
        for (final JsonNode obj2 : value) {
            if (!obj2.isTextual()) {
                throw new SchemaParseException("alias not a string: " + obj2);
            }
            set.add(obj2.getTextValue());
        }
        return set;
    }
    
    static JsonNode parseJson(final String s) {
        try {
            return Schema.MAPPER.readTree(Schema.FACTORY.createJsonParser(new StringReader(s)));
        }
        catch (JsonParseException cause) {
            throw new RuntimeException(cause);
        }
        catch (IOException cause2) {
            throw new RuntimeException(cause2);
        }
    }
    
    private static String validateName(final String s) {
        if (Schema.validateNames.get()) {
            final int length = s.length();
            if (length == 0) {
                throw new SchemaParseException("Empty name");
            }
            final char char1 = s.charAt(0);
            if (!Character.isLetter(char1) && char1 != '_') {
                throw new SchemaParseException("Illegal initial character: " + s);
            }
            for (int i = 1; i < length; ++i) {
                final char char2 = s.charAt(i);
                if (!Character.isLetterOrDigit(char2) && char2 != '_') {
                    throw new SchemaParseException("Illegal character in: " + s);
                }
            }
        }
        return s;
    }
    
    public void addAlias(final String s) {
        throw new AvroRuntimeException("Not a named type: " + this);
    }
    
    public void addProp(final String s, final String s2) {
        synchronized (this) {
            this.props.add(s, s2);
            this.hashCode = Integer.MIN_VALUE;
        }
    }
    
    int computeHash() {
        return this.getType().hashCode() + this.props.hashCode();
    }
    
    final boolean equalCachedHash(final Schema schema) {
        return this.hashCode == schema.hashCode || this.hashCode == Integer.MIN_VALUE || schema.hashCode == Integer.MIN_VALUE;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Schema)) {
            return false;
        }
        final Schema schema = (Schema)o;
        return this.type == schema.type && (this.equalCachedHash(schema) && this.props.equals(schema.props));
    }
    
    void fieldsToJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
        throw new AvroRuntimeException("Not a record: " + this);
    }
    
    public Set<String> getAliases() {
        throw new AvroRuntimeException("Not a named type: " + this);
    }
    
    public String getDoc() {
        return null;
    }
    
    public Schema getElementType() {
        throw new AvroRuntimeException("Not an array: " + this);
    }
    
    public int getEnumOrdinal(final String s) {
        throw new AvroRuntimeException("Not an enum: " + this);
    }
    
    public List<String> getEnumSymbols() {
        throw new AvroRuntimeException("Not an enum: " + this);
    }
    
    public Field getField(final String s) {
        throw new AvroRuntimeException("Not a record: " + this);
    }
    
    public List<Field> getFields() {
        throw new AvroRuntimeException("Not a record: " + this);
    }
    
    public int getFixedSize() {
        throw new AvroRuntimeException("Not fixed: " + this);
    }
    
    public String getFullName() {
        return this.getName();
    }
    
    public Integer getIndexNamed(final String s) {
        throw new AvroRuntimeException("Not a union: " + this);
    }
    
    public String getName() {
        return this.type.name;
    }
    
    public String getNamespace() {
        throw new AvroRuntimeException("Not a named type: " + this);
    }
    
    public String getProp(final String key) {
        synchronized (this) {
            return ((LinkedHashMap<K, String>)this.props).get(key);
        }
    }
    
    public Map<String, String> getProps() {
        return Collections.unmodifiableMap((Map<? extends String, ? extends String>)this.props);
    }
    
    public Type getType() {
        return this.type;
    }
    
    public List<Schema> getTypes() {
        throw new AvroRuntimeException("Not a union: " + this);
    }
    
    public Schema getValueType() {
        throw new AvroRuntimeException("Not a map: " + this);
    }
    
    public boolean hasEnumSymbol(final String s) {
        throw new AvroRuntimeException("Not an enum: " + this);
    }
    
    @Override
    public final int hashCode() {
        if (this.hashCode == Integer.MIN_VALUE) {
            this.hashCode = this.computeHash();
        }
        return this.hashCode;
    }
    
    public boolean isError() {
        throw new AvroRuntimeException("Not a record: " + this);
    }
    
    public void setFields(final List<Field> list) {
        throw new AvroRuntimeException("Not a record: " + this);
    }
    
    void toJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
        if (this.props.size() == 0) {
            jsonGenerator.writeString(this.getName());
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeStringField("type", this.getName());
        this.props.write(jsonGenerator);
        jsonGenerator.writeEndObject();
    }
    
    @Override
    public String toString() {
        return this.toString(false);
    }
    
    public String toString(final boolean b) {
        try {
            final StringWriter stringWriter = new StringWriter();
            final JsonGenerator jsonGenerator = Schema.FACTORY.createJsonGenerator(stringWriter);
            if (b) {
                jsonGenerator.useDefaultPrettyPrinter();
            }
            this.toJson(new Names(), jsonGenerator);
            jsonGenerator.flush();
            return stringWriter.toString();
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    private static class ArraySchema extends Schema
    {
        private final Schema elementType;
        
        public ArraySchema(final Schema elementType) {
            super(Type.ARRAY);
            this.elementType = elementType;
        }
        
        @Override
        int computeHash() {
            return super.computeHash() + this.elementType.computeHash();
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof ArraySchema)) {
                return false;
            }
            final ArraySchema arraySchema = (ArraySchema)o;
            return this.equalCachedHash(arraySchema) && this.elementType.equals(arraySchema.elementType) && this.props.equals(arraySchema.props);
        }
        
        @Override
        public Schema getElementType() {
            return this.elementType;
        }
        
        @Override
        void toJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("type", "array");
            jsonGenerator.writeFieldName("items");
            this.elementType.toJson(names, jsonGenerator);
            this.props.write(jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }
    
    private static class BooleanSchema extends Schema
    {
        public BooleanSchema() {
            super(Type.BOOLEAN);
        }
    }
    
    private static class BytesSchema extends Schema
    {
        public BytesSchema() {
            super(Type.BYTES);
        }
    }
    
    private static class DoubleSchema extends Schema
    {
        public DoubleSchema() {
            super(Type.DOUBLE);
        }
    }
    
    private static class EnumSchema extends NamedSchema
    {
        private final Map<String, Integer> ordinals;
        private final List<String> symbols;
        
        public EnumSchema(final Name name, final String s, final LockableArrayList<String> list) {
            super(Type.ENUM, name, s);
            this.symbols = list.lock();
            this.ordinals = new HashMap<String, Integer>();
            int i = 0;
            for (final String str : list) {
                final Map<String, Integer> ordinals = this.ordinals;
                final String access$200 = validateName(str);
                final int n = i + 1;
                if (ordinals.put(access$200, i) != null) {
                    throw new SchemaParseException("Duplicate enum symbol: " + str);
                }
                i = n;
            }
        }
        
        @Override
        int computeHash() {
            return super.computeHash() + this.symbols.hashCode();
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof EnumSchema)) {
                return false;
            }
            final EnumSchema enumSchema = (EnumSchema)o;
            return this.equalCachedHash(enumSchema) && ((NamedSchema)this).equalNames((NamedSchema)enumSchema) && this.symbols.equals(enumSchema.symbols) && this.props.equals(enumSchema.props);
        }
        
        @Override
        public int getEnumOrdinal(final String s) {
            return this.ordinals.get(s);
        }
        
        @Override
        public List<String> getEnumSymbols() {
            return this.symbols;
        }
        
        @Override
        public boolean hasEnumSymbol(final String s) {
            return this.ordinals.containsKey(s);
        }
        
        @Override
        void toJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            if (((NamedSchema)this).writeNameRef(names, jsonGenerator)) {
                return;
            }
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("type", "enum");
            ((NamedSchema)this).writeName(names, jsonGenerator);
            if (((NamedSchema)this).getDoc() != null) {
                jsonGenerator.writeStringField("doc", ((NamedSchema)this).getDoc());
            }
            jsonGenerator.writeArrayFieldStart("symbols");
            final Iterator<String> iterator = this.symbols.iterator();
            while (iterator.hasNext()) {
                jsonGenerator.writeString(iterator.next());
            }
            jsonGenerator.writeEndArray();
            this.props.write(jsonGenerator);
            ((NamedSchema)this).aliasesToJson(jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }
    
    public static class Field
    {
        private Set<String> aliases;
        private final JsonNode defaultValue;
        private final String doc;
        private final String name;
        private final Order order;
        private transient int position;
        private final Props props;
        private final Schema schema;
        
        public Field(final String s, final Schema schema, final String s2, final JsonNode jsonNode) {
            this(s, schema, s2, jsonNode, Order.ASCENDING);
        }
        
        public Field(final String s, final Schema schema, final String doc, final JsonNode defaultValue, final Order order) {
            super();
            this.position = -1;
            this.props = new Props(Schema.FIELD_RESERVED);
            this.name = validateName(s);
            this.schema = schema;
            this.doc = doc;
            this.defaultValue = defaultValue;
            this.order = order;
        }
        
        private boolean defaultValueEquals(final JsonNode jsonNode) {
            if (this.defaultValue == null) {
                return jsonNode == null;
            }
            if (Double.isNaN(this.defaultValue.getValueAsDouble())) {
                return Double.isNaN(jsonNode.getValueAsDouble());
            }
            return this.defaultValue.equals(jsonNode);
        }
        
        public void addAlias(final String s) {
            if (this.aliases == null) {
                this.aliases = new LinkedHashSet<String>();
            }
            this.aliases.add(s);
        }
        
        public void addProp(final String s, final String s2) {
            synchronized (this) {
                this.props.add(s, s2);
            }
        }
        
        public Set<String> aliases() {
            if (this.aliases == null) {
                return Collections.emptySet();
            }
            return Collections.unmodifiableSet((Set<? extends String>)this.aliases);
        }
        
        public JsonNode defaultValue() {
            return this.defaultValue;
        }
        
        public String doc() {
            return this.doc;
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Field)) {
                return false;
            }
            final Field field = (Field)o;
            return this.name.equals(field.name) && this.schema.equals(field.schema) && this.defaultValueEquals(field.defaultValue) && this.props.equals(field.props);
        }
        
        public String getProp(final String key) {
            synchronized (this) {
                return ((LinkedHashMap<K, String>)this.props).get(key);
            }
        }
        
        @Override
        public int hashCode() {
            return this.name.hashCode() + this.schema.computeHash();
        }
        
        public String name() {
            return this.name;
        }
        
        public Order order() {
            return this.order;
        }
        
        public int pos() {
            return this.position;
        }
        
        public Map<String, String> props() {
            return Collections.unmodifiableMap((Map<? extends String, ? extends String>)this.props);
        }
        
        public Schema schema() {
            return this.schema;
        }
        
        @Override
        public String toString() {
            return this.name + " type:" + this.schema.type + " pos:" + this.position;
        }
        
        public enum Order
        {
            ASCENDING, 
            DESCENDING, 
            IGNORE;
            
            private String name;
            
            private Order(final int ordinal) {
                this.name = this.name().toLowerCase();
            }
        }
    }
    
    private static class FixedSchema extends NamedSchema
    {
        private final int size;
        
        public FixedSchema(final Name name, final String s, final int n) {
            super(Type.FIXED, name, s);
            if (n < 0) {
                throw new IllegalArgumentException("Invalid fixed size: " + n);
            }
            this.size = n;
        }
        
        @Override
        int computeHash() {
            return super.computeHash() + this.size;
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof FixedSchema)) {
                return false;
            }
            final FixedSchema fixedSchema = (FixedSchema)o;
            return this.equalCachedHash(fixedSchema) && ((NamedSchema)this).equalNames((NamedSchema)fixedSchema) && this.size == fixedSchema.size && this.props.equals(fixedSchema.props);
        }
        
        @Override
        public int getFixedSize() {
            return this.size;
        }
        
        @Override
        void toJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            if (((NamedSchema)this).writeNameRef(names, jsonGenerator)) {
                return;
            }
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("type", "fixed");
            ((NamedSchema)this).writeName(names, jsonGenerator);
            if (((NamedSchema)this).getDoc() != null) {
                jsonGenerator.writeStringField("doc", ((NamedSchema)this).getDoc());
            }
            jsonGenerator.writeNumberField("size", this.size);
            this.props.write(jsonGenerator);
            ((NamedSchema)this).aliasesToJson(jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }
    
    private static class FloatSchema extends Schema
    {
        public FloatSchema() {
            super(Type.FLOAT);
        }
    }
    
    private static class IntSchema extends Schema
    {
        public IntSchema() {
            super(Type.INT);
        }
    }
    
    static class LockableArrayList<E> extends ArrayList<E>
    {
        private static final long serialVersionUID = 1L;
        private boolean locked;
        
        public LockableArrayList() {
            super();
            this.locked = false;
        }
        
        public LockableArrayList(final int initialCapacity) {
            super(initialCapacity);
            this.locked = false;
        }
        
        public LockableArrayList(final List<E> c) {
            super(c);
            this.locked = false;
        }
        
        private void ensureUnlocked() {
            if (this.locked) {
                throw new IllegalStateException();
            }
        }
        
        @Override
        public boolean add(final E e) {
            this.ensureUnlocked();
            return super.add(e);
        }
        
        @Override
        public boolean addAll(final int index, final Collection<? extends E> c) {
            this.ensureUnlocked();
            return super.addAll(index, c);
        }
        
        @Override
        public boolean addAll(final Collection<? extends E> c) {
            this.ensureUnlocked();
            return super.addAll(c);
        }
        
        @Override
        public void clear() {
            this.ensureUnlocked();
            super.clear();
        }
        
        public List<E> lock() {
            this.locked = true;
            return this;
        }
        
        @Override
        public E remove(final int index) {
            this.ensureUnlocked();
            return super.remove(index);
        }
        
        @Override
        public boolean remove(final Object o) {
            this.ensureUnlocked();
            return super.remove(o);
        }
        
        @Override
        public boolean removeAll(final Collection<?> c) {
            this.ensureUnlocked();
            return super.removeAll(c);
        }
        
        @Override
        public boolean retainAll(final Collection<?> c) {
            this.ensureUnlocked();
            return super.retainAll(c);
        }
    }
    
    private static class LongSchema extends Schema
    {
        public LongSchema() {
            super(Type.LONG);
        }
    }
    
    private static class MapSchema extends Schema
    {
        private final Schema valueType;
        
        public MapSchema(final Schema valueType) {
            super(Type.MAP);
            this.valueType = valueType;
        }
        
        @Override
        int computeHash() {
            return super.computeHash() + this.valueType.computeHash();
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof MapSchema)) {
                return false;
            }
            final MapSchema mapSchema = (MapSchema)o;
            return this.equalCachedHash(mapSchema) && this.valueType.equals(mapSchema.valueType) && this.props.equals(mapSchema.props);
        }
        
        @Override
        public Schema getValueType() {
            return this.valueType;
        }
        
        @Override
        void toJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("type", "map");
            jsonGenerator.writeFieldName("values");
            this.valueType.toJson(names, jsonGenerator);
            this.props.write(jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }
    
    private static class Name
    {
        private final String full;
        private final String name;
        private final String space;
        
        public Name(final String s, final String space) {
            super();
            if (s == null) {
                this.full = null;
                this.space = null;
                this.name = null;
                return;
            }
            final int lastIndex = s.lastIndexOf(46);
            if (lastIndex < 0) {
                this.space = space;
                this.name = validateName(s);
            }
            else {
                this.space = s.substring(0, lastIndex);
                this.name = validateName(s.substring(lastIndex + 1, s.length()));
            }
            String full;
            if (this.space == null) {
                full = this.name;
            }
            else {
                full = this.space + "." + this.name;
            }
            this.full = full;
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Name)) {
                return false;
            }
            final Name name = (Name)o;
            if (this.full == null) {
                return name.full == null;
            }
            return this.full.equals(name.full);
        }
        
        public String getQualified(final String anObject) {
            if (this.space == null || this.space.equals(anObject)) {
                return this.name;
            }
            return this.full;
        }
        
        @Override
        public int hashCode() {
            if (this.full == null) {
                return 0;
            }
            return this.full.hashCode();
        }
        
        @Override
        public String toString() {
            return this.full;
        }
        
        public void writeName(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            if (this.name != null) {
                jsonGenerator.writeStringField("name", this.name);
            }
            if (this.space != null) {
                if (!this.space.equals(names.space())) {
                    jsonGenerator.writeStringField("namespace", this.space);
                }
                if (names.space() == null) {
                    names.space(this.space);
                }
            }
        }
    }
    
    private abstract static class NamedSchema extends Schema
    {
        Set<Name> aliases;
        final String doc;
        final Name name;
        
        public NamedSchema(final Type type, final Name name, final String doc) {
            super(type);
            this.name = name;
            this.doc = doc;
            if (NamedSchema.PRIMITIVES.containsKey(name.full)) {
                throw new AvroTypeException("Schemas may not be named after primitives: " + name.full);
            }
        }
        
        @Override
        public void addAlias(final String s) {
            if (this.aliases == null) {
                this.aliases = new LinkedHashSet<Name>();
            }
            this.aliases.add(new Name(s, this.name.space));
        }
        
        public void aliasesToJson(final JsonGenerator jsonGenerator) throws IOException {
            if (this.aliases == null || this.aliases.size() == 0) {
                return;
            }
            jsonGenerator.writeFieldName("aliases");
            jsonGenerator.writeStartArray();
            final Iterator<Name> iterator = this.aliases.iterator();
            while (iterator.hasNext()) {
                jsonGenerator.writeString(iterator.next().getQualified(this.name.space));
            }
            jsonGenerator.writeEndArray();
        }
        
        @Override
        int computeHash() {
            return super.computeHash() + this.name.hashCode();
        }
        
        public boolean equalNames(final NamedSchema namedSchema) {
            return this.name.equals(namedSchema.name);
        }
        
        @Override
        public Set<String> getAliases() {
            final LinkedHashSet<String> set = new LinkedHashSet<String>();
            if (this.aliases != null) {
                final Iterator<Name> iterator = this.aliases.iterator();
                while (iterator.hasNext()) {
                    set.add(iterator.next().full);
                }
            }
            return set;
        }
        
        @Override
        public String getDoc() {
            return this.doc;
        }
        
        @Override
        public String getFullName() {
            return this.name.full;
        }
        
        @Override
        public String getName() {
            return this.name.name;
        }
        
        @Override
        public String getNamespace() {
            return this.name.space;
        }
        
        public void writeName(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            this.name.writeName(names, jsonGenerator);
        }
        
        public boolean writeNameRef(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            if (this.equals(names.get(this.name))) {
                jsonGenerator.writeString(this.name.getQualified(names.space()));
                return true;
            }
            if (this.name.name != null) {
                names.put(this.name, this);
            }
            return false;
        }
    }
    
    static class Names extends LinkedHashMap<Name, Schema>
    {
        private String space;
        
        public Names() {
            super();
        }
        
        public Names(final String space) {
            super();
            this.space = space;
        }
        
        public void add(final Schema schema) {
            this.put(((NamedSchema)schema).name, schema);
        }
        
        public boolean contains(final Schema schema) {
            return this.get(((NamedSchema)schema).name) != null;
        }
        
        @Override
        public Schema get(final Object o) {
            Name key;
            if (o instanceof String) {
                final Type type = Schema.PRIMITIVES.get(o);
                if (type != null) {
                    return Schema.create(type);
                }
                key = new Name((String)o, this.space);
            }
            else {
                key = (Name)o;
            }
            return super.get(key);
        }
        
        @Override
        public Schema put(final Name key, final Schema value) {
            if (this.containsKey(key)) {
                throw new SchemaParseException("Can't redefine: " + key);
            }
            return super.put(key, value);
        }
        
        public String space() {
            return this.space;
        }
        
        public void space(final String space) {
            this.space = space;
        }
    }
    
    private static class NullSchema extends Schema
    {
        public NullSchema() {
            super(Type.NULL);
        }
    }
    
    public static class Parser
    {
        private Names names;
        private boolean validate;
        
        public Parser() {
            super();
            this.names = new Names();
            this.validate = true;
        }
        
        private Schema parse(final JsonParser jsonParser) throws IOException {
            final boolean booleanValue = Schema.validateNames.get();
            try {
                Schema.validateNames.set(this.validate);
                return Schema.parse(Schema.MAPPER.readTree(jsonParser), this.names);
            }
            catch (JsonParseException ex) {
                throw new SchemaParseException(ex);
            }
            finally {
                Schema.validateNames.set(booleanValue);
            }
        }
        
        public Parser addTypes(final Map<String, Schema> map) {
            final Iterator<Schema> iterator = map.values().iterator();
            while (iterator.hasNext()) {
                this.names.add(iterator.next());
            }
            return this;
        }
        
        public Map<String, Schema> getTypes() {
            final LinkedHashMap<String, Schema> linkedHashMap = new LinkedHashMap<String, Schema>();
            for (final Schema schema : ((HashMap<K, Schema>)this.names).values()) {
                linkedHashMap.put(schema.getFullName(), schema);
            }
            return linkedHashMap;
        }
        
        public boolean getValidate() {
            return this.validate;
        }
        
        public Schema parse(final File file) throws IOException {
            return this.parse(Schema.FACTORY.createJsonParser(file));
        }
        
        public Schema parse(final InputStream inputStream) throws IOException {
            return this.parse(Schema.FACTORY.createJsonParser(inputStream));
        }
        
        public Schema parse(final String s) {
            try {
                return this.parse(Schema.FACTORY.createJsonParser(new StringReader(s)));
            }
            catch (IOException ex) {
                throw new SchemaParseException(ex);
            }
        }
        
        public Parser setValidate(final boolean validate) {
            this.validate = validate;
            return this;
        }
    }
    
    static final class Props extends LinkedHashMap<String, String>
    {
        private Set<String> reserved;
        
        public Props(final Set<String> reserved) {
            super(1);
            this.reserved = reserved;
        }
        
        public void add(final String str, final String s) {
            if (this.reserved.contains(str)) {
                throw new AvroRuntimeException("Can't set reserved property: " + str);
            }
            if (s == null) {
                throw new AvroRuntimeException("Can't set a property to null: " + str);
            }
            final String s2 = ((LinkedHashMap<K, String>)this).get(str);
            if (s2 == null) {
                this.put(str, s);
            }
            else if (!s2.equals(s)) {
                throw new AvroRuntimeException("Can't overwrite property: " + str);
            }
        }
        
        public void write(final JsonGenerator jsonGenerator) throws IOException {
            for (final Map.Entry<String, String> entry : this.entrySet()) {
                jsonGenerator.writeStringField(entry.getKey(), entry.getValue());
            }
        }
    }
    
    private static class RecordSchema extends NamedSchema
    {
        private Map<String, Field> fieldMap;
        private List<Field> fields;
        private final boolean isError;
        
        public RecordSchema(final Name name, final String s, final boolean isError) {
            super(Type.RECORD, name, s);
            this.isError = isError;
        }
        
        @Override
        int computeHash() {
            final Map<RecordSchema, RecordSchema> map = Schema.SEEN_HASHCODE.get();
            if (map.containsKey(this)) {
                return 0;
            }
            final boolean empty = map.isEmpty();
            try {
                map.put(this, this);
                return super.computeHash() + this.fields.hashCode();
            }
            finally {
                if (empty) {
                    map.clear();
                }
            }
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof RecordSchema)) {
                return false;
            }
            final RecordSchema recordSchema = (RecordSchema)o;
            if (!this.equalCachedHash(recordSchema)) {
                return false;
            }
            if (!((NamedSchema)this).equalNames((NamedSchema)recordSchema)) {
                return false;
            }
            if (!this.props.equals(recordSchema.props)) {
                return false;
            }
            final Set<SeenPair> set = Schema.SEEN_EQUALS.get();
            final SeenPair seenPair = new SeenPair((Object)this, o);
            if (set.contains(seenPair)) {
                return true;
            }
            final boolean empty = set.isEmpty();
            try {
                set.add(seenPair);
                return this.fields.equals(((RecordSchema)o).fields);
            }
            finally {
                if (empty) {
                    set.clear();
                }
            }
        }
        
        @Override
        void fieldsToJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStartArray();
            for (final Field field : this.fields) {
                jsonGenerator.writeStartObject();
                jsonGenerator.writeStringField("name", field.name());
                jsonGenerator.writeFieldName("type");
                field.schema().toJson(names, jsonGenerator);
                if (field.doc() != null) {
                    jsonGenerator.writeStringField("doc", field.doc());
                }
                if (field.defaultValue() != null) {
                    jsonGenerator.writeFieldName("default");
                    jsonGenerator.writeTree(field.defaultValue());
                }
                if (field.order() != Order.ASCENDING) {
                    jsonGenerator.writeStringField("order", field.order().name);
                }
                if (field.aliases != null && field.aliases.size() != 0) {
                    jsonGenerator.writeFieldName("aliases");
                    jsonGenerator.writeStartArray();
                    final Iterator iterator2 = field.aliases.iterator();
                    while (iterator2.hasNext()) {
                        jsonGenerator.writeString(iterator2.next());
                    }
                    jsonGenerator.writeEndArray();
                }
                field.props.write(jsonGenerator);
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndArray();
        }
        
        @Override
        public Field getField(final String s) {
            if (this.fieldMap == null) {
                throw new AvroRuntimeException("Schema fields not set yet");
            }
            return this.fieldMap.get(s);
        }
        
        @Override
        public List<Field> getFields() {
            if (this.fields == null) {
                throw new AvroRuntimeException("Schema fields not set yet");
            }
            return this.fields;
        }
        
        @Override
        public boolean isError() {
            return this.isError;
        }
        
        @Override
        public void setFields(final List<Field> list) {
            if (this.fields != null) {
                throw new AvroRuntimeException("Fields are already set");
            }
            int n = 0;
            this.fieldMap = new HashMap<String, Field>();
            final LockableArrayList<Field> list2 = new LockableArrayList<Field>();
            for (final Field obj : list) {
                if (obj.position != -1) {
                    throw new AvroRuntimeException("Field already used: " + obj);
                }
                final int n2 = n + 1;
                obj.position = n;
                this.fieldMap.put(obj.name(), obj);
                list2.add(obj);
                n = n2;
            }
            this.fields = list2.lock();
            this.hashCode = Integer.MIN_VALUE;
        }
        
        @Override
        void toJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            if (((NamedSchema)this).writeNameRef(names, jsonGenerator)) {
                return;
            }
            final String access$1100 = names.space;
            jsonGenerator.writeStartObject();
            String s;
            if (this.isError) {
                s = "error";
            }
            else {
                s = "record";
            }
            jsonGenerator.writeStringField("type", s);
            ((NamedSchema)this).writeName(names, jsonGenerator);
            names.space = this.name.space;
            if (((NamedSchema)this).getDoc() != null) {
                jsonGenerator.writeStringField("doc", ((NamedSchema)this).getDoc());
            }
            jsonGenerator.writeFieldName("fields");
            this.fieldsToJson(names, jsonGenerator);
            this.props.write(jsonGenerator);
            ((NamedSchema)this).aliasesToJson(jsonGenerator);
            jsonGenerator.writeEndObject();
            names.space = access$1100;
        }
    }
    
    private static class SeenPair
    {
        private Object s1;
        private Object s2;
        
        private SeenPair(final Object s1, final Object s2) {
            super();
            this.s1 = s1;
            this.s2 = s2;
        }
        
        @Override
        public boolean equals(final Object o) {
            return this.s1 == ((SeenPair)o).s1 && this.s2 == ((SeenPair)o).s2;
        }
        
        @Override
        public int hashCode() {
            return System.identityHashCode(this.s1) + System.identityHashCode(this.s2);
        }
    }
    
    private static class StringSchema extends Schema
    {
        public StringSchema() {
            super(Type.STRING);
        }
    }
    
    public enum Type
    {
        ARRAY, 
        BOOLEAN, 
        BYTES, 
        DOUBLE, 
        ENUM, 
        FIXED, 
        FLOAT, 
        INT, 
        LONG, 
        MAP, 
        NULL, 
        RECORD, 
        STRING, 
        UNION;
        
        private String name;
        
        private Type(final int ordinal) {
            this.name = this.name().toLowerCase();
        }
        
        public String getName() {
            return this.name;
        }
    }
    
    private static class UnionSchema extends Schema
    {
        private final Map<String, Integer> indexByName;
        private final List<Schema> types;
        
        public UnionSchema(final LockableArrayList<Schema> list) {
            super(Type.UNION);
            this.indexByName = new HashMap<String, Integer>();
            this.types = list.lock();
            int i = 0;
            for (final Schema schema : list) {
                if (schema.getType() == Type.UNION) {
                    throw new AvroRuntimeException("Nested union: " + this);
                }
                final String fullName = schema.getFullName();
                if (fullName == null) {
                    throw new AvroRuntimeException("Nameless in union:" + this);
                }
                final Map<String, Integer> indexByName = this.indexByName;
                final int n = i + 1;
                if (indexByName.put(fullName, i) != null) {
                    throw new AvroRuntimeException("Duplicate in union:" + fullName);
                }
                i = n;
            }
        }
        
        @Override
        public void addProp(final String s, final String s2) {
            throw new AvroRuntimeException("Can't set properties on a union: " + this);
        }
        
        @Override
        int computeHash() {
            int computeHash = super.computeHash();
            final Iterator<Schema> iterator = this.types.iterator();
            while (iterator.hasNext()) {
                computeHash += iterator.next().computeHash();
            }
            return computeHash;
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof UnionSchema)) {
                return false;
            }
            final UnionSchema unionSchema = (UnionSchema)o;
            return this.equalCachedHash(unionSchema) && this.types.equals(unionSchema.types) && this.props.equals(unionSchema.props);
        }
        
        @Override
        public Integer getIndexNamed(final String s) {
            return this.indexByName.get(s);
        }
        
        @Override
        public List<Schema> getTypes() {
            return this.types;
        }
        
        @Override
        void toJson(final Names names, final JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStartArray();
            final Iterator<Schema> iterator = this.types.iterator();
            while (iterator.hasNext()) {
                iterator.next().toJson(names, jsonGenerator);
            }
            jsonGenerator.writeEndArray();
        }
    }
}

package com.flurry.org.apache.avro;

import java.security.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import java.util.*;

public class Protocol
{
    private static final Set<String> MESSAGE_RESERVED;
    private static final Set<String> PROTOCOL_RESERVED;
    public static final Schema SYSTEM_ERROR;
    public static final Schema SYSTEM_ERRORS;
    public static final long VERSION = 1L;
    private String doc;
    private byte[] md5;
    private Map<String, Message> messages;
    private String name;
    private String namespace;
    Schema.Props props;
    private Schema.Names types;
    
    static {
        Collections.addAll(MESSAGE_RESERVED = new HashSet<String>(), "doc", "response", "request", "errors", "one-way");
        SYSTEM_ERROR = Schema.create(Schema.Type.STRING);
        final ArrayList<Schema> list = new ArrayList<Schema>();
        list.add(Protocol.SYSTEM_ERROR);
        SYSTEM_ERRORS = Schema.createUnion(list);
        Collections.addAll(PROTOCOL_RESERVED = new HashSet<String>(), "namespace", "protocol", "doc", "messages", "types", "errors");
    }
    
    private Protocol() {
        super();
        this.types = new Schema.Names();
        this.messages = new LinkedHashMap<String, Message>();
        this.props = new Schema.Props(Protocol.PROTOCOL_RESERVED);
    }
    
    public Protocol(final String s, final String s2) {
        this(s, null, s2);
    }
    
    public Protocol(final String name, final String doc, final String namespace) {
        super();
        this.types = new Schema.Names();
        this.messages = new LinkedHashMap<String, Message>();
        this.props = new Schema.Props(Protocol.PROTOCOL_RESERVED);
        this.name = name;
        this.doc = doc;
        this.namespace = namespace;
    }
    
    public static void main(final String[] array) throws Exception {
        System.out.println(parse(new File(array[0])));
    }
    
    private static Protocol parse(final JsonParser jsonParser) {
        try {
            final Protocol protocol = new Protocol();
            protocol.parse(Schema.MAPPER.readTree(jsonParser));
            return protocol;
        }
        catch (IOException ex) {
            throw new SchemaParseException(ex);
        }
    }
    
    public static Protocol parse(final File file) throws IOException {
        return parse(Schema.FACTORY.createJsonParser(file));
    }
    
    public static Protocol parse(final InputStream inputStream) throws IOException {
        return parse(Schema.FACTORY.createJsonParser(inputStream));
    }
    
    public static Protocol parse(final String s) {
        try {
            return parse(Schema.FACTORY.createJsonParser(new ByteArrayInputStream(s.getBytes("UTF-8"))));
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    private void parse(final JsonNode jsonNode) {
        this.parseNamespace(jsonNode);
        this.parseName(jsonNode);
        this.parseTypes(jsonNode);
        this.parseMessages(jsonNode);
        this.parseDoc(jsonNode);
        this.parseProps(jsonNode);
    }
    
    private void parseDoc(final JsonNode jsonNode) {
        this.doc = this.parseDocNode(jsonNode);
    }
    
    private String parseDocNode(final JsonNode jsonNode) {
        final JsonNode value = jsonNode.get("doc");
        if (value == null) {
            return null;
        }
        return value.getTextValue();
    }
    
    private Message parseMessage(final String s, final JsonNode jsonNode) {
        final String docNode = this.parseDocNode(jsonNode);
        final LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<String, String>();
        final Iterator<String> fieldNames = jsonNode.getFieldNames();
        while (fieldNames.hasNext()) {
            final String s2 = fieldNames.next();
            if (!Protocol.MESSAGE_RESERVED.contains(s2)) {
                final JsonNode value = jsonNode.get(s2);
                if (!value.isValueNode() || !value.isTextual()) {
                    continue;
                }
                linkedHashMap.put(s2, value.getTextValue());
            }
        }
        final JsonNode value2 = jsonNode.get("request");
        if (value2 == null || !value2.isArray()) {
            throw new SchemaParseException("No request specified: " + jsonNode);
        }
        final ArrayList<Schema.Field> list = new ArrayList<Schema.Field>();
        for (final JsonNode jsonNode2 : value2) {
            final JsonNode value3 = jsonNode2.get("name");
            if (value3 == null) {
                throw new SchemaParseException("No param name: " + jsonNode2);
            }
            final JsonNode value4 = jsonNode2.get("type");
            if (value4 == null) {
                throw new SchemaParseException("No param type: " + jsonNode2);
            }
            list.add(new Schema.Field(value3.getTextValue(), Schema.parse(value4, this.types), null, jsonNode2.get("default")));
        }
        final Schema record = Schema.createRecord(list);
        final JsonNode value5 = jsonNode.get("one-way");
        boolean booleanValue = false;
        if (value5 != null) {
            if (!value5.isBoolean()) {
                throw new SchemaParseException("one-way must be boolean: " + jsonNode);
            }
            booleanValue = value5.getBooleanValue();
        }
        final JsonNode value6 = jsonNode.get("response");
        if (!booleanValue && value6 == null) {
            throw new SchemaParseException("No response specified: " + jsonNode);
        }
        final JsonNode value7 = jsonNode.get("errors");
        if (!booleanValue) {
            final Schema parse = Schema.parse(value6, this.types);
            final ArrayList<Schema> list2 = new ArrayList<Schema>();
            list2.add(Protocol.SYSTEM_ERROR);
            if (value7 != null) {
                if (!value7.isArray()) {
                    throw new SchemaParseException("Errors not an array: " + jsonNode);
                }
                final Iterator<JsonNode> iterator2 = value7.iterator();
                while (iterator2.hasNext()) {
                    final String textValue = iterator2.next().getTextValue();
                    final Schema value8 = this.types.get(textValue);
                    if (value8 == null) {
                        throw new SchemaParseException("Undefined error: " + textValue);
                    }
                    if (!value8.isError()) {
                        throw new SchemaParseException("Not an error: " + textValue);
                    }
                    list2.add(value8);
                }
            }
            return (Message)new TwoWayMessage(s, docNode, (Map)linkedHashMap, record, parse, Schema.createUnion(list2));
        }
        if (value7 != null) {
            throw new SchemaParseException("one-way can't have errors: " + jsonNode);
        }
        if (value6 != null && Schema.parse(value6, this.types).getType() != Schema.Type.NULL) {
            throw new SchemaParseException("One way response must be null: " + jsonNode);
        }
        return new Message(s, docNode, (Map)linkedHashMap, record);
    }
    
    private void parseMessages(final JsonNode jsonNode) {
        final JsonNode value = jsonNode.get("messages");
        if (value != null) {
            final Iterator<String> fieldNames = value.getFieldNames();
            while (fieldNames.hasNext()) {
                final String s = fieldNames.next();
                this.messages.put(s, this.parseMessage(s, value.get(s)));
            }
        }
    }
    
    private void parseName(final JsonNode obj) {
        final JsonNode value = obj.get("protocol");
        if (value == null) {
            throw new SchemaParseException("No protocol name specified: " + obj);
        }
        this.name = value.getTextValue();
    }
    
    private void parseNamespace(final JsonNode jsonNode) {
        final JsonNode value = jsonNode.get("namespace");
        if (value == null) {
            return;
        }
        this.namespace = value.getTextValue();
        this.types.space(this.namespace);
    }
    
    private void parseProps(final JsonNode jsonNode) {
        final Iterator<String> fieldNames = jsonNode.getFieldNames();
        while (fieldNames.hasNext()) {
            final String s = fieldNames.next();
            if (!Protocol.PROTOCOL_RESERVED.contains(s)) {
                final JsonNode value = jsonNode.get(s);
                if (!value.isValueNode() || !value.isTextual()) {
                    continue;
                }
                this.addProp(s, value.getTextValue());
            }
        }
    }
    
    private void parseTypes(final JsonNode jsonNode) {
        final JsonNode value = jsonNode.get("types");
        if (value != null) {
            if (!value.isArray()) {
                throw new SchemaParseException("Types not an array: " + value);
            }
            for (final JsonNode obj : value) {
                if (!obj.isObject()) {
                    throw new SchemaParseException("Type not an object: " + obj);
                }
                Schema.parse(obj, this.types);
            }
        }
    }
    
    public void addProp(final String s, final String s2) {
        synchronized (this) {
            this.props.add(s, s2);
        }
    }
    
    @Deprecated
    public Message createMessage(final String s, final String s2, final Schema schema) {
        return this.createMessage(s, s2, new LinkedHashMap<String, String>(), schema);
    }
    
    @Deprecated
    public Message createMessage(final String s, final String s2, final Schema schema, final Schema schema2, final Schema schema3) {
        return this.createMessage(s, s2, new LinkedHashMap<String, String>(), schema, schema2, schema3);
    }
    
    public Message createMessage(final String s, final String s2, final Map<String, String> map, final Schema schema) {
        return new Message(s, s2, (Map)map, schema);
    }
    
    public Message createMessage(final String s, final String s2, final Map<String, String> map, final Schema schema, final Schema schema2, final Schema schema3) {
        return (Message)new TwoWayMessage(s, s2, (Map)map, schema, schema2, schema3);
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Protocol)) {
            return false;
        }
        final Protocol protocol = (Protocol)o;
        return this.name.equals(protocol.name) && this.namespace.equals(protocol.namespace) && this.types.equals(protocol.types) && this.messages.equals(protocol.messages) && this.props.equals(this.props);
    }
    
    public String getDoc() {
        return this.doc;
    }
    
    public byte[] getMD5() {
        Label_0029: {
            if (this.md5 != null) {
                break Label_0029;
            }
            try {
                this.md5 = MessageDigest.getInstance("MD5").digest(this.toString().getBytes("UTF-8"));
                return this.md5;
            }
            catch (Exception ex) {
                throw new AvroRuntimeException(ex);
            }
        }
    }
    
    public Map<String, Message> getMessages() {
        return this.messages;
    }
    
    public String getName() {
        return this.name;
    }
    
    public String getNamespace() {
        return this.namespace;
    }
    
    public String getProp(final String key) {
        synchronized (this) {
            return ((LinkedHashMap<K, String>)this.props).get(key);
        }
    }
    
    public Map<String, String> getProps() {
        return Collections.unmodifiableMap((Map<? extends String, ? extends String>)this.props);
    }
    
    public Schema getType(final String s) {
        return this.types.get(s);
    }
    
    public Collection<Schema> getTypes() {
        return ((HashMap<K, Schema>)this.types).values();
    }
    
    @Override
    public int hashCode() {
        return this.name.hashCode() + this.namespace.hashCode() + this.types.hashCode() + this.messages.hashCode() + this.props.hashCode();
    }
    
    public void setTypes(final Collection<Schema> collection) {
        this.types = new Schema.Names();
        final Iterator<Schema> iterator = collection.iterator();
        while (iterator.hasNext()) {
            this.types.add(iterator.next());
        }
    }
    
    void toJson(final JsonGenerator jsonGenerator) throws IOException {
        this.types.space(this.namespace);
        jsonGenerator.writeStartObject();
        jsonGenerator.writeStringField("protocol", this.name);
        jsonGenerator.writeStringField("namespace", this.namespace);
        if (this.doc != null) {
            jsonGenerator.writeStringField("doc", this.doc);
        }
        this.props.write(jsonGenerator);
        jsonGenerator.writeArrayFieldStart("types");
        final Schema.Names names = new Schema.Names(this.namespace);
        for (final Schema schema : ((HashMap<K, Schema>)this.types).values()) {
            if (!names.contains(schema)) {
                schema.toJson(names, jsonGenerator);
            }
        }
        jsonGenerator.writeEndArray();
        jsonGenerator.writeObjectFieldStart("messages");
        for (final Map.Entry<String, Message> entry : this.messages.entrySet()) {
            jsonGenerator.writeFieldName(entry.getKey());
            entry.getValue().toJson(jsonGenerator);
        }
        jsonGenerator.writeEndObject();
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
            this.toJson(jsonGenerator);
            jsonGenerator.flush();
            return stringWriter.toString();
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public class Message
    {
        private String doc;
        private String name;
        private final Schema.Props props;
        private Schema request;
        
        private Message(final String name, final String doc, final Map<String, String> map, final Schema request) {
            super();
            this.props = new Schema.Props(Protocol.MESSAGE_RESERVED);
            this.name = name;
            this.doc = doc;
            this.request = request;
            if (map != null) {
                for (final Map.Entry<String, String> entry : map.entrySet()) {
                    this.addProp(entry.getKey(), entry.getValue());
                }
            }
        }
        
        public void addProp(final String s, final String s2) {
            synchronized (this) {
                this.props.add(s, s2);
            }
        }
        
        @Override
        public boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Message)) {
                return false;
            }
            final Message message = (Message)o;
            return this.name.equals(message.name) && this.request.equals(message.request) && this.props.equals(message.props);
        }
        
        public String getDoc() {
            return this.doc;
        }
        
        public Schema getErrors() {
            return Schema.createUnion(new ArrayList<Schema>());
        }
        
        public String getName() {
            return this.name;
        }
        
        public String getProp(final String key) {
            synchronized (this) {
                return ((LinkedHashMap<K, String>)this.props).get(key);
            }
        }
        
        public Map<String, String> getProps() {
            return Collections.unmodifiableMap((Map<? extends String, ? extends String>)this.props);
        }
        
        public Schema getRequest() {
            return this.request;
        }
        
        public Schema getResponse() {
            return Schema.create(Schema.Type.NULL);
        }
        
        @Override
        public int hashCode() {
            return this.name.hashCode() + this.request.hashCode() + this.props.hashCode();
        }
        
        public boolean isOneWay() {
            return true;
        }
        
        void toJson(final JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStartObject();
            if (this.doc != null) {
                jsonGenerator.writeStringField("doc", this.doc);
            }
            this.props.write(jsonGenerator);
            jsonGenerator.writeFieldName("request");
            this.request.fieldsToJson(Protocol.this.types, jsonGenerator);
            this.toJson1(jsonGenerator);
            jsonGenerator.writeEndObject();
        }
        
        void toJson1(final JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeStringField("response", "null");
            jsonGenerator.writeBooleanField("one-way", true);
        }
        
        @Override
        public String toString() {
            try {
                final StringWriter stringWriter = new StringWriter();
                final JsonGenerator jsonGenerator = Schema.FACTORY.createJsonGenerator(stringWriter);
                this.toJson(jsonGenerator);
                jsonGenerator.flush();
                return stringWriter.toString();
            }
            catch (IOException ex) {
                throw new AvroRuntimeException(ex);
            }
        }
    }
    
    private class TwoWayMessage extends Message
    {
        private Schema errors;
        private Schema response;
        
        private TwoWayMessage(final String s, final String s2, final Map<String, String> map, final Schema schema, final Schema response, final Schema errors) {
            super(s, s2, (Map)map, schema);
            this.response = response;
            this.errors = errors;
        }
        
        @Override
        public boolean equals(final Object o) {
            if (!super.equals(o)) {
                return false;
            }
            if (!(o instanceof TwoWayMessage)) {
                return false;
            }
            final TwoWayMessage twoWayMessage = (TwoWayMessage)o;
            return this.response.equals(twoWayMessage.response) && this.errors.equals(twoWayMessage.errors);
        }
        
        @Override
        public Schema getErrors() {
            return this.errors;
        }
        
        @Override
        public Schema getResponse() {
            return this.response;
        }
        
        @Override
        public int hashCode() {
            return super.hashCode() + this.response.hashCode() + this.errors.hashCode();
        }
        
        @Override
        public boolean isOneWay() {
            return false;
        }
        
        @Override
        void toJson1(final JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.writeFieldName("response");
            this.response.toJson(Protocol.this.types, jsonGenerator);
            final List<Schema> types = this.errors.getTypes();
            if (types.size() > 1) {
                final Schema union = Schema.createUnion(types.subList(1, types.size()));
                jsonGenerator.writeFieldName("errors");
                union.toJson(Protocol.this.types, jsonGenerator);
            }
        }
    }
}

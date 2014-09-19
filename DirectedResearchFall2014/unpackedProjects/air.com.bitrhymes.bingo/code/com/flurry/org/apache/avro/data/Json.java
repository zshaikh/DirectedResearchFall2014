package com.flurry.org.apache.avro.data;

import com.flurry.org.apache.avro.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.node.*;
import java.util.*;
import com.flurry.org.apache.avro.io.*;
import com.flurry.org.codehaus.jackson.*;

public class Json
{
    public static final Schema SCHEMA;
    
    static {
        try {
            SCHEMA = Schema.parse(Json.class.getResourceAsStream("/com/flurry/org/apache/avro/data/Json.avsc"));
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public static JsonNode read(final Decoder decoder) throws IOException {
        switch (JsonType.values()[decoder.readIndex()]) {
            default: {
                throw new AvroRuntimeException("Unexpected Json node type");
            }
            case LONG: {
                return new LongNode(decoder.readLong());
            }
            case DOUBLE: {
                return new DoubleNode(decoder.readDouble());
            }
            case STRING: {
                return new TextNode(decoder.readString());
            }
            case BOOLEAN: {
                if (decoder.readBoolean()) {
                    return BooleanNode.TRUE;
                }
                return BooleanNode.FALSE;
            }
            case NULL: {
                decoder.readNull();
                return NullNode.getInstance();
            }
            case ARRAY: {
                final ArrayNode arrayNode = JsonNodeFactory.instance.arrayNode();
                for (long n = decoder.readArrayStart(); n > 0L; n = decoder.arrayNext()) {
                    for (long n2 = 0L; n2 < n; ++n2) {
                        arrayNode.add(read(decoder));
                    }
                }
                return arrayNode;
            }
            case OBJECT: {
                final ObjectNode objectNode = JsonNodeFactory.instance.objectNode();
                for (long n3 = decoder.readMapStart(); n3 > 0L; n3 = decoder.mapNext()) {
                    for (long n4 = 0L; n4 < n3; ++n4) {
                        objectNode.put(decoder.readString(), read(decoder));
                    }
                }
                return objectNode;
            }
        }
    }
    
    public static void write(final JsonNode obj, final Encoder encoder) throws IOException {
        switch (obj.asToken()) {
            default: {
                throw new AvroRuntimeException(obj.asToken() + " unexpected: " + obj);
            }
            case VALUE_NUMBER_INT: {
                encoder.writeIndex(JsonType.LONG.ordinal());
                encoder.writeLong(obj.getLongValue());
            }
            case VALUE_NUMBER_FLOAT: {
                encoder.writeIndex(JsonType.DOUBLE.ordinal());
                encoder.writeDouble(obj.getDoubleValue());
            }
            case VALUE_STRING: {
                encoder.writeIndex(JsonType.STRING.ordinal());
                encoder.writeString(obj.getTextValue());
            }
            case VALUE_TRUE: {
                encoder.writeIndex(JsonType.BOOLEAN.ordinal());
                encoder.writeBoolean(true);
            }
            case VALUE_FALSE: {
                encoder.writeIndex(JsonType.BOOLEAN.ordinal());
                encoder.writeBoolean(false);
            }
            case VALUE_NULL: {
                encoder.writeIndex(JsonType.NULL.ordinal());
                encoder.writeNull();
            }
            case START_ARRAY: {
                encoder.writeIndex(JsonType.ARRAY.ordinal());
                encoder.writeArrayStart();
                encoder.setItemCount(obj.size());
                for (final JsonNode jsonNode : obj) {
                    encoder.startItem();
                    write(jsonNode, encoder);
                }
                encoder.writeArrayEnd();
            }
            case START_OBJECT: {
                encoder.writeIndex(JsonType.OBJECT.ordinal());
                encoder.writeMapStart();
                encoder.setItemCount(obj.size());
                final Iterator<String> fieldNames = obj.getFieldNames();
                while (fieldNames.hasNext()) {
                    encoder.startItem();
                    final String s = fieldNames.next();
                    encoder.writeString(s);
                    write(obj.get(s), encoder);
                }
                encoder.writeMapEnd();
            }
        }
    }
    
    private enum JsonType
    {
        ARRAY, 
        BOOLEAN, 
        DOUBLE, 
        LONG, 
        NULL, 
        OBJECT, 
        STRING;
    }
    
    public static class Reader implements DatumReader<JsonNode>
    {
        private ResolvingDecoder resolver;
        private Schema written;
        
        @Override
        public JsonNode read(final JsonNode jsonNode, final Decoder decoder) throws IOException {
            if (this.written == null) {
                return Json.read(decoder);
            }
            if (this.resolver == null) {
                this.resolver = DecoderFactory.get().resolvingDecoder(this.written, Json.SCHEMA, null);
            }
            this.resolver.configure(decoder);
            final JsonNode read = Json.read(this.resolver);
            this.resolver.drain();
            return read;
        }
        
        @Override
        public void setSchema(final Schema schema) {
            Schema written;
            if (Json.SCHEMA.equals(this.written)) {
                written = null;
            }
            else {
                written = schema;
            }
            this.written = written;
        }
    }
    
    public static class Writer implements DatumWriter<JsonNode>
    {
        @Override
        public void setSchema(final Schema obj) {
            if (!Json.SCHEMA.equals(obj)) {
                throw new RuntimeException("Not the Json schema: " + obj);
            }
        }
        
        @Override
        public void write(final JsonNode jsonNode, final Encoder encoder) throws IOException {
            Json.write(jsonNode, encoder);
        }
    }
}

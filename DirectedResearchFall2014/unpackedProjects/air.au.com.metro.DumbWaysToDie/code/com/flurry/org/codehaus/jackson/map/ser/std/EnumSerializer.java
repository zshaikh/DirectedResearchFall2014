package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.node.*;
import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

@JacksonStdImpl
public class EnumSerializer extends ScalarSerializerBase<Enum<?>>
{
    protected final EnumValues _values;
    
    public EnumSerializer(final EnumValues values) {
        super(Enum.class, false);
        this._values = values;
    }
    
    public static EnumSerializer construct(final Class<Enum<?>> clazz, final SerializationConfig serializationConfig, final BasicBeanDescription basicBeanDescription) {
        final AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        EnumValues enumValues;
        if (serializationConfig.isEnabled(SerializationConfig.Feature.WRITE_ENUMS_USING_TO_STRING)) {
            enumValues = EnumValues.constructFromToString(clazz, annotationIntrospector);
        }
        else {
            enumValues = EnumValues.constructFromName(clazz, annotationIntrospector);
        }
        return new EnumSerializer(enumValues);
    }
    
    public EnumValues getEnumValues() {
        return this._values;
    }
    
    @Override
    public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
        if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_ENUMS_USING_INDEX)) {
            return this.createSchemaNode("integer", true);
        }
        final ObjectNode schemaNode = this.createSchemaNode("string", true);
        if (type != null && serializerProvider.constructType(type).isEnumType()) {
            final ArrayNode putArray = schemaNode.putArray("enum");
            final Iterator<SerializedString> iterator = this._values.values().iterator();
            while (iterator.hasNext()) {
                putArray.add(iterator.next().getValue());
            }
        }
        return schemaNode;
    }
    
    @Override
    public final void serialize(final Enum<?> enum1, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (serializerProvider.isEnabled(SerializationConfig.Feature.WRITE_ENUMS_USING_INDEX)) {
            jsonGenerator.writeNumber(enum1.ordinal());
            return;
        }
        jsonGenerator.writeString(this._values.serializedValueFor(enum1));
    }
}

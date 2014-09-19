package com.flurry.org.apache.avro.io.parsing;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.io.*;
import java.io.*;
import java.util.*;

public class ResolvingGrammarGenerator extends ValidatingGrammarGenerator
{
    private static EncoderFactory factory;
    
    static /* synthetic */ int[] $SWITCH_TABLE$org$apache$avro$Schema$Type() {
        final int[] $switch_TABLE$org$apache$avro$Schema$Type = ResolvingGrammarGenerator.$SWITCH_TABLE$org$apache$avro$Schema$Type;
        if ($switch_TABLE$org$apache$avro$Schema$Type != null) {
            return $switch_TABLE$org$apache$avro$Schema$Type;
        }
        final int[] $switch_TABLE$org$apache$avro$Schema$Type2 = new int[Schema.Type.values().length];
        while (true) {
            try {
                $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.ARRAY.ordinal()] = 3;
                try {
                    $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.BOOLEAN.ordinal()] = 13;
                    try {
                        $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.BYTES.ordinal()] = 8;
                        try {
                            $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.DOUBLE.ordinal()] = 12;
                            try {
                                $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.ENUM.ordinal()] = 2;
                                try {
                                    $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.FIXED.ordinal()] = 6;
                                    try {
                                        $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.FLOAT.ordinal()] = 11;
                                        try {
                                            $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.INT.ordinal()] = 9;
                                            try {
                                                $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.LONG.ordinal()] = 10;
                                                try {
                                                    $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.MAP.ordinal()] = 4;
                                                    try {
                                                        $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.NULL.ordinal()] = 14;
                                                        try {
                                                            $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.RECORD.ordinal()] = 1;
                                                            try {
                                                                $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.STRING.ordinal()] = 7;
                                                                try {
                                                                    $switch_TABLE$org$apache$avro$Schema$Type2[Schema.Type.UNION.ordinal()] = 5;
                                                                    return ResolvingGrammarGenerator.$SWITCH_TABLE$org$apache$avro$Schema$Type = $switch_TABLE$org$apache$avro$Schema$Type2;
                                                                }
                                                                catch (NoSuchFieldError noSuchFieldError) {}
                                                            }
                                                            catch (NoSuchFieldError noSuchFieldError2) {}
                                                        }
                                                        catch (NoSuchFieldError noSuchFieldError3) {}
                                                    }
                                                    catch (NoSuchFieldError noSuchFieldError4) {}
                                                }
                                                catch (NoSuchFieldError noSuchFieldError5) {}
                                            }
                                            catch (NoSuchFieldError noSuchFieldError6) {}
                                        }
                                        catch (NoSuchFieldError noSuchFieldError7) {}
                                    }
                                    catch (NoSuchFieldError noSuchFieldError8) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError9) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError10) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError11) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError12) {}
                }
                catch (NoSuchFieldError noSuchFieldError13) {}
            }
            catch (NoSuchFieldError noSuchFieldError14) {
                continue;
            }
            break;
        }
    }
    
    static {
        ResolvingGrammarGenerator.factory = new EncoderFactory().configureBufferSize(32);
    }
    
    private static int bestBranch(final Schema schema, final Schema schema2) {
        final Schema.Type type = schema2.getType();
        int n = 0;
        for (final Schema schema3 : schema.getTypes()) {
            if (type == schema3.getType()) {
                if (type != Schema.Type.RECORD && type != Schema.Type.ENUM && type != Schema.Type.FIXED) {
                    return n;
                }
                final String fullName = schema2.getFullName();
                final String fullName2 = schema3.getFullName();
                if ((fullName != null && fullName.equals(fullName2)) || (fullName == fullName2 && type == Schema.Type.RECORD)) {
                    return n;
                }
            }
            ++n;
        }
        int n2 = 0;
        for (final Schema schema4 : schema.getTypes()) {
            Label_0196: {
                switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[type.ordinal()]) {
                    case 9: {
                        switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[schema4.getType().ordinal()]) {
                            default: {
                                break Label_0196;
                            }
                            case 10:
                            case 12: {
                                return n2;
                            }
                        }
                        break;
                    }
                    case 10:
                    case 11: {
                        switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[schema4.getType().ordinal()]) {
                            default: {
                                break Label_0196;
                            }
                            case 12: {
                                return n2;
                            }
                        }
                        break;
                    }
                }
            }
            ++n2;
        }
        return -1;
    }
    
    public static void encode(final Encoder encoder, final Schema schema, final JsonNode obj) throws IOException {
        switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[schema.getType().ordinal()]) {
            case 1: {
                for (final Schema.Field field : schema.getFields()) {
                    final String name = field.name();
                    JsonNode jsonNode = obj.get(name);
                    if (jsonNode == null) {
                        jsonNode = field.defaultValue();
                    }
                    if (jsonNode == null) {
                        throw new AvroTypeException("No default value for: " + name);
                    }
                    encode(encoder, field.schema(), jsonNode);
                }
                break;
            }
            case 2: {
                encoder.writeEnum(schema.getEnumOrdinal(obj.getTextValue()));
            }
            case 3: {
                encoder.writeArrayStart();
                encoder.setItemCount(obj.size());
                final Schema elementType = schema.getElementType();
                for (final JsonNode jsonNode2 : obj) {
                    encoder.startItem();
                    encode(encoder, elementType, jsonNode2);
                }
                encoder.writeArrayEnd();
            }
            case 4: {
                encoder.writeMapStart();
                encoder.setItemCount(obj.size());
                final Schema valueType = schema.getValueType();
                final Iterator<String> fieldNames = obj.getFieldNames();
                while (fieldNames.hasNext()) {
                    encoder.startItem();
                    final String s = fieldNames.next();
                    encoder.writeString(s);
                    encode(encoder, valueType, obj.get(s));
                }
                encoder.writeMapEnd();
            }
            case 5: {
                encoder.writeIndex(0);
                encode(encoder, schema.getTypes().get(0), obj);
            }
            case 6: {
                if (!obj.isTextual()) {
                    throw new AvroTypeException("Non-string default value for fixed: " + obj);
                }
                byte[] bytes = obj.getTextValue().getBytes("ISO-8859-1");
                if (bytes.length != schema.getFixedSize()) {
                    final byte[] array = new byte[schema.getFixedSize()];
                    int n;
                    if (schema.getFixedSize() > bytes.length) {
                        n = bytes.length;
                    }
                    else {
                        n = schema.getFixedSize();
                    }
                    System.arraycopy(bytes, 0, array, 0, n);
                    bytes = array;
                }
                encoder.writeFixed(bytes);
            }
            case 7: {
                if (!obj.isTextual()) {
                    throw new AvroTypeException("Non-string default value for string: " + obj);
                }
                encoder.writeString(obj.getTextValue());
            }
            case 8: {
                if (!obj.isTextual()) {
                    throw new AvroTypeException("Non-string default value for bytes: " + obj);
                }
                encoder.writeBytes(obj.getTextValue().getBytes("ISO-8859-1"));
            }
            case 9: {
                if (!obj.isNumber()) {
                    throw new AvroTypeException("Non-numeric default value for int: " + obj);
                }
                encoder.writeInt(obj.getIntValue());
            }
            case 10: {
                if (!obj.isNumber()) {
                    throw new AvroTypeException("Non-numeric default value for long: " + obj);
                }
                encoder.writeLong(obj.getLongValue());
            }
            case 11: {
                if (!obj.isNumber()) {
                    throw new AvroTypeException("Non-numeric default value for float: " + obj);
                }
                encoder.writeFloat((float)obj.getDoubleValue());
            }
            case 12: {
                if (!obj.isNumber()) {
                    throw new AvroTypeException("Non-numeric default value for double: " + obj);
                }
                encoder.writeDouble(obj.getDoubleValue());
            }
            case 13: {
                if (!obj.isBoolean()) {
                    throw new AvroTypeException("Non-boolean default for boolean: " + obj);
                }
                encoder.writeBoolean(obj.getBooleanValue());
            }
            case 14: {
                if (!obj.isNull()) {
                    throw new AvroTypeException("Non-null default value for null type: " + obj);
                }
                encoder.writeNull();
            }
        }
    }
    
    private static byte[] getBinary(final Schema schema, final JsonNode jsonNode) throws IOException {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final BinaryEncoder binaryEncoder = ResolvingGrammarGenerator.factory.binaryEncoder(byteArrayOutputStream, null);
        encode(binaryEncoder, schema, jsonNode);
        binaryEncoder.flush();
        return byteArrayOutputStream.toByteArray();
    }
    
    private static Symbol mkEnumAdjust(final List<String> list, final List<String> list2) {
        final Object[] array = new Object[list.size()];
        for (int i = 0; i < array.length; ++i) {
            final int index = list2.indexOf(list.get(i));
            Serializable string;
            if (index == -1) {
                string = "No match for " + list.get(i);
            }
            else {
                string = new Integer(index);
            }
            array[i] = string;
        }
        return new Symbol.EnumAdjustAction(list2.size(), array);
    }
    
    private Symbol resolveRecords(final Schema schema, final Schema schema2, final Map<LitS, Symbol> map) throws IOException {
        final LitS2 litS2 = new LitS2(schema, schema2);
        Symbol seq = map.get(litS2);
        if (seq == null) {
            final List<Schema.Field> fields = schema.getFields();
            final List<Schema.Field> fields2 = schema2.getFields();
            final Schema.Field[] array = new Schema.Field[fields2.size()];
            int n = 0;
            int n2 = 1 + fields.size();
            final Iterator<Schema.Field> iterator = fields.iterator();
            while (iterator.hasNext()) {
                final Schema.Field field = schema2.getField(((Schema.Field)iterator.next()).name());
                if (field != null) {
                    final int n3 = n + 1;
                    array[n] = field;
                    n = n3;
                }
            }
            for (final Schema.Field field2 : fields2) {
                if (schema.getField(field2.name()) == null) {
                    if (field2.defaultValue() == null) {
                        final Symbol error = Symbol.error("Found " + schema.toString(true) + ", expecting " + schema2.toString(true));
                        map.put(litS2, error);
                        return error;
                    }
                    final int n4 = n + 1;
                    array[n] = field2;
                    n2 += 3;
                    n = n4;
                }
            }
            final Symbol[] array2 = new Symbol[n2];
            int n5 = n2 - 1;
            array2[n5] = new Symbol.FieldOrderAction(array);
            seq = Symbol.seq(array2);
            map.put(litS2, seq);
            for (final Schema.Field field3 : fields) {
                final Schema.Field field4 = schema2.getField(field3.name());
                if (field4 == null) {
                    --n5;
                    array2[n5] = new Symbol.SkipAction(this.generate(field3.schema(), field3.schema(), map));
                }
                else {
                    --n5;
                    array2[n5] = this.generate(field3.schema(), field4.schema(), map);
                }
            }
            for (final Schema.Field field5 : fields2) {
                if (schema.getField(field5.name()) == null) {
                    final byte[] binary = getBinary(field5.schema(), field5.defaultValue());
                    final int n6 = n5 - 1;
                    array2[n6] = new Symbol.DefaultStartAction(binary);
                    final int n7 = n6 - 1;
                    array2[n7] = this.generate(field5.schema(), field5.schema(), map);
                    n5 = n7 - 1;
                    array2[n5] = Symbol.DEFAULT_END_ACTION;
                }
            }
        }
        return seq;
    }
    
    private Symbol resolveUnion(final Schema schema, final Schema schema2, final Map<LitS, Symbol> map) throws IOException {
        final List<Schema> types = schema.getTypes();
        final int size = types.size();
        final Symbol[] array = new Symbol[size];
        final String[] array2 = new String[size];
        int n = 0;
        for (final Schema schema3 : types) {
            array[n] = this.generate(schema3, schema2, map);
            array2[n] = schema3.getFullName();
            ++n;
        }
        return Symbol.seq(Symbol.alt(array, array2), new Symbol.WriterUnionAction());
    }
    
    public final Symbol generate(final Schema schema, final Schema schema2) throws IOException {
        return Symbol.root(this.generate(schema, schema2, new HashMap<LitS, Symbol>()));
    }
    
    public Symbol generate(final Schema schema, final Schema schema2, final Map<LitS, Symbol> map) throws IOException {
        final Schema.Type type = schema.getType();
        final Schema.Type type2 = schema2.getType();
        Label_0560: {
            if (type == type2) {
                switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[type.ordinal()]) {
                    default: {
                        throw new AvroTypeException("Unkown type for schema: " + type);
                    }
                    case 14: {
                        return Symbol.NULL;
                    }
                    case 13: {
                        return Symbol.BOOLEAN;
                    }
                    case 9: {
                        return Symbol.INT;
                    }
                    case 10: {
                        return Symbol.LONG;
                    }
                    case 11: {
                        return Symbol.FLOAT;
                    }
                    case 12: {
                        return Symbol.DOUBLE;
                    }
                    case 7: {
                        return Symbol.STRING;
                    }
                    case 8: {
                        return Symbol.BYTES;
                    }
                    case 6: {
                        if (schema.getFullName().equals(schema2.getFullName()) && schema.getFixedSize() == schema2.getFixedSize()) {
                            return Symbol.seq(new Symbol.IntCheckAction(schema.getFixedSize()), Symbol.FIXED);
                        }
                        break;
                    }
                    case 2: {
                        if (schema.getFullName() == null || schema.getFullName().equals(schema2.getFullName())) {
                            return Symbol.seq(mkEnumAdjust(schema.getEnumSymbols(), schema2.getEnumSymbols()), Symbol.ENUM);
                        }
                        break;
                    }
                    case 3: {
                        return Symbol.seq(Symbol.repeat(Symbol.ARRAY_END, this.generate(schema.getElementType(), schema2.getElementType(), map)), Symbol.ARRAY_START);
                    }
                    case 4: {
                        return Symbol.seq(Symbol.repeat(Symbol.MAP_END, this.generate(schema.getValueType(), schema2.getValueType(), map), Symbol.STRING), Symbol.MAP_START);
                    }
                    case 1: {
                        return this.resolveRecords(schema, schema2, map);
                    }
                    case 5: {
                        return this.resolveUnion(schema, schema2, map);
                    }
                }
            }
            else {
                if (type == Schema.Type.UNION) {
                    return this.resolveUnion(schema, schema2, map);
                }
                switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[type2.ordinal()]) {
                    default: {
                        throw new RuntimeException("Unexpected schema type: " + type2);
                    }
                    case 10: {
                        switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[type.ordinal()]) {
                            default: {
                                break Label_0560;
                            }
                            case 9: {
                                return Symbol.resolve(super.generate(schema, map), Symbol.LONG);
                            }
                        }
                        break;
                    }
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 7:
                    case 8:
                    case 9:
                    case 13:
                    case 14: {
                        break;
                    }
                    case 11: {
                        switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[type.ordinal()]) {
                            default: {
                                break Label_0560;
                            }
                            case 9:
                            case 10: {
                                return Symbol.resolve(super.generate(schema, map), Symbol.FLOAT);
                            }
                        }
                        break;
                    }
                    case 12: {
                        switch ($SWITCH_TABLE$org$apache$avro$Schema$Type()[type.ordinal()]) {
                            default: {
                                break Label_0560;
                            }
                            case 9:
                            case 10:
                            case 11: {
                                return Symbol.resolve(super.generate(schema, map), Symbol.DOUBLE);
                            }
                        }
                        break;
                    }
                    case 5: {
                        final int bestBranch = bestBranch(schema2, schema);
                        if (bestBranch >= 0) {
                            return Symbol.seq(new Symbol.UnionAdjustAction(bestBranch, this.generate(schema, schema2.getTypes().get(bestBranch), map)), Symbol.UNION);
                        }
                        break;
                    }
                }
            }
        }
        return Symbol.error("Found " + schema.toString(true) + ", expecting " + schema2.toString(true));
    }
    
    static class LitS2 extends LitS
    {
        public Schema expected;
        
        public LitS2(final Schema schema, final Schema expected) {
            super(schema);
            this.expected = expected;
        }
        
        @Override
        public boolean equals(final Object o) {
            if (!(o instanceof LitS2)) {
                return false;
            }
            final LitS2 litS2 = (LitS2)o;
            return this.actual == litS2.actual && this.expected == litS2.expected;
        }
        
        @Override
        public int hashCode() {
            return super.hashCode() + this.expected.hashCode();
        }
    }
}

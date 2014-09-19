package com.flurry.org.apache.avro.io.parsing;

import com.flurry.org.apache.avro.*;
import java.util.*;

public class JsonGrammarGenerator extends ValidatingGrammarGenerator
{
    @Override
    public Symbol generate(final Schema schema) {
        return Symbol.root(this.generate(schema, new HashMap<LitS, Symbol>()));
    }
    
    @Override
    public Symbol generate(final Schema schema, final Map<LitS, Symbol> map) {
        switch (schema.getType()) {
            default: {
                throw new RuntimeException("Unexpected schema type");
            }
            case NULL:
            case BOOLEAN:
            case INT:
            case LONG:
            case FLOAT:
            case DOUBLE:
            case STRING:
            case BYTES:
            case FIXED:
            case UNION: {
                return super.generate(schema, map);
            }
            case ENUM: {
                return Symbol.seq(new Symbol.EnumLabelsAction(schema.getEnumSymbols()), Symbol.ENUM);
            }
            case ARRAY: {
                return Symbol.seq(Symbol.repeat(Symbol.ARRAY_END, Symbol.ITEM_END, this.generate(schema.getElementType(), map)), Symbol.ARRAY_START);
            }
            case MAP: {
                return Symbol.seq(Symbol.repeat(Symbol.MAP_END, Symbol.ITEM_END, this.generate(schema.getValueType(), map), Symbol.MAP_KEY_MARKER, Symbol.STRING), Symbol.MAP_START);
            }
            case RECORD: {
                final LitS litS = new LitS(schema);
                Symbol seq = map.get(litS);
                if (seq == null) {
                    final Symbol[] array = new Symbol[2 + 3 * schema.getFields().size()];
                    seq = Symbol.seq(array);
                    map.put(litS, seq);
                    final int length = array.length;
                    int n = 0;
                    int n2 = length - 1;
                    array[n2] = Symbol.RECORD_START;
                    for (final Schema.Field field : schema.getFields()) {
                        final int n3 = n2 - 1;
                        array[n3] = new Symbol.FieldAdjustAction(n, field.name());
                        final int n4 = n3 - 1;
                        array[n4] = this.generate(field.schema(), map);
                        n2 = n4 - 1;
                        array[n2] = Symbol.FIELD_END;
                        ++n;
                    }
                    array[n2 - 1] = Symbol.RECORD_END;
                }
                return seq;
            }
        }
    }
}

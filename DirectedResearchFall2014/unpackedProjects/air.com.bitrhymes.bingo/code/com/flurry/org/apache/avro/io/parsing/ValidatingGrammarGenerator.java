package com.flurry.org.apache.avro.io.parsing;

import com.flurry.org.apache.avro.*;
import java.util.*;

public class ValidatingGrammarGenerator
{
    public Symbol generate(final Schema schema) {
        return Symbol.root(this.generate(schema, new HashMap<LitS, Symbol>()));
    }
    
    public Symbol generate(final Schema schema, final Map<LitS, Symbol> map) {
        switch (schema.getType()) {
            default: {
                throw new RuntimeException("Unexpected schema type");
            }
            case NULL: {
                return Symbol.NULL;
            }
            case BOOLEAN: {
                return Symbol.BOOLEAN;
            }
            case INT: {
                return Symbol.INT;
            }
            case LONG: {
                return Symbol.LONG;
            }
            case FLOAT: {
                return Symbol.FLOAT;
            }
            case DOUBLE: {
                return Symbol.DOUBLE;
            }
            case STRING: {
                return Symbol.STRING;
            }
            case BYTES: {
                return Symbol.BYTES;
            }
            case FIXED: {
                return Symbol.seq(new Symbol.IntCheckAction(schema.getFixedSize()), Symbol.FIXED);
            }
            case ENUM: {
                return Symbol.seq(new Symbol.IntCheckAction(schema.getEnumSymbols().size()), Symbol.ENUM);
            }
            case ARRAY: {
                return Symbol.seq(Symbol.repeat(Symbol.ARRAY_END, this.generate(schema.getElementType(), map)), Symbol.ARRAY_START);
            }
            case MAP: {
                return Symbol.seq(Symbol.repeat(Symbol.MAP_END, this.generate(schema.getValueType(), map), Symbol.STRING), Symbol.MAP_START);
            }
            case RECORD: {
                final LitS litS = new LitS(schema);
                Symbol seq = map.get(litS);
                if (seq == null) {
                    final Symbol[] array = new Symbol[schema.getFields().size()];
                    seq = Symbol.seq(array);
                    map.put(litS, seq);
                    int length = array.length;
                    for (final Schema.Field field : schema.getFields()) {
                        --length;
                        array[length] = this.generate(field.schema(), map);
                    }
                }
                return seq;
            }
            case UNION: {
                final List<Schema> types = schema.getTypes();
                final Symbol[] array2 = new Symbol[types.size()];
                final String[] array3 = new String[types.size()];
                int n = 0;
                for (final Schema schema2 : schema.getTypes()) {
                    array2[n] = this.generate(schema2, map);
                    array3[n] = schema2.getFullName();
                    ++n;
                }
                return Symbol.seq(Symbol.alt(array2, array3), Symbol.UNION);
            }
        }
    }
    
    static class LitS
    {
        public final Schema actual;
        
        public LitS(final Schema actual) {
            super();
            this.actual = actual;
        }
        
        @Override
        public boolean equals(final Object o) {
            return o instanceof LitS && this.actual == ((LitS)o).actual;
        }
        
        @Override
        public int hashCode() {
            return this.actual.hashCode();
        }
    }
}

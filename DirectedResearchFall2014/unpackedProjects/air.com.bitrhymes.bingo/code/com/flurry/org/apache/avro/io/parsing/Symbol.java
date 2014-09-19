package com.flurry.org.apache.avro.io.parsing;

import com.flurry.org.apache.avro.*;
import java.util.*;

public abstract class Symbol
{
    public static final Symbol ARRAY_END;
    public static final Symbol ARRAY_START;
    public static final Symbol BOOLEAN;
    public static final Symbol BYTES;
    public static final Symbol DEFAULT_END_ACTION;
    public static final Symbol DOUBLE;
    public static final Symbol ENUM;
    public static final Symbol FIELD_ACTION;
    public static final Symbol FIELD_END;
    public static final Symbol FIXED;
    public static final Symbol FLOAT;
    public static final Symbol INT;
    public static final Symbol ITEM_END;
    public static final Symbol LONG;
    public static final Symbol MAP_END;
    public static final Symbol MAP_KEY_MARKER;
    public static final Symbol MAP_START;
    public static final Symbol NULL;
    public static final Symbol RECORD_END;
    public static final Symbol RECORD_START;
    public static final Symbol STRING;
    public static final Symbol UNION;
    public static final Symbol UNION_END;
    public final Kind kind;
    public final Symbol[] production;
    
    static {
        NULL = new Terminal("null");
        BOOLEAN = new Terminal("boolean");
        INT = new Terminal("int");
        LONG = new Terminal("long");
        FLOAT = new Terminal("float");
        DOUBLE = new Terminal("double");
        STRING = new Terminal("string");
        BYTES = new Terminal("bytes");
        FIXED = new Terminal("fixed");
        ENUM = new Terminal("enum");
        UNION = new Terminal("union");
        ARRAY_START = new Terminal("array-start");
        ARRAY_END = new Terminal("array-end");
        MAP_START = new Terminal("map-start");
        MAP_END = new Terminal("map-end");
        ITEM_END = new Terminal("item-end");
        FIELD_ACTION = new Terminal("field-action");
        RECORD_START = new ImplicitAction(false);
        RECORD_END = new ImplicitAction(true);
        UNION_END = new ImplicitAction(true);
        FIELD_END = new ImplicitAction(true);
        DEFAULT_END_ACTION = new ImplicitAction(true);
        MAP_KEY_MARKER = new Terminal("map-key-marker");
    }
    
    protected Symbol(final Kind kind) {
        this(kind, null);
    }
    
    protected Symbol(final Kind kind, final Symbol[] production) {
        super();
        this.production = production;
        this.kind = kind;
    }
    
    static Symbol alt(final Symbol[] array, final String[] array2) {
        return new Alternative(array, array2);
    }
    
    static Symbol error(final String s) {
        return new ErrorAction(s);
    }
    
    static void flatten(final Symbol[] array, final int n, final Symbol[] array2, final int n2, final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
        int i = n;
        int n3 = n2;
        while (i < array.length) {
            final Symbol flatten = array[i].flatten(map, map2);
            if (flatten instanceof Sequence) {
                final Symbol[] production = flatten.production;
                final List<Fixup> list = map2.get(flatten);
                if (list == null) {
                    System.arraycopy(production, 0, array2, n3, production.length);
                }
                else {
                    list.add(new Fixup(array2, n3));
                }
                n3 += production.length;
            }
            else {
                final int n4 = n3 + 1;
                array2[n3] = flatten;
                n3 = n4;
            }
            ++i;
        }
    }
    
    protected static int flattenedSize(final Symbol[] array, final int n) {
        int n2 = 0;
        for (int i = n; i < array.length; ++i) {
            if (array[i] instanceof Sequence) {
                n2 += ((Sequence)array[i]).flattenedSize();
            }
            else {
                ++n2;
            }
        }
        return n2;
    }
    
    static Symbol repeat(final Symbol symbol, final Symbol... array) {
        return new Repeater(symbol, array);
    }
    
    static Symbol resolve(final Symbol symbol, final Symbol symbol2) {
        return new ResolvingAction(symbol, symbol2);
    }
    
    static Symbol root(final Symbol... array) {
        return new Root(array);
    }
    
    static Symbol seq(final Symbol... array) {
        return new Sequence(array);
    }
    
    public Symbol flatten(final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
        return this;
    }
    
    public int flattenedSize() {
        return 1;
    }
    
    public static class Alternative extends Symbol
    {
        public final String[] labels;
        public final Symbol[] symbols;
        
        private Alternative(final Symbol[] symbols, final String[] labels) {
            super(Kind.ALTERNATIVE);
            this.symbols = symbols;
            this.labels = labels;
        }
        
        public int findLabel(final String s) {
            if (s != null) {
                for (int i = 0; i < this.labels.length; ++i) {
                    if (s.equals(this.labels[i])) {
                        return i;
                    }
                }
            }
            return -1;
        }
        
        @Override
        public Alternative flatten(final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
            final Symbol[] array = new Symbol[this.symbols.length];
            for (int i = 0; i < array.length; ++i) {
                array[i] = this.symbols[i].flatten(map, map2);
            }
            return new Alternative(array, this.labels);
        }
        
        public String getLabel(final int n) {
            return this.labels[n];
        }
        
        public Symbol getSymbol(final int n) {
            return this.symbols[n];
        }
        
        public int size() {
            return this.symbols.length;
        }
    }
    
    public static class DefaultStartAction extends ImplicitAction
    {
        public final byte[] contents;
        
        public DefaultStartAction(final byte[] contents) {
            super();
            this.contents = contents;
        }
    }
    
    public static class EnumAdjustAction extends IntCheckAction
    {
        public final Object[] adjustments;
        
        public EnumAdjustAction(final int n, final Object[] adjustments) {
            super(n);
            this.adjustments = adjustments;
        }
    }
    
    public static class EnumLabelsAction extends IntCheckAction
    {
        public final List<String> symbols;
        
        public EnumLabelsAction(final List<String> symbols) {
            super(symbols.size());
            this.symbols = symbols;
        }
        
        public int findLabel(final String s) {
            if (s != null) {
                for (int i = 0; i < this.symbols.size(); ++i) {
                    if (s.equals(this.symbols.get(i))) {
                        return i;
                    }
                }
            }
            return -1;
        }
        
        public String getLabel(final int n) {
            return this.symbols.get(n);
        }
    }
    
    public static class ErrorAction extends ImplicitAction
    {
        public final String msg;
        
        private ErrorAction(final String msg) {
            super();
            this.msg = msg;
        }
    }
    
    public static class FieldAdjustAction extends ImplicitAction
    {
        public final String fname;
        public final int rindex;
        
        public FieldAdjustAction(final int rindex, final String fname) {
            super();
            this.rindex = rindex;
            this.fname = fname;
        }
    }
    
    public static final class FieldOrderAction extends ImplicitAction
    {
        public final Schema.Field[] fields;
        
        public FieldOrderAction(final Schema.Field[] fields) {
            super();
            this.fields = fields;
        }
    }
    
    private static class Fixup
    {
        public final int pos;
        public final Symbol[] symbols;
        
        public Fixup(final Symbol[] symbols, final int pos) {
            super();
            this.symbols = symbols;
            this.pos = pos;
        }
    }
    
    public static class ImplicitAction extends Symbol
    {
        public final boolean isTrailing;
        
        private ImplicitAction() {
            this(false);
        }
        
        private ImplicitAction(final boolean isTrailing) {
            super(Kind.IMPLICIT_ACTION);
            this.isTrailing = isTrailing;
        }
    }
    
    public static class IntCheckAction extends Symbol
    {
        public final int size;
        
        public IntCheckAction(final int size) {
            super(Kind.EXPLICIT_ACTION);
            this.size = size;
        }
    }
    
    public enum Kind
    {
        ALTERNATIVE, 
        EXPLICIT_ACTION, 
        IMPLICIT_ACTION, 
        REPEATER, 
        ROOT, 
        SEQUENCE, 
        TERMINAL;
    }
    
    public static class Repeater extends Symbol
    {
        public final Symbol end;
        
        private Repeater(final Symbol end, final Symbol... array) {
            super(Kind.REPEATER, makeProduction(array));
            this.end = end;
            this.production[0] = this;
        }
        
        private static Symbol[] makeProduction(final Symbol[] array) {
            final Symbol[] array2 = new Symbol[1 + array.length];
            System.arraycopy(array, 0, array2, 1, array.length);
            return array2;
        }
        
        @Override
        public Repeater flatten(final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
            final Repeater repeater = new Repeater(this.end, new Symbol[Symbol.flattenedSize(this.production, 1)]);
            Symbol.flatten(this.production, 1, repeater.production, 1, map, map2);
            return repeater;
        }
    }
    
    public static class ResolvingAction extends ImplicitAction
    {
        public final Symbol reader;
        public final Symbol writer;
        
        private ResolvingAction(final Symbol writer, final Symbol reader) {
            super();
            this.writer = writer;
            this.reader = reader;
        }
        
        @Override
        public ResolvingAction flatten(final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
            return new ResolvingAction(this.writer.flatten(map, map2), this.reader.flatten(map, map2));
        }
    }
    
    protected static class Root extends Symbol
    {
        private Root(final Symbol... array) {
            super(Kind.ROOT, makeProduction(array));
            this.production[0] = this;
        }
        
        private static Symbol[] makeProduction(final Symbol[] array) {
            final Symbol[] array2 = new Symbol[1 + Symbol.flattenedSize(array, 0)];
            Symbol.flatten(array, 0, array2, 1, new HashMap<Sequence, Sequence>(), new HashMap<Sequence, List<Fixup>>());
            return array2;
        }
    }
    
    protected static class Sequence extends Symbol implements Iterable<Symbol>
    {
        private Sequence(final Symbol[] array) {
            super(Kind.SEQUENCE, array);
        }
        
        @Override
        public Sequence flatten(final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
            Sequence sequence = map.get(this);
            if (sequence == null) {
                sequence = new Sequence(new Symbol[this.flattenedSize()]);
                map.put(this, sequence);
                final ArrayList<Fixup> list = new ArrayList<Fixup>();
                map2.put(sequence, list);
                Symbol.flatten(this.production, 0, sequence.production, 0, map, map2);
                for (final Fixup fixup : list) {
                    System.arraycopy(sequence.production, 0, fixup.symbols, fixup.pos, sequence.production.length);
                }
                map2.remove(sequence);
            }
            return sequence;
        }
        
        @Override
        public final int flattenedSize() {
            return Symbol.flattenedSize(this.production, 0);
        }
        
        public Symbol get(final int n) {
            return this.production[n];
        }
        
        @Override
        public Iterator<Symbol> iterator() {
            return new Iterator<Symbol>() {
                private int pos = Sequence.this.production.length;
                
                @Override
                public boolean hasNext() {
                    return this.pos > 0;
                }
                
                @Override
                public Symbol next() {
                    if (this.pos > 0) {
                        final Symbol[] production = Sequence.this.production;
                        final int pos = this.pos - 1;
                        this.pos = pos;
                        return production[pos];
                    }
                    throw new NoSuchElementException();
                }
                
                @Override
                public void remove() {
                    throw new UnsupportedOperationException();
                }
            };
        }
        
        public int size() {
            return this.production.length;
        }
    }
    
    public static class SkipAction extends ImplicitAction
    {
        public final Symbol symToSkip;
        
        public SkipAction(final Symbol symToSkip) {
            super(true);
            this.symToSkip = symToSkip;
        }
        
        @Override
        public SkipAction flatten(final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
            return new SkipAction(this.symToSkip.flatten(map, map2));
        }
    }
    
    private static class Terminal extends Symbol
    {
        private final String printName;
        
        public Terminal(final String printName) {
            super(Kind.TERMINAL);
            this.printName = printName;
        }
        
        @Override
        public String toString() {
            return this.printName;
        }
    }
    
    public static class UnionAdjustAction extends ImplicitAction
    {
        public final int rindex;
        public final Symbol symToParse;
        
        public UnionAdjustAction(final int rindex, final Symbol symToParse) {
            super();
            this.rindex = rindex;
            this.symToParse = symToParse;
        }
        
        @Override
        public UnionAdjustAction flatten(final Map<Sequence, Sequence> map, final Map<Sequence, List<Fixup>> map2) {
            return new UnionAdjustAction(this.rindex, this.symToParse.flatten(map, map2));
        }
    }
    
    public static class WriterUnionAction extends ImplicitAction
    {
    }
}

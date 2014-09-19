package com.flurry.org.codehaus.jackson.sym;

import java.util.*;
import com.flurry.org.codehaus.jackson.util.*;

public final class CharsToNameCanonicalizer
{
    protected static final int DEFAULT_TABLE_SIZE = 64;
    static final int MAX_ENTRIES_FOR_REUSE = 12000;
    protected static final int MAX_TABLE_SIZE = 65536;
    static final CharsToNameCanonicalizer sBootstrapSymbolTable;
    protected Bucket[] _buckets;
    protected final boolean _canonicalize;
    protected boolean _dirty;
    protected int _indexMask;
    protected final boolean _intern;
    protected CharsToNameCanonicalizer _parent;
    protected int _size;
    protected int _sizeThreshold;
    protected String[] _symbols;
    
    static {
        sBootstrapSymbolTable = new CharsToNameCanonicalizer();
    }
    
    private CharsToNameCanonicalizer() {
        super();
        this._canonicalize = true;
        this._intern = true;
        this._dirty = true;
        this.initTables(64);
    }
    
    private CharsToNameCanonicalizer(final CharsToNameCanonicalizer parent, final boolean canonicalize, final boolean intern, final String[] symbols, final Bucket[] buckets, final int size) {
        super();
        this._parent = parent;
        this._canonicalize = canonicalize;
        this._intern = intern;
        this._symbols = symbols;
        this._buckets = buckets;
        this._size = size;
        final int length = symbols.length;
        this._sizeThreshold = length - (length >> 2);
        this._indexMask = length - 1;
        this._dirty = false;
    }
    
    public static int calcHash(final String s) {
        int char1 = s.charAt(0);
        for (int i = 1; i < s.length(); ++i) {
            char1 = char1 * 31 + s.charAt(i);
        }
        return char1;
    }
    
    public static int calcHash(final char[] array, final int n, final int n2) {
        int n3 = array[0];
        for (int i = 1; i < n2; ++i) {
            n3 = n3 * 31 + array[i];
        }
        return n3;
    }
    
    private void copyArrays() {
        final String[] symbols = this._symbols;
        final int length = symbols.length;
        System.arraycopy(symbols, 0, this._symbols = new String[length], 0, length);
        final Bucket[] buckets = this._buckets;
        final int length2 = buckets.length;
        System.arraycopy(buckets, 0, this._buckets = new Bucket[length2], 0, length2);
    }
    
    public static CharsToNameCanonicalizer createRoot() {
        return CharsToNameCanonicalizer.sBootstrapSymbolTable.makeOrphan();
    }
    
    private void initTables(final int n) {
        this._symbols = new String[n];
        this._buckets = new Bucket[n >> 1];
        this._indexMask = n - 1;
        this._size = 0;
        this._sizeThreshold = n - (n >> 2);
    }
    
    private CharsToNameCanonicalizer makeOrphan() {
        return new CharsToNameCanonicalizer(null, true, true, this._symbols, this._buckets, this._size);
    }
    
    private void mergeChild(final CharsToNameCanonicalizer charsToNameCanonicalizer) {
        synchronized (this) {
            if (charsToNameCanonicalizer.size() > 12000) {
                this.initTables(64);
            }
            else {
                if (charsToNameCanonicalizer.size() <= this.size()) {
                    return;
                }
                this._symbols = charsToNameCanonicalizer._symbols;
                this._buckets = charsToNameCanonicalizer._buckets;
                this._size = charsToNameCanonicalizer._size;
                this._sizeThreshold = charsToNameCanonicalizer._sizeThreshold;
                this._indexMask = charsToNameCanonicalizer._indexMask;
            }
            this._dirty = false;
        }
    }
    
    private void rehash() {
        final int length = this._symbols.length;
        final int n = length + length;
        if (n > 65536) {
            this._size = 0;
            Arrays.fill(this._symbols, null);
            Arrays.fill(this._buckets, null);
            this._dirty = true;
        }
        else {
            final String[] symbols = this._symbols;
            final Bucket[] buckets = this._buckets;
            this._symbols = new String[n];
            this._buckets = new Bucket[n >> 1];
            this._indexMask = n - 1;
            this._sizeThreshold += this._sizeThreshold;
            int i = 0;
            for (final String s : symbols) {
                if (s != null) {
                    ++i;
                    final int n2 = calcHash(s) & this._indexMask;
                    if (this._symbols[n2] == null) {
                        this._symbols[n2] = s;
                    }
                    else {
                        final int n3 = n2 >> 1;
                        this._buckets[n3] = new Bucket(s, this._buckets[n3]);
                    }
                }
            }
            for (int n4 = length >> 1, k = 0; k < n4; ++k) {
                for (Bucket next = buckets[k]; next != null; next = next.getNext()) {
                    ++i;
                    final String symbol = next.getSymbol();
                    final int n5 = calcHash(symbol) & this._indexMask;
                    if (this._symbols[n5] == null) {
                        this._symbols[n5] = symbol;
                    }
                    else {
                        final int n6 = n5 >> 1;
                        this._buckets[n6] = new Bucket(symbol, this._buckets[n6]);
                    }
                }
            }
            if (i != this._size) {
                throw new Error("Internal error on SymbolTable.rehash(): had " + this._size + " entries; now have " + i + ".");
            }
        }
    }
    
    public String findSymbol(final char[] array, final int n, final int n2, final int n3) {
        if (n2 < 1) {
            return "";
        }
        if (!this._canonicalize) {
            return new String(array, n, n2);
        }
        int n4 = n3 & this._indexMask;
        final String s = this._symbols[n4];
        if (s != null) {
            if (s.length() == n2) {
                int index = 0;
                while (s.charAt(index) == array[n + index] && ++index < n2) {}
                if (index == n2) {
                    return s;
                }
            }
            final Bucket bucket = this._buckets[n4 >> 1];
            if (bucket != null) {
                final String find = bucket.find(array, n, n2);
                if (find != null) {
                    return find;
                }
            }
        }
        if (!this._dirty) {
            this.copyArrays();
            this._dirty = true;
        }
        else if (this._size >= this._sizeThreshold) {
            this.rehash();
            n4 = (calcHash(array, n, n2) & this._indexMask);
        }
        ++this._size;
        String intern = new String(array, n, n2);
        if (this._intern) {
            intern = InternCache.instance.intern(intern);
        }
        if (this._symbols[n4] == null) {
            this._symbols[n4] = intern;
        }
        else {
            final int n5 = n4 >> 1;
            this._buckets[n5] = new Bucket(intern, this._buckets[n5]);
        }
        return intern;
    }
    
    public CharsToNameCanonicalizer makeChild(final boolean b, final boolean b2) {
        synchronized (this) {
            return new CharsToNameCanonicalizer(this, b, b2, this._symbols, this._buckets, this._size);
        }
    }
    
    public boolean maybeDirty() {
        return this._dirty;
    }
    
    public void release() {
        if (this.maybeDirty() && this._parent != null) {
            this._parent.mergeChild(this);
            this._dirty = false;
        }
    }
    
    public int size() {
        return this._size;
    }
    
    static final class Bucket
    {
        private final String _symbol;
        private final Bucket mNext;
        
        public Bucket(final String symbol, final Bucket mNext) {
            super();
            this._symbol = symbol;
            this.mNext = mNext;
        }
        
        public String find(final char[] array, final int n, final int n2) {
            String s = this._symbol;
            Bucket bucket = this.mNext;
            while (true) {
                if (s.length() == n2) {
                    int index = 0;
                    while (s.charAt(index) == array[n + index] && ++index < n2) {}
                    if (index == n2) {
                        return s;
                    }
                }
                if (bucket == null) {
                    return null;
                }
                s = bucket.getSymbol();
                bucket = bucket.getNext();
            }
        }
        
        public Bucket getNext() {
            return this.mNext;
        }
        
        public String getSymbol() {
            return this._symbol;
        }
    }
}

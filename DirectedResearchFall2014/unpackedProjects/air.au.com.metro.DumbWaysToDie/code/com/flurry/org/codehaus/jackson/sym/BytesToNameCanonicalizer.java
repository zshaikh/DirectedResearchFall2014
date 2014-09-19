package com.flurry.org.codehaus.jackson.sym;

import java.util.*;
import com.flurry.org.codehaus.jackson.util.*;

public final class BytesToNameCanonicalizer
{
    protected static final int DEFAULT_TABLE_SIZE = 64;
    static final int INITIAL_COLLISION_LEN = 32;
    static final int LAST_VALID_BUCKET = 254;
    static final int MAX_ENTRIES_FOR_REUSE = 6000;
    protected static final int MAX_TABLE_SIZE = 65536;
    static final int MIN_HASH_SIZE = 16;
    private int _collCount;
    private int _collEnd;
    private Bucket[] _collList;
    private boolean _collListShared;
    private int _count;
    final boolean _intern;
    private int[] _mainHash;
    private int _mainHashMask;
    private boolean _mainHashShared;
    private Name[] _mainNames;
    private boolean _mainNamesShared;
    private transient boolean _needRehash;
    final BytesToNameCanonicalizer _parent;
    
    private BytesToNameCanonicalizer(int n, final boolean intern) {
        super();
        this._parent = null;
        this._intern = intern;
        if (n < 16) {
            n = 16;
        }
        else if ((n & n - 1) != 0x0) {
            int i;
            for (i = 16; i < n; i += i) {}
            n = i;
        }
        this.initTables(n);
    }
    
    private BytesToNameCanonicalizer(final BytesToNameCanonicalizer parent, final boolean intern) {
        super();
        this._parent = parent;
        this._intern = intern;
        this._count = parent._count;
        this._mainHashMask = parent._mainHashMask;
        this._mainHash = parent._mainHash;
        this._mainNames = parent._mainNames;
        this._collList = parent._collList;
        this._collCount = parent._collCount;
        this._collEnd = parent._collEnd;
        this._needRehash = false;
        this._mainHashShared = true;
        this._mainNamesShared = true;
        this._collListShared = true;
    }
    
    private void _addSymbol(final int n, final Name name) {
        if (this._mainHashShared) {
            this.unshareMain();
        }
        if (this._needRehash) {
            this.rehash();
        }
        ++this._count;
        final int n2 = n & this._mainHashMask;
        if (this._mainNames[n2] == null) {
            this._mainHash[n2] = n << 8;
            if (this._mainNamesShared) {
                this.unshareNames();
            }
            this._mainNames[n2] = name;
        }
        else {
            if (this._collListShared) {
                this.unshareCollision();
            }
            ++this._collCount;
            final int n3 = this._mainHash[n2];
            final int n4 = n3 & 0xFF;
            int n5;
            if (n4 == 0) {
                if (this._collEnd <= 254) {
                    n5 = this._collEnd;
                    ++this._collEnd;
                    if (n5 >= this._collList.length) {
                        this.expandCollision();
                    }
                }
                else {
                    n5 = this.findBestBucket();
                }
                this._mainHash[n2] = ((n3 & 0xFFFFFF00) | n5 + 1);
            }
            else {
                n5 = n4 - 1;
            }
            this._collList[n5] = new Bucket(name, this._collList[n5]);
        }
        final int length = this._mainHash.length;
        if (this._count > length >> 1) {
            final int n6 = length >> 2;
            if (this._count > length - n6) {
                this._needRehash = true;
            }
            else if (this._collCount >= n6) {
                this._needRehash = true;
            }
        }
    }
    
    public static final int calcHash(final int n) {
        final int n2 = n ^ n >>> 16;
        return n2 ^ n2 >>> 8;
    }
    
    public static final int calcHash(final int n, final int n2) {
        final int n3 = n2 + n * 31;
        final int n4 = n3 ^ n3 >>> 16;
        return n4 ^ n4 >>> 8;
    }
    
    public static final int calcHash(final int[] array, final int n) {
        int n2 = array[0];
        for (int i = 1; i < n; ++i) {
            n2 = n2 * 31 + array[i];
        }
        final int n3 = n2 ^ n2 >>> 16;
        return n3 ^ n3 >>> 8;
    }
    
    private static Name constructName(final int n, final String s, final int n2, final int n3) {
        if (n3 == 0) {
            return new Name1(s, n, n2);
        }
        return new Name2(s, n, n2, n3);
    }
    
    private static Name constructName(final int n, final String s, final int[] array, final int n2) {
        if (n2 < 4) {
            switch (n2) {
                case 1: {
                    return new Name1(s, n, array[0]);
                }
                case 2: {
                    return new Name2(s, n, array[0], array[1]);
                }
                case 3: {
                    return new Name3(s, n, array[0], array[1], array[2]);
                }
            }
        }
        final int[] array2 = new int[n2];
        for (int i = 0; i < n2; ++i) {
            array2[i] = array[i];
        }
        return new NameN(s, n, array2, n2);
    }
    
    public static BytesToNameCanonicalizer createRoot() {
        return new BytesToNameCanonicalizer(64, true);
    }
    
    private void expandCollision() {
        final Bucket[] collList = this._collList;
        final int length = collList.length;
        System.arraycopy(collList, 0, this._collList = new Bucket[length + length], 0, length);
    }
    
    private int findBestBucket() {
        final Bucket[] collList = this._collList;
        int n = Integer.MAX_VALUE;
        int n2 = -1;
        for (int i = 0; i < this._collEnd; ++i) {
            final int length = collList[i].length();
            if (length < n) {
                if (length == 1) {
                    return i;
                }
                n = length;
                n2 = i;
            }
        }
        return n2;
    }
    
    public static Name getEmptyName() {
        return Name1.getEmptyName();
    }
    
    private void initTables(final int n) {
        this._count = 0;
        this._mainHash = new int[n];
        this._mainNames = new Name[n];
        this._mainHashShared = false;
        this._mainNamesShared = false;
        this._mainHashMask = n - 1;
        this._collListShared = true;
        this._collList = null;
        this._collEnd = 0;
        this._needRehash = false;
    }
    
    private void markAsShared() {
        this._mainHashShared = true;
        this._mainNamesShared = true;
        this._collListShared = true;
    }
    
    private void mergeChild(final BytesToNameCanonicalizer bytesToNameCanonicalizer) {
        while (true) {
            Label_0046: {
                synchronized (this) {
                    if (bytesToNameCanonicalizer._count > this._count) {
                        if (bytesToNameCanonicalizer.size() <= 6000) {
                            break Label_0046;
                        }
                        this.initTables(64);
                    }
                    return;
                }
            }
            this._count = bytesToNameCanonicalizer._count;
            this._mainHash = bytesToNameCanonicalizer._mainHash;
            this._mainNames = bytesToNameCanonicalizer._mainNames;
            this._mainHashShared = true;
            this._mainNamesShared = true;
            this._mainHashMask = bytesToNameCanonicalizer._mainHashMask;
            this._collList = bytesToNameCanonicalizer._collList;
            this._collCount = bytesToNameCanonicalizer._collCount;
            this._collEnd = bytesToNameCanonicalizer._collEnd;
        }
    }
    
    private void nukeSymbols() {
        this._count = 0;
        Arrays.fill(this._mainHash, 0);
        Arrays.fill(this._mainNames, null);
        Arrays.fill(this._collList, null);
        this._collCount = 0;
        this._collEnd = 0;
    }
    
    private void rehash() {
        this._needRehash = false;
        this._mainNamesShared = false;
        final int length = this._mainHash.length;
        final int n = length + length;
        if (n > 65536) {
            this.nukeSymbols();
        }
        else {
            this._mainHash = new int[n];
            this._mainHashMask = n - 1;
            final Name[] mainNames = this._mainNames;
            this._mainNames = new Name[n];
            int i = 0;
            for (final Name name : mainNames) {
                if (name != null) {
                    ++i;
                    final int hashCode = name.hashCode();
                    final int n2 = hashCode & this._mainHashMask;
                    this._mainNames[n2] = name;
                    this._mainHash[n2] = hashCode << 8;
                }
            }
            final int collEnd = this._collEnd;
            if (collEnd != 0) {
                this._collCount = 0;
                this._collEnd = 0;
                this._collListShared = false;
                final Bucket[] collList = this._collList;
                this._collList = new Bucket[collList.length];
                for (Bucket next : collList) {
                    while (next != null) {
                        ++i;
                        final Name name2 = next._name;
                        final int hashCode2 = name2.hashCode();
                        final int n3 = hashCode2 & this._mainHashMask;
                        final int n4 = this._mainHash[n3];
                        if (this._mainNames[n3] == null) {
                            this._mainHash[n3] = hashCode2 << 8;
                            this._mainNames[n3] = name2;
                        }
                        else {
                            ++this._collCount;
                            final int n5 = n4 & 0xFF;
                            int n6;
                            if (n5 == 0) {
                                if (this._collEnd <= 254) {
                                    n6 = this._collEnd;
                                    ++this._collEnd;
                                    if (n6 >= this._collList.length) {
                                        this.expandCollision();
                                    }
                                }
                                else {
                                    n6 = this.findBestBucket();
                                }
                                this._mainHash[n3] = ((n4 & 0xFFFFFF00) | n6 + 1);
                            }
                            else {
                                n6 = n5 - 1;
                            }
                            this._collList[n6] = new Bucket(name2, this._collList[n6]);
                        }
                        next = next._next;
                    }
                }
                if (i != this._count) {
                    throw new RuntimeException("Internal error: count after rehash " + i + "; should be " + this._count);
                }
            }
        }
    }
    
    private void unshareCollision() {
        final Bucket[] collList = this._collList;
        if (collList == null) {
            this._collList = new Bucket[32];
        }
        else {
            final int length = collList.length;
            System.arraycopy(collList, 0, this._collList = new Bucket[length], 0, length);
        }
        this._collListShared = false;
    }
    
    private void unshareMain() {
        final int[] mainHash = this._mainHash;
        final int length = this._mainHash.length;
        System.arraycopy(mainHash, 0, this._mainHash = new int[length], 0, length);
        this._mainHashShared = false;
    }
    
    private void unshareNames() {
        final Name[] mainNames = this._mainNames;
        final int length = mainNames.length;
        System.arraycopy(mainNames, 0, this._mainNames = new Name[length], 0, length);
        this._mainNamesShared = false;
    }
    
    public Name addName(String intern, final int n, final int n2) {
        if (this._intern) {
            intern = InternCache.instance.intern(intern);
        }
        int n3;
        if (n2 == 0) {
            n3 = calcHash(n);
        }
        else {
            n3 = calcHash(n, n2);
        }
        final Name constructName = constructName(n3, intern, n, n2);
        this._addSymbol(n3, constructName);
        return constructName;
    }
    
    public Name addName(String intern, final int[] array, final int n) {
        if (this._intern) {
            intern = InternCache.instance.intern(intern);
        }
        final int calcHash = calcHash(array, n);
        final Name constructName = constructName(calcHash, intern, array, n);
        this._addSymbol(calcHash, constructName);
        return constructName;
    }
    
    public Name findName(final int n) {
        final int calcHash = calcHash(n);
        final int n2 = calcHash & this._mainHashMask;
        final int n3 = this._mainHash[n2];
        if ((calcHash ^ n3 >> 8) << 8 == 0) {
            final Name name = this._mainNames[n2];
            if (name == null) {
                return null;
            }
            if (name.equals(n)) {
                return name;
            }
        }
        else if (n3 == 0) {
            return null;
        }
        final int n4 = n3 & 0xFF;
        if (n4 > 0) {
            final Bucket bucket = this._collList[n4 - 1];
            if (bucket != null) {
                return bucket.find(calcHash, n, 0);
            }
        }
        return null;
    }
    
    public Name findName(final int n, final int n2) {
        final int calcHash = calcHash(n, n2);
        final int n3 = calcHash & this._mainHashMask;
        final int n4 = this._mainHash[n3];
        if ((calcHash ^ n4 >> 8) << 8 == 0) {
            final Name name = this._mainNames[n3];
            if (name == null) {
                return null;
            }
            if (name.equals(n, n2)) {
                return name;
            }
        }
        else if (n4 == 0) {
            return null;
        }
        final int n5 = n4 & 0xFF;
        if (n5 > 0) {
            final Bucket bucket = this._collList[n5 - 1];
            if (bucket != null) {
                return bucket.find(calcHash, n, n2);
            }
        }
        return null;
    }
    
    public Name findName(final int[] array, final int n) {
        final int calcHash = calcHash(array, n);
        final int n2 = calcHash & this._mainHashMask;
        final int n3 = this._mainHash[n2];
        if ((calcHash ^ n3 >> 8) << 8 == 0) {
            final Name name = this._mainNames[n2];
            if (name == null || name.equals(array, n)) {
                return name;
            }
        }
        else if (n3 == 0) {
            return null;
        }
        final int n4 = n3 & 0xFF;
        if (n4 > 0) {
            final Bucket bucket = this._collList[n4 - 1];
            if (bucket != null) {
                return bucket.find(calcHash, array, n);
            }
        }
        return null;
    }
    
    public BytesToNameCanonicalizer makeChild(final boolean b, final boolean b2) {
        synchronized (this) {
            return new BytesToNameCanonicalizer(this, b2);
        }
    }
    
    public boolean maybeDirty() {
        return !this._mainHashShared;
    }
    
    public void release() {
        if (this.maybeDirty() && this._parent != null) {
            this._parent.mergeChild(this);
            this.markAsShared();
        }
    }
    
    public int size() {
        return this._count;
    }
    
    static final class Bucket
    {
        protected final Name _name;
        protected final Bucket _next;
        
        Bucket(final Name name, final Bucket next) {
            super();
            this._name = name;
            this._next = next;
        }
        
        public Name find(final int n, final int n2, final int n3) {
            if (this._name.hashCode() == n && this._name.equals(n2, n3)) {
                return this._name;
            }
            for (Bucket bucket = this._next; bucket != null; bucket = bucket._next) {
                final Name name = bucket._name;
                if (name.hashCode() == n && name.equals(n2, n3)) {
                    return name;
                }
            }
            return null;
        }
        
        public Name find(final int n, final int[] array, final int n2) {
            if (this._name.hashCode() == n && this._name.equals(array, n2)) {
                return this._name;
            }
            for (Bucket bucket = this._next; bucket != null; bucket = bucket._next) {
                final Name name = bucket._name;
                if (name.hashCode() == n && name.equals(array, n2)) {
                    return name;
                }
            }
            return null;
        }
        
        public int length() {
            int n = 1;
            for (Bucket bucket = this._next; bucket != null; bucket = bucket._next) {
                ++n;
            }
            return n;
        }
    }
}

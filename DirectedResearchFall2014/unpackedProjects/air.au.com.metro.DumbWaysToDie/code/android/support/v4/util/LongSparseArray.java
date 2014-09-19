package android.support.v4.util;

public class LongSparseArray<E> implements Cloneable
{
    private static final Object DELETED;
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;
    
    static {
        DELETED = new Object();
    }
    
    public LongSparseArray() {
        this(10);
    }
    
    public LongSparseArray(final int n) {
        super();
        this.mGarbage = false;
        final int idealLongArraySize = idealLongArraySize(n);
        this.mKeys = new long[idealLongArraySize];
        this.mValues = new Object[idealLongArraySize];
        this.mSize = 0;
    }
    
    private static int binarySearch(final long[] array, final int n, final int n2, final long n3) {
        int n4 = n + n2;
        int n5 = n - 1;
        while (n4 - n5 > 1) {
            final int n6 = (n4 + n5) / 2;
            if (array[n6] < n3) {
                n5 = n6;
            }
            else {
                n4 = n6;
            }
        }
        if (n4 == n + n2) {
            return -1 ^ n + n2;
        }
        if (array[n4] == n3) {
            return n4;
        }
        return ~n4;
    }
    
    private void gc() {
        final int mSize = this.mSize;
        int mSize2 = 0;
        final long[] mKeys = this.mKeys;
        final Object[] mValues = this.mValues;
        for (int i = 0; i < mSize; ++i) {
            final Object o = mValues[i];
            if (o != LongSparseArray.DELETED) {
                if (i != mSize2) {
                    mKeys[mSize2] = mKeys[i];
                    mValues[mSize2] = o;
                    mValues[i] = null;
                }
                ++mSize2;
            }
        }
        this.mGarbage = false;
        this.mSize = mSize2;
    }
    
    public static int idealByteArraySize(final int n) {
        for (int i = 4; i < 32; ++i) {
            if (n <= (1 << i) - 12) {
                return (1 << i) - 12;
            }
        }
        return n;
    }
    
    public static int idealLongArraySize(final int n) {
        return idealByteArraySize(n * 8) / 8;
    }
    
    public void append(final long n, final E e) {
        if (this.mSize != 0 && n <= this.mKeys[this.mSize - 1]) {
            this.put(n, e);
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            this.gc();
        }
        final int mSize = this.mSize;
        if (mSize >= this.mKeys.length) {
            final int idealLongArraySize = idealLongArraySize(mSize + 1);
            final long[] mKeys = new long[idealLongArraySize];
            final Object[] mValues = new Object[idealLongArraySize];
            System.arraycopy(this.mKeys, 0, mKeys, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, mValues, 0, this.mValues.length);
            this.mKeys = mKeys;
            this.mValues = mValues;
        }
        this.mKeys[mSize] = n;
        this.mValues[mSize] = e;
        this.mSize = mSize + 1;
    }
    
    public void clear() {
        final int mSize = this.mSize;
        final Object[] mValues = this.mValues;
        for (int i = 0; i < mSize; ++i) {
            mValues[i] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }
    
    public LongSparseArray<E> clone() {
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray)super.clone();
            longSparseArray.mKeys = this.mKeys.clone();
            longSparseArray.mValues = this.mValues.clone();
            return longSparseArray;
        }
        catch (CloneNotSupportedException ex) {
            return longSparseArray;
        }
    }
    
    public void delete(final long n) {
        final int binarySearch = binarySearch(this.mKeys, 0, this.mSize, n);
        if (binarySearch >= 0 && this.mValues[binarySearch] != LongSparseArray.DELETED) {
            this.mValues[binarySearch] = LongSparseArray.DELETED;
            this.mGarbage = true;
        }
    }
    
    public E get(final long n) {
        return this.get(n, null);
    }
    
    public E get(final long n, final E e) {
        final int binarySearch = binarySearch(this.mKeys, 0, this.mSize, n);
        if (binarySearch < 0 || this.mValues[binarySearch] == LongSparseArray.DELETED) {
            return e;
        }
        return (E)this.mValues[binarySearch];
    }
    
    public int indexOfKey(final long n) {
        if (this.mGarbage) {
            this.gc();
        }
        return binarySearch(this.mKeys, 0, this.mSize, n);
    }
    
    public int indexOfValue(final E e) {
        if (this.mGarbage) {
            this.gc();
        }
        for (int i = 0; i < this.mSize; ++i) {
            if (this.mValues[i] == e) {
                return i;
            }
        }
        return -1;
    }
    
    public long keyAt(final int n) {
        if (this.mGarbage) {
            this.gc();
        }
        return this.mKeys[n];
    }
    
    public void put(final long n, final E e) {
        final int binarySearch = binarySearch(this.mKeys, 0, this.mSize, n);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = e;
            return;
        }
        int n2 = ~binarySearch;
        if (n2 < this.mSize && this.mValues[n2] == LongSparseArray.DELETED) {
            this.mKeys[n2] = n;
            this.mValues[n2] = e;
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            this.gc();
            n2 = (-1 ^ binarySearch(this.mKeys, 0, this.mSize, n));
        }
        if (this.mSize >= this.mKeys.length) {
            final int idealLongArraySize = idealLongArraySize(1 + this.mSize);
            final long[] mKeys = new long[idealLongArraySize];
            final Object[] mValues = new Object[idealLongArraySize];
            System.arraycopy(this.mKeys, 0, mKeys, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, mValues, 0, this.mValues.length);
            this.mKeys = mKeys;
            this.mValues = mValues;
        }
        if (this.mSize - n2 != 0) {
            System.arraycopy(this.mKeys, n2, this.mKeys, n2 + 1, this.mSize - n2);
            System.arraycopy(this.mValues, n2, this.mValues, n2 + 1, this.mSize - n2);
        }
        this.mKeys[n2] = n;
        this.mValues[n2] = e;
        ++this.mSize;
    }
    
    public void remove(final long n) {
        this.delete(n);
    }
    
    public void removeAt(final int n) {
        if (this.mValues[n] != LongSparseArray.DELETED) {
            this.mValues[n] = LongSparseArray.DELETED;
            this.mGarbage = true;
        }
    }
    
    public void setValueAt(final int n, final E e) {
        if (this.mGarbage) {
            this.gc();
        }
        this.mValues[n] = e;
    }
    
    public int size() {
        if (this.mGarbage) {
            this.gc();
        }
        return this.mSize;
    }
    
    public E valueAt(final int n) {
        if (this.mGarbage) {
            this.gc();
        }
        return (E)this.mValues[n];
    }
}

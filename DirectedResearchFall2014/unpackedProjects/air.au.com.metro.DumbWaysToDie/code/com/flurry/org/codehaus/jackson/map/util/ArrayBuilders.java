package com.flurry.org.codehaus.jackson.map.util;

import java.lang.reflect.*;
import java.util.*;

public final class ArrayBuilders
{
    BooleanBuilder _booleanBuilder;
    ByteBuilder _byteBuilder;
    DoubleBuilder _doubleBuilder;
    FloatBuilder _floatBuilder;
    IntBuilder _intBuilder;
    LongBuilder _longBuilder;
    ShortBuilder _shortBuilder;
    
    public ArrayBuilders() {
        super();
        this._booleanBuilder = null;
        this._byteBuilder = null;
        this._shortBuilder = null;
        this._intBuilder = null;
        this._longBuilder = null;
        this._floatBuilder = null;
        this._doubleBuilder = null;
    }
    
    public static <T> List<T> addToList(List<T> list, final T t) {
        if (list == null) {
            list = new ArrayList<T>();
        }
        list.add(t);
        return list;
    }
    
    public static <T> Iterable<T> arrayAsIterable(final T[] array) {
        return new ArrayIterator<T>(array);
    }
    
    public static <T> Iterator<T> arrayAsIterator(final T[] array) {
        return new ArrayIterator<T>(array);
    }
    
    public static <T> HashSet<T> arrayToSet(final T[] array) {
        final HashSet<T> set = new HashSet<T>();
        if (array != null) {
            for (int length = array.length, i = 0; i < length; ++i) {
                set.add(array[i]);
            }
        }
        return set;
    }
    
    public static <T> T[] insertInList(final T[] array, final T t) {
        final int length = array.length;
        final Object[] array2 = (Object[])Array.newInstance(array.getClass().getComponentType(), length + 1);
        if (length > 0) {
            System.arraycopy(array, 0, array2, 1, length);
        }
        array2[0] = t;
        return (T[])array2;
    }
    
    public static <T> T[] insertInListNoDup(final T[] array, final T t) {
        final int length = array.length;
        int i = 0;
        while (i < length) {
            if (array[i] == t) {
                if (i == 0) {
                    return array;
                }
                final Object[] array2 = (Object[])Array.newInstance(array.getClass().getComponentType(), length);
                System.arraycopy(array, 0, array2, 1, i);
                array[0] = t;
                return (T[])array2;
            }
            else {
                ++i;
            }
        }
        final Object[] array3 = (Object[])Array.newInstance(array.getClass().getComponentType(), length + 1);
        if (length > 0) {
            System.arraycopy(array, 0, array3, 1, length);
        }
        array3[0] = t;
        return (T[])array3;
    }
    
    public BooleanBuilder getBooleanBuilder() {
        if (this._booleanBuilder == null) {
            this._booleanBuilder = new BooleanBuilder();
        }
        return this._booleanBuilder;
    }
    
    public ByteBuilder getByteBuilder() {
        if (this._byteBuilder == null) {
            this._byteBuilder = new ByteBuilder();
        }
        return this._byteBuilder;
    }
    
    public DoubleBuilder getDoubleBuilder() {
        if (this._doubleBuilder == null) {
            this._doubleBuilder = new DoubleBuilder();
        }
        return this._doubleBuilder;
    }
    
    public FloatBuilder getFloatBuilder() {
        if (this._floatBuilder == null) {
            this._floatBuilder = new FloatBuilder();
        }
        return this._floatBuilder;
    }
    
    public IntBuilder getIntBuilder() {
        if (this._intBuilder == null) {
            this._intBuilder = new IntBuilder();
        }
        return this._intBuilder;
    }
    
    public LongBuilder getLongBuilder() {
        if (this._longBuilder == null) {
            this._longBuilder = new LongBuilder();
        }
        return this._longBuilder;
    }
    
    public ShortBuilder getShortBuilder() {
        if (this._shortBuilder == null) {
            this._shortBuilder = new ShortBuilder();
        }
        return this._shortBuilder;
    }
    
    private static final class ArrayIterator<T> implements Iterator<T>, Iterable<T>
    {
        private final T[] _array;
        private int _index;
        
        public ArrayIterator(final T[] array) {
            super();
            this._array = array;
            this._index = 0;
        }
        
        @Override
        public boolean hasNext() {
            return this._index < this._array.length;
        }
        
        @Override
        public Iterator<T> iterator() {
            return this;
        }
        
        @Override
        public T next() {
            if (this._index >= this._array.length) {
                throw new NoSuchElementException();
            }
            return (T)this._array[this._index++];
        }
        
        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
    
    public static final class BooleanBuilder extends PrimitiveArrayBuilder<boolean[]>
    {
        public final boolean[] _constructArray(final int n) {
            return new boolean[n];
        }
    }
    
    public static final class ByteBuilder extends PrimitiveArrayBuilder<byte[]>
    {
        public final byte[] _constructArray(final int n) {
            return new byte[n];
        }
    }
    
    public static final class DoubleBuilder extends PrimitiveArrayBuilder<double[]>
    {
        public final double[] _constructArray(final int n) {
            return new double[n];
        }
    }
    
    public static final class FloatBuilder extends PrimitiveArrayBuilder<float[]>
    {
        public final float[] _constructArray(final int n) {
            return new float[n];
        }
    }
    
    public static final class IntBuilder extends PrimitiveArrayBuilder<int[]>
    {
        public final int[] _constructArray(final int n) {
            return new int[n];
        }
    }
    
    public static final class LongBuilder extends PrimitiveArrayBuilder<long[]>
    {
        public final long[] _constructArray(final int n) {
            return new long[n];
        }
    }
    
    public static final class ShortBuilder extends PrimitiveArrayBuilder<short[]>
    {
        public final short[] _constructArray(final int n) {
            return new short[n];
        }
    }
}

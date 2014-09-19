package com.flurry.org.apache.avro.io;

import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.generic.*;
import java.util.*;
import java.io.*;

public class BinaryData
{
    private static final ThreadLocal<Decoders> DECODERS;
    private static final ThreadLocal<HashData> HASH_DATA;
    
    static {
        DECODERS = new ThreadLocal<Decoders>() {
            @Override
            protected Decoders initialValue() {
                return new Decoders();
            }
        };
        HASH_DATA = new ThreadLocal<HashData>() {
            @Override
            protected HashData initialValue() {
                return new HashData();
            }
        };
    }
    
    private static int compare(final Decoders decoders, final Schema schema) throws IOException {
        final BinaryDecoder access$000 = decoders.d1;
        final BinaryDecoder access$ = decoders.d2;
        switch (schema.getType()) {
            default: {
                throw new AvroRuntimeException("Unexpected schema to compare!");
            }
            case RECORD: {
                for (final Schema.Field field : schema.getFields()) {
                    if (field.order() == Schema.Field.Order.IGNORE) {
                        GenericDatumReader.skip(field.schema(), access$000);
                        GenericDatumReader.skip(field.schema(), access$);
                    }
                    else {
                        final int compare = compare(decoders, field.schema());
                        if (compare == 0) {
                            continue;
                        }
                        if (field.order() != Schema.Field.Order.DESCENDING) {
                            return compare;
                        }
                        return -compare;
                    }
                }
                return 0;
            }
            case ENUM:
            case INT: {
                final int int1 = access$000.readInt();
                final int int2 = access$.readInt();
                if (int1 == int2) {
                    return 0;
                }
                if (int1 > int2) {
                    return 1;
                }
                return -1;
            }
            case LONG: {
                final long long1 = access$000.readLong();
                final long long2 = access$.readLong();
                if (long1 == long2) {
                    return 0;
                }
                if (long1 > long2) {
                    return 1;
                }
                return -1;
            }
            case ARRAY: {
                long n = 0L;
                long n2 = 0L;
                long n3 = 0L;
                long n4 = 0L;
                long b = 0L;
                while (true) {
                    long n6;
                    long a;
                    if (n4 == 0L) {
                        long long3 = access$000.readLong();
                        if (long3 < 0L) {
                            long3 = -long3;
                            access$000.readLong();
                        }
                        final long n5 = n2 + long3;
                        n6 = long3;
                        a = n5;
                    }
                    else {
                        n6 = n4;
                        a = n2;
                    }
                    if (n3 == 0L) {
                        long long4 = access$.readLong();
                        if (long4 < 0L) {
                            long4 = -long4;
                            access$.readLong();
                        }
                        n3 = long4;
                        b += n3;
                    }
                    if (n6 == 0L || n3 == 0L) {
                        if (a == b) {
                            return 0;
                        }
                        if (a > b) {
                            return 1;
                        }
                        return -1;
                    }
                    else {
                        while (n < Math.min(a, b)) {
                            final int compare2 = compare(decoders, schema.getElementType());
                            if (compare2 != 0) {
                                return compare2;
                            }
                            ++n;
                            --n6;
                            --n3;
                        }
                        n2 = a;
                        n4 = n6;
                    }
                }
                break;
            }
            case MAP: {
                throw new AvroRuntimeException("Can't compare maps!");
            }
            case UNION: {
                final int int3 = access$000.readInt();
                final int int4 = access$.readInt();
                if (int3 == int4) {
                    return compare(decoders, schema.getTypes().get(int3));
                }
                return int3 - int4;
            }
            case FIXED: {
                final int fixedSize = schema.getFixedSize();
                final int compareBytes = compareBytes(decoders.b1.getBuf(), decoders.b1.getPos(), fixedSize, decoders.b2.getBuf(), decoders.b2.getPos(), fixedSize);
                decoders.d1.skipFixed(fixedSize);
                decoders.d2.skipFixed(fixedSize);
                return compareBytes;
            }
            case STRING:
            case BYTES: {
                final int int5 = access$000.readInt();
                final int int6 = access$.readInt();
                final int compareBytes2 = compareBytes(decoders.b1.getBuf(), decoders.b1.getPos(), int5, decoders.b2.getBuf(), decoders.b2.getPos(), int6);
                decoders.d1.skipFixed(int5);
                decoders.d2.skipFixed(int6);
                return compareBytes2;
            }
            case FLOAT: {
                final float float1 = access$000.readFloat();
                final float float2 = access$.readFloat();
                if (float1 == float2) {
                    return 0;
                }
                if (float1 > float2) {
                    return 1;
                }
                return -1;
            }
            case DOUBLE: {
                final double double1 = access$000.readDouble();
                final double double2 = access$.readDouble();
                if (double1 == double2) {
                    return 0;
                }
                if (double1 > double2) {
                    return 1;
                }
                return -1;
            }
            case BOOLEAN: {
                final boolean boolean1 = access$000.readBoolean();
                if (boolean1 == access$.readBoolean()) {
                    return 0;
                }
                if (boolean1) {
                    return 1;
                }
                return -1;
            }
            case NULL: {
                return 0;
            }
        }
    }
    
    public static int compare(final byte[] array, final int n, final int n2, final byte[] array2, final int n3, final int n4, final Schema schema) {
        final Decoders decoders = BinaryData.DECODERS.get();
        decoders.set(array, n, n2, array2, n3, n4);
        try {
            return compare(decoders, schema);
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public static int compare(final byte[] array, final int n, final byte[] array2, final int n2, final Schema schema) {
        return compare(array, n, array.length - n, array2, n2, array2.length - n2, schema);
    }
    
    public static int compareBytes(final byte[] array, final int n, final int n2, final byte[] array2, final int n3, final int n4) {
        for (int n5 = n + n2, n6 = n3 + n4, n7 = n, n8 = n3; n7 < n5 && n8 < n6; ++n7, ++n8) {
            final int n9 = 0xFF & array[n7];
            final int n10 = 0xFF & array2[n8];
            if (n9 != n10) {
                return n9 - n10;
            }
        }
        return n2 - n4;
    }
    
    public static int encodeBoolean(final boolean b, final byte[] array, final int n) {
        byte b2;
        if (b) {
            b2 = 1;
        }
        else {
            b2 = 0;
        }
        array[n] = b2;
        return 1;
    }
    
    public static int encodeDouble(final double n, final byte[] array, final int n2) {
        final long doubleToRawLongBits = Double.doubleToRawLongBits(n);
        final int n3 = (int)(doubleToRawLongBits & -1L);
        final int n4 = (int)(-1L & doubleToRawLongBits >>> 32);
        array[n2] = (byte)(n3 & 0xFF);
        array[n2 + 4] = (byte)(n4 & 0xFF);
        array[n2 + 5] = (byte)(0xFF & n4 >>> 8);
        array[n2 + 1] = (byte)(0xFF & n3 >>> 8);
        array[n2 + 2] = (byte)(0xFF & n3 >>> 16);
        array[n2 + 6] = (byte)(0xFF & n4 >>> 16);
        array[n2 + 7] = (byte)(0xFF & n4 >>> 24);
        array[n2 + 3] = (byte)(0xFF & n3 >>> 24);
        return 8;
    }
    
    public static int encodeFloat(final float n, final byte[] array, final int n2) {
        final int floatToRawIntBits = Float.floatToRawIntBits(n);
        array[n2] = (byte)(floatToRawIntBits & 0xFF);
        array[n2 + 1] = (byte)(0xFF & floatToRawIntBits >>> 8);
        array[n2 + 2] = (byte)(0xFF & floatToRawIntBits >>> 16);
        array[n2 + 3] = (byte)(0xFF & floatToRawIntBits >>> 24);
        return 4;
    }
    
    public static int encodeInt(final int n, final byte[] array, int n2) {
        int n3 = n << 1 ^ n >> 31;
        final int n4 = n2;
        Label_0131: {
            if ((n3 & 0xFFFFFF80) != 0x0) {
                int n5 = n2 + 1;
                array[n2] = (byte)(0xFF & (n3 | 0x80));
                n3 >>>= 7;
                if (n3 > 127) {
                    n2 = n5 + 1;
                    array[n5] = (byte)(0xFF & (n3 | 0x80));
                    n3 >>>= 7;
                    if (n3 <= 127) {
                        break Label_0131;
                    }
                    n5 = n2 + 1;
                    array[n2] = (byte)(0xFF & (n3 | 0x80));
                    n3 >>>= 7;
                    if (n3 > 127) {
                        n2 = n5 + 1;
                        array[n5] = (byte)(0xFF & (n3 | 0x80));
                        n3 >>>= 7;
                        break Label_0131;
                    }
                }
                n2 = n5;
            }
        }
        final int n6 = n2 + 1;
        array[n2] = (byte)n3;
        return n6 - n4;
    }
    
    public static int encodeLong(final long n, final byte[] array, int n2) {
        long n3 = n << 1 ^ n >> 63;
        final int n4 = n2;
        Label_0346: {
            if ((0xFFFFFFFFFFFFFF80L & n3) != 0x0L) {
                int n5 = n2 + 1;
                array[n2] = (byte)(0xFFL & (0x80L | n3));
                n3 >>>= 7;
                if (n3 > 127L) {
                    n2 = n5 + 1;
                    array[n5] = (byte)(0xFFL & (0x80L | n3));
                    n3 >>>= 7;
                    if (n3 <= 127L) {
                        break Label_0346;
                    }
                    n5 = n2 + 1;
                    array[n2] = (byte)(0xFFL & (0x80L | n3));
                    n3 >>>= 7;
                    if (n3 > 127L) {
                        n2 = n5 + 1;
                        array[n5] = (byte)(0xFFL & (0x80L | n3));
                        n3 >>>= 7;
                        if (n3 <= 127L) {
                            break Label_0346;
                        }
                        n5 = n2 + 1;
                        array[n2] = (byte)(0xFFL & (0x80L | n3));
                        n3 >>>= 7;
                        if (n3 > 127L) {
                            n2 = n5 + 1;
                            array[n5] = (byte)(0xFFL & (0x80L | n3));
                            n3 >>>= 7;
                            if (n3 <= 127L) {
                                break Label_0346;
                            }
                            n5 = n2 + 1;
                            array[n2] = (byte)(0xFFL & (0x80L | n3));
                            n3 >>>= 7;
                            if (n3 > 127L) {
                                n2 = n5 + 1;
                                array[n5] = (byte)(0xFFL & (0x80L | n3));
                                n3 >>>= 7;
                                if (n3 > 127L) {
                                    final int n6 = n2 + 1;
                                    array[n2] = (byte)(0xFFL & (0x80L | n3));
                                    n3 >>>= 7;
                                    n2 = n6;
                                }
                                break Label_0346;
                            }
                        }
                    }
                }
                n2 = n5;
            }
        }
        final int n7 = n2 + 1;
        array[n2] = (byte)n3;
        return n7 - n4;
    }
    
    private static int hashBytes(final int n, final HashData hashData, final int n2, final boolean b) throws IOException {
        int n3 = n;
        final byte[] buf = hashData.bytes.getBuf();
        final int pos = hashData.bytes.getPos();
        final int n4 = pos + n2;
        if (b) {
            for (int i = n4 - 1; i >= pos; --i) {
                n3 = n3 * 31 + buf[i];
            }
        }
        else {
            for (int j = pos; j < n4; ++j) {
                n3 = n3 * 31 + buf[j];
            }
        }
        hashData.decoder.skipFixed(n2);
        return n3;
    }
    
    private static int hashCode(final HashData hashData, final Schema schema) throws IOException {
        final BinaryDecoder access$400 = hashData.decoder;
        switch (schema.getType()) {
            default: {
                throw new AvroRuntimeException("Unexpected schema to hashCode!");
            }
            case RECORD: {
                int n = 1;
                for (final Schema.Field field : schema.getFields()) {
                    if (field.order() == Schema.Field.Order.IGNORE) {
                        GenericDatumReader.skip(field.schema(), access$400);
                    }
                    else {
                        n = n * 31 + hashCode(hashData, field.schema());
                    }
                }
                return n;
            }
            case ENUM:
            case INT: {
                return access$400.readInt();
            }
            case FLOAT: {
                return Float.floatToIntBits(access$400.readFloat());
            }
            case LONG: {
                final long long1 = access$400.readLong();
                return (int)(long1 ^ long1 >>> 32);
            }
            case DOUBLE: {
                final long doubleToLongBits = Double.doubleToLongBits(access$400.readDouble());
                return (int)(doubleToLongBits ^ doubleToLongBits >>> 32);
            }
            case ARRAY: {
                final Schema elementType = schema.getElementType();
                int n2 = 1;
                for (long n3 = access$400.readArrayStart(); n3 != 0L; n3 = access$400.arrayNext()) {
                    for (long n4 = 0L; n4 < n3; ++n4) {
                        n2 = n2 * 31 + hashCode(hashData, elementType);
                    }
                }
                return n2;
            }
            case MAP: {
                throw new AvroRuntimeException("Can't hashCode maps!");
            }
            case UNION: {
                return hashCode(hashData, schema.getTypes().get(access$400.readInt()));
            }
            case FIXED: {
                return hashBytes(1, hashData, schema.getFixedSize(), false);
            }
            case STRING: {
                return hashBytes(0, hashData, access$400.readInt(), false);
            }
            case BYTES: {
                return hashBytes(1, hashData, access$400.readInt(), true);
            }
            case BOOLEAN: {
                if (access$400.readBoolean()) {
                    return 1231;
                }
                return 1237;
            }
            case NULL: {
                return 0;
            }
        }
    }
    
    public static int hashCode(final byte[] array, final int n, final int n2, final Schema schema) {
        final HashData hashData = BinaryData.HASH_DATA.get();
        hashData.set(array, n, n2);
        try {
            return hashCode(hashData, schema);
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public static int skipLong(final byte[] array, final int n) {
        int n2 = n + 1;
        int n3;
        for (byte b = array[n]; (b & 0x80) != 0x0; b = array[n2], n2 = n3) {
            n3 = n2 + 1;
        }
        return n2;
    }
    
    private static class Decoders
    {
        private final BinaryDecoder.BufferAccessor b1;
        private final BinaryDecoder.BufferAccessor b2;
        private final BinaryDecoder d1;
        private final BinaryDecoder d2;
        
        public Decoders() {
            super();
            this.d1 = new BinaryDecoder(new byte[0], 0, 0);
            this.d2 = new BinaryDecoder(new byte[0], 0, 0);
            this.b1 = this.d1.getBufferAccessor();
            this.b2 = this.d2.getBufferAccessor();
        }
        
        public void set(final byte[] array, final int n, final int n2, final byte[] array2, final int n3, final int n4) {
            this.d1.configure(array, n, n2);
            this.d2.configure(array2, n3, n4);
        }
    }
    
    private static class HashData
    {
        private final BinaryDecoder.BufferAccessor bytes;
        private final BinaryDecoder decoder;
        
        public HashData() {
            super();
            this.decoder = new BinaryDecoder(new byte[0], 0, 0);
            this.bytes = this.decoder.getBufferAccessor();
        }
        
        public void set(final byte[] array, final int n, final int n2) {
            this.decoder.configure(array, n, n2);
        }
    }
}

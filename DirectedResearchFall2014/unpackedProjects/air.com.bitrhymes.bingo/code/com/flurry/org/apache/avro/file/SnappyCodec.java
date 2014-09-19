package com.flurry.org.apache.avro.file;

import java.util.zip.*;
import java.nio.*;
import org.xerial.snappy.*;
import java.io.*;

class SnappyCodec extends Codec
{
    private CRC32 crc32;
    
    private SnappyCodec() {
        super();
        this.crc32 = new CRC32();
    }
    
    @Override
    ByteBuffer compress(final ByteBuffer byteBuffer) throws IOException {
        final ByteBuffer allocate = ByteBuffer.allocate(4 + Snappy.maxCompressedLength(byteBuffer.remaining()));
        final int compress = Snappy.compress(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining(), allocate.array(), 0);
        this.crc32.reset();
        this.crc32.update(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining());
        allocate.putInt(compress, (int)this.crc32.getValue());
        allocate.limit(compress + 4);
        return allocate;
    }
    
    @Override
    ByteBuffer decompress(final ByteBuffer byteBuffer) throws IOException {
        final ByteBuffer allocate = ByteBuffer.allocate(Snappy.uncompressedLength(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining() - 4));
        final int uncompress = Snappy.uncompress(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining() - 4, allocate.array(), 0);
        allocate.limit(uncompress);
        this.crc32.reset();
        this.crc32.update(allocate.array(), 0, uncompress);
        if (byteBuffer.getInt(byteBuffer.limit() - 4) != (int)this.crc32.getValue()) {
            throw new IOException("Checksum failure");
        }
        return allocate;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || this.getClass() == o.getClass();
    }
    
    @Override
    String getName() {
        return "snappy";
    }
    
    @Override
    public int hashCode() {
        return this.getName().hashCode();
    }
    
    static class Option extends CodecFactory
    {
        @Override
        protected Codec createInstance() {
            return new SnappyCodec(null);
        }
    }
}

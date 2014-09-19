package com.flurry.android;

import java.security.*;
import java.util.zip.*;
import java.nio.*;

public class CrcMessageDigest extends MessageDigest
{
    private CRC32 crc;
    
    public CrcMessageDigest() {
        super("CRC");
        this.crc = new CRC32();
    }
    
    @Override
    protected byte[] engineDigest() {
        final long value = this.crc.getValue();
        return new byte[] { (byte)((0xFFFFFFFFFF000000L & value) >> 24), (byte)((0xFF0000L & value) >> 16), (byte)((0xFF00L & value) >> 8), (byte)(value & 0xFFL) };
    }
    
    @Override
    protected void engineReset() {
        this.crc.reset();
    }
    
    @Override
    protected void engineUpdate(final byte b) {
        this.crc.update(b);
    }
    
    @Override
    protected void engineUpdate(final byte[] b, final int off, final int len) {
        this.crc.update(b, off, len);
    }
    
    public int getChecksum() {
        return ByteBuffer.wrap(this.engineDigest()).getInt();
    }
    
    public byte[] getDigest() {
        return this.engineDigest();
    }
}

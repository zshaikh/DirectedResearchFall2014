package com.flurry.org.apache.avro.file;

import java.util.*;
import com.flurry.org.apache.avro.io.*;
import java.io.*;

public class DataFileReader<D> extends DataFileStream<D> implements FileReader<D>
{
    private long blockStart;
    private SeekableInputStream sin;
    
    public DataFileReader(final SeekableInput seekableInput, final DatumReader<D> datumReader) throws IOException {
        super(datumReader);
        this.initialize(this.sin = new SeekableInputStream(seekableInput));
        this.blockFinished();
    }
    
    protected DataFileReader(final SeekableInput seekableInput, final DatumReader<D> datumReader, final Header header) throws IOException {
        super(datumReader);
        this.initialize(this.sin = new SeekableInputStream(seekableInput), header);
    }
    
    public DataFileReader(final File file, final DatumReader<D> datumReader) throws IOException {
        this((SeekableInput)new SeekableFileInput(file), datumReader);
    }
    
    public static <D> DataFileReader<D> openReader(final SeekableInput seekableInput, final DatumReader<D> datumReader, final Header header, final boolean b) throws IOException {
        final DataFileReader<D> dataFileReader = new DataFileReader<D>(seekableInput, datumReader, header);
        if (b) {
            dataFileReader.sync(seekableInput.tell());
            return dataFileReader;
        }
        dataFileReader.seek(seekableInput.tell());
        return dataFileReader;
    }
    
    public static <D> FileReader<D> openReader(final SeekableInput seekableInput, final DatumReader<D> datumReader) throws IOException {
        if (seekableInput.length() < DataFileConstants.MAGIC.length) {
            throw new IOException("Not an Avro data file");
        }
        final byte[] array = new byte[DataFileConstants.MAGIC.length];
        seekableInput.seek(0L);
        for (int i = 0; i < array.length; i = seekableInput.read(array, i, array.length - i)) {}
        seekableInput.seek(0L);
        if (Arrays.equals(DataFileConstants.MAGIC, array)) {
            return new DataFileReader<D>(seekableInput, datumReader);
        }
        if (Arrays.equals(DataFileReader12.MAGIC, array)) {
            return new DataFileReader12<D>(seekableInput, datumReader);
        }
        throw new IOException("Not an Avro data file");
    }
    
    public static <D> FileReader<D> openReader(final File file, final DatumReader<D> datumReader) throws IOException {
        return openReader(new SeekableFileInput(file), datumReader);
    }
    
    @Override
    protected void blockFinished() throws IOException {
        this.blockStart = this.sin.tell() - this.vin.inputStream().available();
    }
    
    @Override
    public boolean pastSync(final long n) throws IOException {
        return this.blockStart >= 16L + n || this.blockStart >= this.sin.length();
    }
    
    public long previousSync() {
        return this.blockStart;
    }
    
    public void seek(final long blockStart) throws IOException {
        this.sin.seek(blockStart);
        this.vin = DecoderFactory.get().binaryDecoder(this.sin, this.vin);
        this.datumIn = null;
        this.blockRemaining = 0L;
        this.blockStart = blockStart;
    }
    
    @Override
    public void sync(final long n) throws IOException {
        this.seek(n);
        if (n == 0L && this.getMeta("avro.sync") != null) {
            this.initialize(this.sin);
            return;
        }
        InputStream inputStream;
        int n2;
        int n3;
        int read;
        byte[] syncBuffer;
        int n4;
        Label_0088_Outer:Label_0055_Outer:
        while (true) {
            while (true) {
                Label_0176: {
                    try {
                        inputStream = this.vin.inputStream();
                        this.vin.readFixed(this.syncBuffer);
                        n2 = 0;
                        break Label_0176;
                        // iftrue(Label_0128:, n3 != 16)
                        while (true) {
                            while (true) {
                                this.blockStart = 16L + (n + n2);
                                return;
                                continue Label_0088_Outer;
                            }
                            continue Label_0055_Outer;
                        }
                    }
                    // iftrue(Label_0122:, n3 < 16 && this.getHeader().sync[n3] == this.syncBuffer[n2 + n3 % 16])
                    catch (EOFException ex) {}
                    break;
                    Label_0122: {
                        ++n3;
                    }
                    continue;
                    Label_0128:
                    read = inputStream.read();
                    syncBuffer = this.syncBuffer;
                    n4 = n2 + 1;
                    try {
                        syncBuffer[n2 % 16] = (byte)read;
                        if (read == -1) {
                            break;
                        }
                        n2 = n4;
                    }
                    catch (EOFException ex2) {
                        break;
                    }
                }
                n3 = 0;
                continue;
            }
        }
        this.blockStart = this.sin.tell();
    }
    
    @Override
    public long tell() throws IOException {
        return this.sin.tell();
    }
    
    static class SeekableInputStream extends InputStream implements SeekableInput
    {
        private SeekableInput in;
        private final byte[] oneByte;
        
        SeekableInputStream(final SeekableInput in) throws IOException {
            super();
            this.oneByte = new byte[1];
            this.in = in;
        }
        
        @Override
        public int available() throws IOException {
            final long n = this.in.length() - this.in.tell();
            if (n > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int)n;
        }
        
        @Override
        public void close() throws IOException {
            this.in.close();
            super.close();
        }
        
        @Override
        public long length() throws IOException {
            return this.in.length();
        }
        
        @Override
        public int read() throws IOException {
            final int read = this.read(this.oneByte, 0, 1);
            if (read == 1) {
                return 0xFF & this.oneByte[0];
            }
            return read;
        }
        
        @Override
        public int read(final byte[] array) throws IOException {
            return this.in.read(array, 0, array.length);
        }
        
        @Override
        public int read(final byte[] array, final int n, final int n2) throws IOException {
            return this.in.read(array, n, n2);
        }
        
        @Override
        public void seek(final long lng) throws IOException {
            if (lng < 0L) {
                throw new IOException("Illegal seek: " + lng);
            }
            this.in.seek(lng);
        }
        
        @Override
        public long skip(final long n) throws IOException {
            final long tell = this.in.tell();
            final long n2 = this.in.length() - tell;
            if (n2 > n) {
                this.in.seek(n);
                return this.in.tell() - tell;
            }
            this.in.seek(n2);
            return this.in.tell() - tell;
        }
        
        @Override
        public long tell() throws IOException {
            return this.in.tell();
        }
    }
}

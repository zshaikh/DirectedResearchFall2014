package com.flurry.org.apache.avro.io;

import java.io.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class BlockingBinaryEncoder extends BufferedBinaryEncoder
{
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int STACK_STEP = 10;
    private BlockedValue[] blockStack;
    private byte[] buf;
    private byte[] headerBuffer;
    private int pos;
    private int stackTop;
    
    BlockingBinaryEncoder(final OutputStream outputStream, final int n, final int n2) {
        super(outputStream, n2);
        this.stackTop = -1;
        this.headerBuffer = new byte[12];
        this.buf = new byte[n];
        this.pos = 0;
        this.blockStack = new BlockedValue[0];
        this.expandStack();
        final BlockedValue[] blockStack = this.blockStack;
        final int stackTop = 1 + this.stackTop;
        this.stackTop = stackTop;
        final BlockedValue blockedValue = blockStack[stackTop];
        blockedValue.type = null;
        blockedValue.state = State.ROOT;
        blockedValue.lastFullItem = 0;
        blockedValue.start = 0;
        blockedValue.items = 1;
        assert this.check();
    }
    
    private boolean check() {
        assert this.buf != null;
        assert this.pos >= 0;
        assert this.pos <= this.buf.length : this.pos + " " + this.buf.length;
        assert this.blockStack != null;
        BlockedValue blockedValue = null;
        for (int i = 0; i <= this.stackTop; ++i) {
            final BlockedValue blockedValue2 = this.blockStack[i];
            blockedValue2.check(blockedValue, this.pos);
            blockedValue = blockedValue2;
        }
        return true;
    }
    
    private void compact() throws IOException {
        assert this.check();
        BlockedValue blockedValue = null;
        int i;
        for (i = 1; i <= this.stackTop; ++i) {
            blockedValue = this.blockStack[i];
            if (blockedValue.state == State.REGULAR) {
                break;
            }
        }
        assert blockedValue != null;
        super.writeFixed(this.buf, 0, blockedValue.start);
        if (1 < blockedValue.items) {
            super.writeInt(-(blockedValue.items - 1));
            super.writeInt(blockedValue.lastFullItem - blockedValue.start);
            super.writeFixed(this.buf, blockedValue.start, blockedValue.lastFullItem - blockedValue.start);
            blockedValue.start = blockedValue.lastFullItem;
            blockedValue.items = 1;
        }
        super.writeInt(1);
        BlockedValue blockedValue2;
        if (i + 1 <= this.stackTop) {
            blockedValue2 = this.blockStack[i + 1];
        }
        else {
            blockedValue2 = null;
        }
        int n;
        if (blockedValue2 == null) {
            n = this.pos;
        }
        else {
            n = blockedValue2.start;
        }
        super.writeFixed(this.buf, blockedValue.lastFullItem, n - blockedValue.lastFullItem);
        System.arraycopy(this.buf, n, this.buf, 0, this.pos - n);
        for (int j = i + 1; j <= this.stackTop; ++j) {
            final BlockedValue blockedValue3 = this.blockStack[j];
            blockedValue3.start -= n;
            blockedValue3.lastFullItem -= n;
        }
        this.pos -= n;
        assert blockedValue.items == 1;
        blockedValue.lastFullItem = 0;
        blockedValue.start = 0;
        blockedValue.state = State.OVERFLOW;
        assert this.check();
    }
    
    private void doWriteBytes(final byte[] array, final int n, final int n2) throws IOException {
        if (n2 < this.buf.length) {
            this.ensureBounds(n2);
            System.arraycopy(array, n, this.buf, this.pos, n2);
            this.pos += n2;
            return;
        }
        this.ensureBounds(this.buf.length);
        assert this.blockStack[this.stackTop].state == State.OVERFLOW;
        this.write(array, n, n2);
    }
    
    private void endBlockedValue() throws IOException {
        while (BlockingBinaryEncoder.$assertionsDisabled || this.check()) {
            final BlockedValue blockedValue = this.blockStack[this.stackTop];
            assert blockedValue.state != State.ROOT;
            if (blockedValue.state == State.OVERFLOW) {
                this.finishOverflow();
            }
            assert blockedValue.state == State.REGULAR;
            if (blockedValue.items > 0) {
                final int n = this.pos - blockedValue.start;
                if (blockedValue.start == 0 && this.blockStack[this.stackTop - 1].state != State.REGULAR) {
                    super.writeInt(-blockedValue.items);
                    super.writeInt(n);
                }
                else {
                    final int n2 = 0 + BinaryData.encodeInt(-blockedValue.items, this.headerBuffer, 0);
                    final int n3 = n2 + BinaryData.encodeInt(n, this.headerBuffer, n2);
                    if (this.buf.length < n3 + this.pos) {
                        this.compact();
                        continue;
                    }
                    this.pos += n3;
                    final int start = blockedValue.start;
                    System.arraycopy(this.buf, start, this.buf, start + n3, n);
                    System.arraycopy(this.headerBuffer, 0, this.buf, start, n3);
                }
            }
            --this.stackTop;
            this.ensureBounds(1);
            this.buf[this.pos++] = 0;
            assert this.check();
            if (this.blockStack[this.stackTop].state == State.ROOT) {
                this.flush();
            }
            return;
        }
        throw new AssertionError();
    }
    
    private void ensureBounds(final int n) throws IOException {
        while (this.buf.length < n + this.pos) {
            if (this.blockStack[this.stackTop].state == State.REGULAR) {
                this.compact();
            }
            else {
                super.writeFixed(this.buf, 0, this.pos);
                this.pos = 0;
            }
        }
    }
    
    private void expandStack() {
        final int length = this.blockStack.length;
        this.blockStack = Arrays.copyOf(this.blockStack, 10 + this.blockStack.length);
        for (int i = length; i < this.blockStack.length; ++i) {
            this.blockStack[i] = new BlockedValue();
        }
    }
    
    private void finishOverflow() throws IOException {
        final BlockedValue blockedValue = this.blockStack[this.stackTop];
        if (blockedValue.state != State.OVERFLOW) {
            throw new IllegalStateException("Not an overflow block");
        }
        assert this.check();
        super.writeFixed(this.buf, 0, this.pos);
        this.pos = 0;
        blockedValue.state = State.REGULAR;
        blockedValue.lastFullItem = 0;
        blockedValue.start = 0;
        blockedValue.items = 0;
        assert this.check();
    }
    
    private void write(final byte[] array, final int n, int n2) throws IOException {
        if (this.blockStack[this.stackTop].state == State.ROOT) {
            super.writeFixed(array, n, n2);
        }
        else {
            assert this.check();
            while (this.buf.length < n2 + this.pos) {
                if (this.blockStack[this.stackTop].state == State.REGULAR) {
                    this.compact();
                }
                else {
                    super.writeFixed(this.buf, 0, this.pos);
                    this.pos = 0;
                    if (this.buf.length > n2) {
                        continue;
                    }
                    super.writeFixed(array, n, n2);
                    n2 = 0;
                }
            }
            System.arraycopy(array, n, this.buf, this.pos, n2);
            this.pos += n2;
        }
        assert this.check();
    }
    
    @Override
    public int bytesBuffered() {
        return this.pos + super.bytesBuffered();
    }
    
    BlockingBinaryEncoder configure(final OutputStream outputStream, final int n, final int n2) {
        super.configure(outputStream, n2);
        this.pos = 0;
        this.stackTop = 0;
        if (this.buf == null || this.buf.length != n) {
            this.buf = new byte[n];
        }
        assert this.check();
        return this;
    }
    
    @Override
    public void flush() throws IOException {
        final BlockedValue blockedValue = this.blockStack[this.stackTop];
        if (blockedValue.state == State.ROOT) {
            super.writeFixed(this.buf, 0, this.pos);
            this.pos = 0;
        }
        else {
            while (blockedValue.state != State.OVERFLOW) {
                this.compact();
            }
        }
        super.flush();
        assert this.check();
    }
    
    @Override
    public void setItemCount(final long itemsLeftToWrite) throws IOException {
        final BlockedValue blockedValue = this.blockStack[this.stackTop];
        assert blockedValue.type == Schema.Type.MAP;
        assert blockedValue.itemsLeftToWrite == 0L;
        blockedValue.itemsLeftToWrite = itemsLeftToWrite;
        assert this.check();
    }
    
    @Override
    public void startItem() throws IOException {
        if (this.blockStack[this.stackTop].state == State.OVERFLOW) {
            this.finishOverflow();
        }
        final BlockedValue blockedValue = this.blockStack[this.stackTop];
        ++blockedValue.items;
        blockedValue.lastFullItem = this.pos;
        --blockedValue.itemsLeftToWrite;
        assert this.check();
    }
    
    @Override
    public void writeArrayEnd() throws IOException {
        final BlockedValue blockedValue = this.blockStack[this.stackTop];
        if (blockedValue.type != Schema.Type.ARRAY) {
            throw new AvroTypeException("Called writeArrayEnd outside of an array.");
        }
        if (blockedValue.itemsLeftToWrite != 0L) {
            throw new AvroTypeException("Failed to write expected number of array elements.");
        }
        this.endBlockedValue();
        assert this.check();
    }
    
    @Override
    public void writeArrayStart() throws IOException {
        if (1 + this.stackTop == this.blockStack.length) {
            this.expandStack();
        }
        final BlockedValue[] blockStack = this.blockStack;
        final int stackTop = 1 + this.stackTop;
        this.stackTop = stackTop;
        final BlockedValue blockedValue = blockStack[stackTop];
        blockedValue.type = Schema.Type.ARRAY;
        blockedValue.state = State.REGULAR;
        final int pos = this.pos;
        blockedValue.lastFullItem = pos;
        blockedValue.start = pos;
        blockedValue.items = 0;
        assert this.check();
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException {
        this.ensureBounds(1);
        this.pos += BinaryData.encodeBoolean(b, this.buf, this.pos);
    }
    
    @Override
    public void writeDouble(final double n) throws IOException {
        this.ensureBounds(8);
        this.pos += BinaryData.encodeDouble(n, this.buf, this.pos);
    }
    
    @Override
    public void writeFixed(final byte[] array, final int n, final int n2) throws IOException {
        this.doWriteBytes(array, n, n2);
    }
    
    @Override
    public void writeFloat(final float n) throws IOException {
        this.ensureBounds(4);
        this.pos += BinaryData.encodeFloat(n, this.buf, this.pos);
    }
    
    @Override
    public void writeIndex(final int n) throws IOException {
        this.ensureBounds(5);
        this.pos += BinaryData.encodeInt(n, this.buf, this.pos);
    }
    
    @Override
    public void writeInt(final int n) throws IOException {
        this.ensureBounds(5);
        this.pos += BinaryData.encodeInt(n, this.buf, this.pos);
    }
    
    @Override
    public void writeLong(final long n) throws IOException {
        this.ensureBounds(10);
        this.pos += BinaryData.encodeLong(n, this.buf, this.pos);
    }
    
    @Override
    public void writeMapEnd() throws IOException {
        final BlockedValue blockedValue = this.blockStack[this.stackTop];
        if (blockedValue.type != Schema.Type.MAP) {
            throw new AvroTypeException("Called writeMapEnd outside of a map.");
        }
        if (blockedValue.itemsLeftToWrite != 0L) {
            throw new AvroTypeException("Failed to read write expected number of array elements.");
        }
        this.endBlockedValue();
        assert this.check();
    }
    
    @Override
    public void writeMapStart() throws IOException {
        if (1 + this.stackTop == this.blockStack.length) {
            this.expandStack();
        }
        final BlockedValue[] blockStack = this.blockStack;
        final int stackTop = 1 + this.stackTop;
        this.stackTop = stackTop;
        final BlockedValue blockedValue = blockStack[stackTop];
        blockedValue.type = Schema.Type.MAP;
        blockedValue.state = State.REGULAR;
        final int pos = this.pos;
        blockedValue.lastFullItem = pos;
        blockedValue.start = pos;
        blockedValue.items = 0;
        assert this.check();
    }
    
    @Override
    protected void writeZero() throws IOException {
        this.ensureBounds(1);
        this.buf[this.pos++] = 0;
    }
    
    private static class BlockedValue
    {
        public int items;
        public long itemsLeftToWrite;
        public int lastFullItem;
        public int start;
        public State state;
        public Schema.Type type;
        
        public BlockedValue() {
            super();
            this.type = null;
            this.state = State.ROOT;
            this.lastFullItem = 0;
            this.start = 0;
            this.items = 1;
        }
        
        public boolean check(final BlockedValue blockedValue, final int n) {
            assert this.type == null;
            assert this.type == Schema.Type.MAP;
            assert this.items >= 0;
            assert this.start == n;
            assert this.start == this.lastFullItem;
            assert this.start <= this.lastFullItem;
            assert this.lastFullItem <= n;
            switch (this.state) {
                case ROOT: {
                    assert this.start == 0;
                    assert blockedValue == null;
                    break;
                }
                case REGULAR: {
                    assert this.start >= 0;
                    assert blockedValue.lastFullItem <= this.start;
                    assert 1 <= blockedValue.items;
                    break;
                }
                case OVERFLOW: {
                    assert this.start == 0;
                    assert this.items == 1;
                    assert blockedValue.state == State.OVERFLOW;
                    break;
                }
            }
            return false;
        }
        
        public enum State
        {
            OVERFLOW, 
            REGULAR, 
            ROOT;
        }
    }
}

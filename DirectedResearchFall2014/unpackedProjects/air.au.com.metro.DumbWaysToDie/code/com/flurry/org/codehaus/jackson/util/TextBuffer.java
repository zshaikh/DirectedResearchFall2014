package com.flurry.org.codehaus.jackson.util;

import java.util.*;
import java.math.*;
import com.flurry.org.codehaus.jackson.io.*;

public final class TextBuffer
{
    static final int MAX_SEGMENT_LEN = 262144;
    static final int MIN_SEGMENT_LEN = 1000;
    static final char[] NO_CHARS;
    private final BufferRecycler _allocator;
    private char[] _currentSegment;
    private int _currentSize;
    private boolean _hasSegments;
    private char[] _inputBuffer;
    private int _inputLen;
    private int _inputStart;
    private char[] _resultArray;
    private String _resultString;
    private int _segmentSize;
    private ArrayList<char[]> _segments;
    
    static {
        NO_CHARS = new char[0];
    }
    
    public TextBuffer(final BufferRecycler allocator) {
        super();
        this._hasSegments = false;
        this._allocator = allocator;
    }
    
    private final char[] _charArray(final int n) {
        return new char[n];
    }
    
    private char[] buildResultArray() {
        if (this._resultString != null) {
            return this._resultString.toCharArray();
        }
        char[] array;
        if (this._inputStart >= 0) {
            if (this._inputLen < 1) {
                return TextBuffer.NO_CHARS;
            }
            array = this._charArray(this._inputLen);
            System.arraycopy(this._inputBuffer, this._inputStart, array, 0, this._inputLen);
        }
        else {
            final int size = this.size();
            if (size < 1) {
                return TextBuffer.NO_CHARS;
            }
            array = this._charArray(size);
            final ArrayList<char[]> segments = this._segments;
            int n = 0;
            if (segments != null) {
                for (int i = 0; i < this._segments.size(); ++i) {
                    final char[] array2 = this._segments.get(i);
                    final int length = array2.length;
                    System.arraycopy(array2, 0, array, n, length);
                    n += length;
                }
            }
            System.arraycopy(this._currentSegment, 0, array, n, this._currentSize);
        }
        return array;
    }
    
    private final void clearSegments() {
        this._hasSegments = false;
        this._segments.clear();
        this._segmentSize = 0;
        this._currentSize = 0;
    }
    
    private void expand(final int n) {
        if (this._segments == null) {
            this._segments = new ArrayList<char[]>();
        }
        final char[] currentSegment = this._currentSegment;
        this._hasSegments = true;
        this._segments.add(currentSegment);
        this._segmentSize += currentSegment.length;
        final int length = currentSegment.length;
        int n2 = length >> 1;
        if (n2 < n) {
            n2 = n;
        }
        final char[] charArray = this._charArray(Math.min(262144, length + n2));
        this._currentSize = 0;
        this._currentSegment = charArray;
    }
    
    private final char[] findBuffer(final int a) {
        if (this._allocator != null) {
            return this._allocator.allocCharBuffer(BufferRecycler.CharBufferType.TEXT_BUFFER, a);
        }
        return new char[Math.max(a, 1000)];
    }
    
    private void unshare(final int n) {
        final int inputLen = this._inputLen;
        this._inputLen = 0;
        final char[] inputBuffer = this._inputBuffer;
        this._inputBuffer = null;
        final int inputStart = this._inputStart;
        this._inputStart = -1;
        final int n2 = inputLen + n;
        if (this._currentSegment == null || n2 > this._currentSegment.length) {
            this._currentSegment = this.findBuffer(n2);
        }
        if (inputLen > 0) {
            System.arraycopy(inputBuffer, inputStart, this._currentSegment, 0, inputLen);
        }
        this._segmentSize = 0;
        this._currentSize = inputLen;
    }
    
    public void append(final char c) {
        if (this._inputStart >= 0) {
            this.unshare(16);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] array = this._currentSegment;
        if (this._currentSize >= array.length) {
            this.expand(1);
            array = this._currentSegment;
        }
        array[this._currentSize++] = c;
    }
    
    public void append(final String s, int srcBegin, int currentSize) {
        if (this._inputStart >= 0) {
            this.unshare(currentSize);
        }
        this._resultString = null;
        this._resultArray = null;
        final char[] currentSegment = this._currentSegment;
        final int n = currentSegment.length - this._currentSize;
        if (n >= currentSize) {
            s.getChars(srcBegin, srcBegin + currentSize, currentSegment, this._currentSize);
            this._currentSize += currentSize;
            return;
        }
        if (n > 0) {
            s.getChars(srcBegin, srcBegin + n, currentSegment, this._currentSize);
            currentSize -= n;
            srcBegin += n;
        }
        this.expand(currentSize);
        s.getChars(srcBegin, srcBegin + currentSize, this._currentSegment, 0);
        this._currentSize = currentSize;
    }
    
    public void append(final char[] array, int n, int currentSize) {
        if (this._inputStart >= 0) {
            this.unshare(currentSize);
        }
        this._resultString = null;
        this._resultArray = null;
        final char[] currentSegment = this._currentSegment;
        final int n2 = currentSegment.length - this._currentSize;
        if (n2 >= currentSize) {
            System.arraycopy(array, n, currentSegment, this._currentSize, currentSize);
            this._currentSize += currentSize;
            return;
        }
        if (n2 > 0) {
            System.arraycopy(array, n, currentSegment, this._currentSize, n2);
            n += n2;
            currentSize -= n2;
        }
        this.expand(currentSize);
        System.arraycopy(array, n, this._currentSegment, 0, currentSize);
        this._currentSize = currentSize;
    }
    
    public char[] contentsAsArray() {
        char[] resultArray = this._resultArray;
        if (resultArray == null) {
            resultArray = this.buildResultArray();
            this._resultArray = resultArray;
        }
        return resultArray;
    }
    
    public BigDecimal contentsAsDecimal() throws NumberFormatException {
        if (this._resultArray != null) {
            return new BigDecimal(this._resultArray);
        }
        if (this._inputStart >= 0) {
            return new BigDecimal(this._inputBuffer, this._inputStart, this._inputLen);
        }
        if (this._segmentSize == 0) {
            return new BigDecimal(this._currentSegment, 0, this._currentSize);
        }
        return new BigDecimal(this.contentsAsArray());
    }
    
    public double contentsAsDouble() throws NumberFormatException {
        return NumberInput.parseDouble(this.contentsAsString());
    }
    
    public String contentsAsString() {
        if (this._resultString == null) {
            if (this._resultArray != null) {
                this._resultString = new String(this._resultArray);
            }
            else if (this._inputStart >= 0) {
                if (this._inputLen < 1) {
                    return this._resultString = "";
                }
                this._resultString = new String(this._inputBuffer, this._inputStart, this._inputLen);
            }
            else {
                final int segmentSize = this._segmentSize;
                final int currentSize = this._currentSize;
                if (segmentSize == 0) {
                    String resultString;
                    if (currentSize == 0) {
                        resultString = "";
                    }
                    else {
                        resultString = new String(this._currentSegment, 0, currentSize);
                    }
                    this._resultString = resultString;
                }
                else {
                    final StringBuilder sb = new StringBuilder(segmentSize + currentSize);
                    if (this._segments != null) {
                        for (int i = 0; i < this._segments.size(); ++i) {
                            final char[] str = this._segments.get(i);
                            sb.append(str, 0, str.length);
                        }
                    }
                    sb.append(this._currentSegment, 0, this._currentSize);
                    this._resultString = sb.toString();
                }
            }
        }
        return this._resultString;
    }
    
    public final char[] emptyAndGetCurrentSegment() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            this.clearSegments();
        }
        char[] currentSegment = this._currentSegment;
        if (currentSegment == null) {
            currentSegment = this.findBuffer(0);
            this._currentSegment = currentSegment;
        }
        return currentSegment;
    }
    
    public void ensureNotShared() {
        if (this._inputStart >= 0) {
            this.unshare(16);
        }
    }
    
    public char[] expandCurrentSegment() {
        final char[] currentSegment = this._currentSegment;
        final int length = currentSegment.length;
        int min;
        if (length == 262144) {
            min = 262145;
        }
        else {
            min = Math.min(262144, length + (length >> 1));
        }
        System.arraycopy(currentSegment, 0, this._currentSegment = this._charArray(min), 0, length);
        return this._currentSegment;
    }
    
    public char[] finishCurrentSegment() {
        if (this._segments == null) {
            this._segments = new ArrayList<char[]>();
        }
        this._hasSegments = true;
        this._segments.add(this._currentSegment);
        final int length = this._currentSegment.length;
        this._segmentSize += length;
        final char[] charArray = this._charArray(Math.min(length + (length >> 1), 262144));
        this._currentSize = 0;
        return this._currentSegment = charArray;
    }
    
    public char[] getCurrentSegment() {
        if (this._inputStart >= 0) {
            this.unshare(1);
        }
        else {
            final char[] currentSegment = this._currentSegment;
            if (currentSegment == null) {
                this._currentSegment = this.findBuffer(0);
            }
            else if (this._currentSize >= currentSegment.length) {
                this.expand(1);
            }
        }
        return this._currentSegment;
    }
    
    public int getCurrentSegmentSize() {
        return this._currentSize;
    }
    
    public char[] getTextBuffer() {
        if (this._inputStart >= 0) {
            return this._inputBuffer;
        }
        if (this._resultArray != null) {
            return this._resultArray;
        }
        if (this._resultString != null) {
            return this._resultArray = this._resultString.toCharArray();
        }
        if (!this._hasSegments) {
            return this._currentSegment;
        }
        return this.contentsAsArray();
    }
    
    public int getTextOffset() {
        if (this._inputStart >= 0) {
            return this._inputStart;
        }
        return 0;
    }
    
    public boolean hasTextAsCharacters() {
        return this._inputStart >= 0 || this._resultArray != null || this._resultString == null;
    }
    
    public void releaseBuffers() {
        if (this._allocator == null) {
            this.resetWithEmpty();
        }
        else if (this._currentSegment != null) {
            this.resetWithEmpty();
            final char[] currentSegment = this._currentSegment;
            this._currentSegment = null;
            this._allocator.releaseCharBuffer(BufferRecycler.CharBufferType.TEXT_BUFFER, currentSegment);
        }
    }
    
    public void resetWithCopy(final char[] array, final int n, final int n2) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            this.clearSegments();
        }
        else if (this._currentSegment == null) {
            this._currentSegment = this.findBuffer(n2);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        this.append(array, n, n2);
    }
    
    public void resetWithEmpty() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            this.clearSegments();
        }
    }
    
    public void resetWithShared(final char[] inputBuffer, final int inputStart, final int inputLen) {
        this._resultString = null;
        this._resultArray = null;
        this._inputBuffer = inputBuffer;
        this._inputStart = inputStart;
        this._inputLen = inputLen;
        if (this._hasSegments) {
            this.clearSegments();
        }
    }
    
    public void resetWithString(final String resultString) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = resultString;
        this._resultArray = null;
        if (this._hasSegments) {
            this.clearSegments();
        }
        this._currentSize = 0;
    }
    
    public void setCurrentLength(final int currentSize) {
        this._currentSize = currentSize;
    }
    
    public int size() {
        if (this._inputStart >= 0) {
            return this._inputLen;
        }
        if (this._resultArray != null) {
            return this._resultArray.length;
        }
        if (this._resultString != null) {
            return this._resultString.length();
        }
        return this._segmentSize + this._currentSize;
    }
    
    @Override
    public String toString() {
        return this.contentsAsString();
    }
}

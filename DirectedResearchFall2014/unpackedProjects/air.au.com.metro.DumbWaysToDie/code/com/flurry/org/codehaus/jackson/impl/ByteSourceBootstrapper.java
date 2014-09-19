package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.format.*;
import com.flurry.org.codehaus.jackson.sym.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.io.*;

public final class ByteSourceBootstrapper
{
    static final byte UTF8_BOM_1 = -17;
    static final byte UTF8_BOM_2 = -69;
    static final byte UTF8_BOM_3 = -65;
    protected boolean _bigEndian;
    private final boolean _bufferRecyclable;
    protected int _bytesPerChar;
    protected final IOContext _context;
    protected final InputStream _in;
    protected final byte[] _inputBuffer;
    private int _inputEnd;
    protected int _inputProcessed;
    private int _inputPtr;
    
    public ByteSourceBootstrapper(final IOContext context, final InputStream in) {
        super();
        this._bigEndian = true;
        this._bytesPerChar = 0;
        this._context = context;
        this._in = in;
        this._inputBuffer = context.allocReadIOBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._inputProcessed = 0;
        this._bufferRecyclable = true;
    }
    
    public ByteSourceBootstrapper(final IOContext context, final byte[] inputBuffer, final int inputPtr, final int n) {
        super();
        this._bigEndian = true;
        this._bytesPerChar = 0;
        this._context = context;
        this._in = null;
        this._inputBuffer = inputBuffer;
        this._inputPtr = inputPtr;
        this._inputEnd = inputPtr + n;
        this._inputProcessed = -inputPtr;
        this._bufferRecyclable = false;
    }
    
    private boolean checkUTF16(final int n) {
        if ((0xFF00 & n) == 0x0) {
            this._bigEndian = true;
        }
        else {
            if ((n & 0xFF) != 0x0) {
                return false;
            }
            this._bigEndian = false;
        }
        this._bytesPerChar = 2;
        return true;
    }
    
    private boolean checkUTF32(final int n) throws IOException {
        if (n >> 8 == 0) {
            this._bigEndian = true;
        }
        else if ((0xFFFFFF & n) == 0x0) {
            this._bigEndian = false;
        }
        else if ((0xFF00FFFF & n) == 0x0) {
            this.reportWeirdUCS4("3412");
        }
        else {
            if ((0xFFFF00FF & n) != 0x0) {
                return false;
            }
            this.reportWeirdUCS4("2143");
        }
        this._bytesPerChar = 4;
        return true;
    }
    
    private boolean handleBOM(final int n) throws IOException {
        switch (n) {
            case 65279: {
                this._bigEndian = true;
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                return true;
            }
            case -131072: {
                this._inputPtr += 4;
                this._bytesPerChar = 4;
                this._bigEndian = false;
                return true;
            }
            case 65534: {
                this.reportWeirdUCS4("2143");
            }
            case -16842752: {
                this.reportWeirdUCS4("3412");
                break;
            }
        }
        final int n2 = n >>> 16;
        if (n2 == 65279) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            return this._bigEndian = true;
        }
        if (n2 == 65534) {
            this._inputPtr += 2;
            this._bytesPerChar = 2;
            this._bigEndian = false;
            return true;
        }
        if (n >>> 8 == 15711167) {
            this._inputPtr += 3;
            this._bytesPerChar = 1;
            return this._bigEndian = true;
        }
        return false;
    }
    
    public static MatchStrength hasJSONFormat(final InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return MatchStrength.INCONCLUSIVE;
        }
        byte b = inputAccessor.nextByte();
        if (b == -17) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -69) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -65) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            b = inputAccessor.nextByte();
        }
        final int skipSpace = skipSpace(inputAccessor, b);
        if (skipSpace < 0) {
            return MatchStrength.INCONCLUSIVE;
        }
        if (skipSpace == 123) {
            final int skipSpace2 = skipSpace(inputAccessor);
            if (skipSpace2 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (skipSpace2 == 34 || skipSpace2 == 125) {
                return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.NO_MATCH;
        }
        else if (skipSpace == 91) {
            final int skipSpace3 = skipSpace(inputAccessor);
            if (skipSpace3 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (skipSpace3 == 93 || skipSpace3 == 91) {
                return MatchStrength.SOLID_MATCH;
            }
            return MatchStrength.SOLID_MATCH;
        }
        else {
            final MatchStrength weak_MATCH = MatchStrength.WEAK_MATCH;
            if (skipSpace == 34) {
                return weak_MATCH;
            }
            if (skipSpace <= 57 && skipSpace >= 48) {
                return weak_MATCH;
            }
            if (skipSpace == 45) {
                final int skipSpace4 = skipSpace(inputAccessor);
                if (skipSpace4 < 0) {
                    return MatchStrength.INCONCLUSIVE;
                }
                if (skipSpace4 <= 57 && skipSpace4 >= 48) {
                    return weak_MATCH;
                }
                return MatchStrength.NO_MATCH;
            }
            else {
                if (skipSpace == 110) {
                    return tryMatch(inputAccessor, "ull", weak_MATCH);
                }
                if (skipSpace == 116) {
                    return tryMatch(inputAccessor, "rue", weak_MATCH);
                }
                if (skipSpace == 102) {
                    return tryMatch(inputAccessor, "alse", weak_MATCH);
                }
                return MatchStrength.NO_MATCH;
            }
        }
    }
    
    private void reportWeirdUCS4(final String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }
    
    private static final int skipSpace(final InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return -1;
        }
        return skipSpace(inputAccessor, inputAccessor.nextByte());
    }
    
    private static final int skipSpace(final InputAccessor inputAccessor, byte nextByte) throws IOException {
        while (true) {
            final int n = nextByte & 0xFF;
            if (n != 32 && n != 13 && n != 10 && n != 9) {
                return n;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return -1;
            }
            nextByte = inputAccessor.nextByte();
        }
    }
    
    private static final MatchStrength tryMatch(final InputAccessor inputAccessor, final String s, final MatchStrength matchStrength) throws IOException {
        for (int i = 0; i < s.length(); ++i) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != s.charAt(i)) {
                return MatchStrength.NO_MATCH;
            }
        }
        return matchStrength;
    }
    
    public JsonParser constructParser(final int n, final ObjectCodec objectCodec, final BytesToNameCanonicalizer bytesToNameCanonicalizer, final CharsToNameCanonicalizer charsToNameCanonicalizer) throws IOException, JsonParseException {
        final JsonEncoding detectEncoding = this.detectEncoding();
        final boolean enabledIn = JsonParser.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(n);
        final boolean enabledIn2 = JsonParser.Feature.INTERN_FIELD_NAMES.enabledIn(n);
        if (detectEncoding == JsonEncoding.UTF8 && enabledIn) {
            return new Utf8StreamParser(this._context, n, this._in, objectCodec, bytesToNameCanonicalizer.makeChild(enabledIn, enabledIn2), this._inputBuffer, this._inputPtr, this._inputEnd, this._bufferRecyclable);
        }
        return new ReaderBasedParser(this._context, n, this.constructReader(), objectCodec, charsToNameCanonicalizer.makeChild(enabledIn, enabledIn2));
    }
    
    public Reader constructReader() throws IOException {
        final JsonEncoding encoding = this._context.getEncoding();
        switch (encoding) {
            default: {
                throw new RuntimeException("Internal error");
            }
            case UTF32_BE:
            case UTF32_LE: {
                return new UTF32Reader(this._context, this._in, this._inputBuffer, this._inputPtr, this._inputEnd, this._context.getEncoding().isBigEndian());
            }
            case UTF16_BE:
            case UTF16_LE:
            case UTF8: {
                final InputStream in = this._in;
                InputStream in2;
                if (in == null) {
                    in2 = new ByteArrayInputStream(this._inputBuffer, this._inputPtr, this._inputEnd);
                }
                else if (this._inputPtr < this._inputEnd) {
                    in2 = new MergedStream(this._context, in, this._inputBuffer, this._inputPtr, this._inputEnd);
                }
                else {
                    in2 = in;
                }
                return new InputStreamReader(in2, encoding.getJavaName());
            }
        }
    }
    
    public JsonEncoding detectEncoding() throws IOException, JsonParseException {
        int n2;
        if (this.ensureLoaded(4)) {
            final int n = this._inputBuffer[this._inputPtr] << 24 | (0xFF & this._inputBuffer[1 + this._inputPtr]) << 16 | (0xFF & this._inputBuffer[2 + this._inputPtr]) << 8 | (0xFF & this._inputBuffer[3 + this._inputPtr]);
            if (this.handleBOM(n)) {
                n2 = 1;
            }
            else if (this.checkUTF32(n)) {
                n2 = 1;
            }
            else {
                final boolean checkUTF16 = this.checkUTF16(n >>> 16);
                n2 = 0;
                if (checkUTF16) {
                    n2 = 1;
                }
            }
        }
        else {
            final boolean ensureLoaded = this.ensureLoaded(2);
            n2 = 0;
            if (ensureLoaded) {
                final boolean checkUTF2 = this.checkUTF16((0xFF & this._inputBuffer[this._inputPtr]) << 8 | (0xFF & this._inputBuffer[1 + this._inputPtr]));
                n2 = 0;
                if (checkUTF2) {
                    n2 = 1;
                }
            }
        }
        JsonEncoding encoding = null;
        if (n2 == 0) {
            encoding = JsonEncoding.UTF8;
        }
        else {
            switch (this._bytesPerChar) {
                default: {
                    throw new RuntimeException("Internal error");
                }
                case 1: {
                    encoding = JsonEncoding.UTF8;
                    break;
                }
                case 2: {
                    if (this._bigEndian) {
                        encoding = JsonEncoding.UTF16_BE;
                    }
                    else {
                        encoding = JsonEncoding.UTF16_LE;
                    }
                    break;
                }
                case 4: {
                    if (this._bigEndian) {
                        encoding = JsonEncoding.UTF32_BE;
                    }
                    else {
                        encoding = JsonEncoding.UTF32_LE;
                    }
                    break;
                }
            }
        }
        this._context.setEncoding(encoding);
        return encoding;
    }
    
    protected boolean ensureLoaded(final int n) throws IOException {
        int read;
        for (int i = this._inputEnd - this._inputPtr; i < n; i += read) {
            if (this._in == null) {
                read = -1;
            }
            else {
                read = this._in.read(this._inputBuffer, this._inputEnd, this._inputBuffer.length - this._inputEnd);
            }
            if (read < 1) {
                return false;
            }
            this._inputEnd += read;
        }
        return true;
    }
}

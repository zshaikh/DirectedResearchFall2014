package com.flurry.org.codehaus.jackson.io;

import com.flurry.org.codehaus.jackson.*;

public class SerializedString implements SerializableString
{
    protected char[] _quotedChars;
    protected byte[] _quotedUTF8Ref;
    protected byte[] _unquotedUTF8Ref;
    protected final String _value;
    
    public SerializedString(final String value) {
        super();
        this._value = value;
    }
    
    @Override
    public final char[] asQuotedChars() {
        char[] quotedChars = this._quotedChars;
        if (quotedChars == null) {
            quotedChars = JsonStringEncoder.getInstance().quoteAsString(this._value);
            this._quotedChars = quotedChars;
        }
        return quotedChars;
    }
    
    @Override
    public final byte[] asQuotedUTF8() {
        byte[] quotedUTF8Ref = this._quotedUTF8Ref;
        if (quotedUTF8Ref == null) {
            quotedUTF8Ref = JsonStringEncoder.getInstance().quoteAsUTF8(this._value);
            this._quotedUTF8Ref = quotedUTF8Ref;
        }
        return quotedUTF8Ref;
    }
    
    @Override
    public final byte[] asUnquotedUTF8() {
        byte[] unquotedUTF8Ref = this._unquotedUTF8Ref;
        if (unquotedUTF8Ref == null) {
            unquotedUTF8Ref = JsonStringEncoder.getInstance().encodeAsUTF8(this._value);
            this._unquotedUTF8Ref = unquotedUTF8Ref;
        }
        return unquotedUTF8Ref;
    }
    
    @Override
    public final int charLength() {
        return this._value.length();
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && this._value.equals(((SerializedString)o)._value));
    }
    
    @Override
    public final String getValue() {
        return this._value;
    }
    
    @Override
    public final int hashCode() {
        return this._value.hashCode();
    }
    
    @Override
    public final String toString() {
        return this._value;
    }
}

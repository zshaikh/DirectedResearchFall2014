package com.flurry.org.codehaus.jackson;

import java.io.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class JsonLocation implements Serializable
{
    public static final JsonLocation NA;
    private static final long serialVersionUID = 1L;
    final int _columnNr;
    final int _lineNr;
    final Object _sourceRef;
    final long _totalBytes;
    final long _totalChars;
    
    static {
        NA = new JsonLocation("N/A", -1L, -1L, -1, -1);
    }
    
    public JsonLocation(final Object o, final long n, final int n2, final int n3) {
        this(o, -1L, n, n2, n3);
    }
    
    public JsonLocation(@JsonProperty("sourceRef") final Object sourceRef, @JsonProperty("byteOffset") final long totalBytes, @JsonProperty("charOffset") final long totalChars, @JsonProperty("lineNr") final int lineNr, @JsonProperty("columnNr") final int columnNr) {
        super();
        this._sourceRef = sourceRef;
        this._totalBytes = totalBytes;
        this._totalChars = totalChars;
        this._lineNr = lineNr;
        this._columnNr = columnNr;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (!(o instanceof JsonLocation)) {
            return false;
        }
        final JsonLocation jsonLocation = (JsonLocation)o;
        if (this._sourceRef == null) {
            if (jsonLocation._sourceRef != null) {
                return false;
            }
        }
        else if (!this._sourceRef.equals(jsonLocation._sourceRef)) {
            return false;
        }
        return this._lineNr == jsonLocation._lineNr && this._columnNr == jsonLocation._columnNr && this._totalChars == jsonLocation._totalChars && this.getByteOffset() == jsonLocation.getByteOffset();
    }
    
    public long getByteOffset() {
        return this._totalBytes;
    }
    
    public long getCharOffset() {
        return this._totalChars;
    }
    
    public int getColumnNr() {
        return this._columnNr;
    }
    
    public int getLineNr() {
        return this._lineNr;
    }
    
    public Object getSourceRef() {
        return this._sourceRef;
    }
    
    @Override
    public int hashCode() {
        int hashCode;
        if (this._sourceRef == null) {
            hashCode = 1;
        }
        else {
            hashCode = this._sourceRef.hashCode();
        }
        return ((hashCode ^ this._lineNr) + this._columnNr ^ (int)this._totalChars) + (int)this._totalBytes;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(80);
        sb.append("[Source: ");
        if (this._sourceRef == null) {
            sb.append("UNKNOWN");
        }
        else {
            sb.append(this._sourceRef.toString());
        }
        sb.append("; line: ");
        sb.append(this._lineNr);
        sb.append(", column: ");
        sb.append(this._columnNr);
        sb.append(']');
        return sb.toString();
    }
}

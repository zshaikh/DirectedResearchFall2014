package com.flurry.org.codehaus.jackson.format;

import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.io.*;

public class DataFormatMatcher
{
    protected final byte[] _bufferedData;
    protected final int _bufferedLength;
    protected final JsonFactory _match;
    protected final MatchStrength _matchStrength;
    protected final InputStream _originalStream;
    
    protected DataFormatMatcher(final InputStream originalStream, final byte[] bufferedData, final int bufferedLength, final JsonFactory match, final MatchStrength matchStrength) {
        super();
        this._originalStream = originalStream;
        this._bufferedData = bufferedData;
        this._bufferedLength = bufferedLength;
        this._match = match;
        this._matchStrength = matchStrength;
    }
    
    public JsonParser createParserWithMatch() throws IOException {
        if (this._match == null) {
            return null;
        }
        if (this._originalStream == null) {
            return this._match.createJsonParser(this._bufferedData, 0, this._bufferedLength);
        }
        return this._match.createJsonParser(this.getDataStream());
    }
    
    public InputStream getDataStream() {
        if (this._originalStream == null) {
            return new ByteArrayInputStream(this._bufferedData, 0, this._bufferedLength);
        }
        return new MergedStream(null, this._originalStream, this._bufferedData, 0, this._bufferedLength);
    }
    
    public JsonFactory getMatch() {
        return this._match;
    }
    
    public MatchStrength getMatchStrength() {
        if (this._matchStrength == null) {
            return MatchStrength.INCONCLUSIVE;
        }
        return this._matchStrength;
    }
    
    public String getMatchedFormatName() {
        return this._match.getFormatName();
    }
    
    public boolean hasMatch() {
        return this._match != null;
    }
}

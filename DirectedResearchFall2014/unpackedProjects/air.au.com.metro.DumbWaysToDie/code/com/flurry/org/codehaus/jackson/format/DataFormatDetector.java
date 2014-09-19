package com.flurry.org.codehaus.jackson.format;

import com.flurry.org.codehaus.jackson.*;
import java.util.*;
import java.io.*;

public class DataFormatDetector
{
    public static final int DEFAULT_MAX_INPUT_LOOKAHEAD = 64;
    protected final JsonFactory[] _detectors;
    protected final int _maxInputLookahead;
    protected final MatchStrength _minimalMatch;
    protected final MatchStrength _optimalMatch;
    
    public DataFormatDetector(final Collection<JsonFactory> collection) {
        this((JsonFactory[])collection.toArray(new JsonFactory[collection.size()]));
    }
    
    public DataFormatDetector(final JsonFactory... array) {
        this(array, MatchStrength.SOLID_MATCH, MatchStrength.WEAK_MATCH, 64);
    }
    
    private DataFormatDetector(final JsonFactory[] detectors, final MatchStrength optimalMatch, final MatchStrength minimalMatch, final int maxInputLookahead) {
        super();
        this._detectors = detectors;
        this._optimalMatch = optimalMatch;
        this._minimalMatch = minimalMatch;
        this._maxInputLookahead = maxInputLookahead;
    }
    
    private DataFormatMatcher _findFormat(final InputAccessor.Std std) throws IOException {
        JsonFactory jsonFactory = null;
        MatchStrength matchStrength = null;
        for (final JsonFactory jsonFactory2 : this._detectors) {
            std.reset();
            final MatchStrength hasFormat = jsonFactory2.hasFormat(std);
            if (hasFormat != null && hasFormat.ordinal() >= this._minimalMatch.ordinal() && (jsonFactory == null || matchStrength.ordinal() < hasFormat.ordinal())) {
                jsonFactory = jsonFactory2;
                matchStrength = hasFormat;
                if (hasFormat.ordinal() >= this._optimalMatch.ordinal()) {
                    break;
                }
            }
        }
        return std.createMatcher(jsonFactory, matchStrength);
    }
    
    public DataFormatMatcher findFormat(final InputStream inputStream) throws IOException {
        return this._findFormat(new InputAccessor.Std(inputStream, new byte[this._maxInputLookahead]));
    }
    
    public DataFormatMatcher findFormat(final byte[] array) throws IOException {
        return this._findFormat(new InputAccessor.Std(array));
    }
    
    public DataFormatDetector withMaxInputLookahead(final int n) {
        if (n == this._maxInputLookahead) {
            return this;
        }
        return new DataFormatDetector(this._detectors, this._optimalMatch, this._minimalMatch, n);
    }
    
    public DataFormatDetector withMinimalMatch(final MatchStrength matchStrength) {
        if (matchStrength == this._minimalMatch) {
            return this;
        }
        return new DataFormatDetector(this._detectors, this._optimalMatch, matchStrength, this._maxInputLookahead);
    }
    
    public DataFormatDetector withOptimalMatch(final MatchStrength matchStrength) {
        if (matchStrength == this._optimalMatch) {
            return this;
        }
        return new DataFormatDetector(this._detectors, matchStrength, this._minimalMatch, this._maxInputLookahead);
    }
}

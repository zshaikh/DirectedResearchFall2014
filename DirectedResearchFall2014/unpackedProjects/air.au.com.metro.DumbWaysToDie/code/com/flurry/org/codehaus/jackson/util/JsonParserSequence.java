package com.flurry.org.codehaus.jackson.util;

import java.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class JsonParserSequence extends JsonParserDelegate
{
    protected int _nextParser;
    protected final JsonParser[] _parsers;
    
    protected JsonParserSequence(final JsonParser[] parsers) {
        super(parsers[0]);
        this._parsers = parsers;
        this._nextParser = 1;
    }
    
    public static JsonParserSequence createFlattened(final JsonParser e, final JsonParser e2) {
        if (!(e instanceof JsonParserSequence) && !(e2 instanceof JsonParserSequence)) {
            return new JsonParserSequence(new JsonParser[] { e, e2 });
        }
        final ArrayList<JsonParser> list = new ArrayList<JsonParser>();
        if (e instanceof JsonParserSequence) {
            ((JsonParserSequence)e).addFlattenedActiveParsers(list);
        }
        else {
            list.add(e);
        }
        if (e2 instanceof JsonParserSequence) {
            ((JsonParserSequence)e2).addFlattenedActiveParsers(list);
        }
        else {
            list.add(e2);
        }
        return new JsonParserSequence(list.toArray(new JsonParser[list.size()]));
    }
    
    protected void addFlattenedActiveParsers(final List<JsonParser> list) {
        for (int i = this._nextParser - 1; i < this._parsers.length; ++i) {
            final JsonParser jsonParser = this._parsers[i];
            if (jsonParser instanceof JsonParserSequence) {
                ((JsonParserSequence)jsonParser).addFlattenedActiveParsers(list);
            }
            else {
                list.add(jsonParser);
            }
        }
    }
    
    @Override
    public void close() throws IOException {
        do {
            this.delegate.close();
        } while (this.switchToNext());
    }
    
    public int containedParsersCount() {
        return this._parsers.length;
    }
    
    @Override
    public JsonToken nextToken() throws IOException, JsonParseException {
        final JsonToken nextToken = this.delegate.nextToken();
        if (nextToken != null) {
            return nextToken;
        }
        while (this.switchToNext()) {
            final JsonToken nextToken2 = this.delegate.nextToken();
            if (nextToken2 != null) {
                return nextToken2;
            }
        }
        return null;
    }
    
    protected boolean switchToNext() {
        if (this._nextParser >= this._parsers.length) {
            return false;
        }
        this.delegate = this._parsers[this._nextParser++];
        return true;
    }
}

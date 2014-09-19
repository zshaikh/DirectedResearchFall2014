package com.flurry.org.codehaus.jackson.util;

import com.flurry.org.codehaus.jackson.impl.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;

public class DefaultPrettyPrinter implements PrettyPrinter
{
    protected Indenter _arrayIndenter;
    protected int _nesting;
    protected Indenter _objectIndenter;
    protected boolean _spacesInObjectEntries;
    
    public DefaultPrettyPrinter() {
        super();
        this._arrayIndenter = new FixedSpaceIndenter();
        this._objectIndenter = new Lf2SpacesIndenter();
        this._spacesInObjectEntries = true;
        this._nesting = 0;
    }
    
    @Override
    public void beforeArrayValues(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        this._arrayIndenter.writeIndentation(jsonGenerator, this._nesting);
    }
    
    @Override
    public void beforeObjectEntries(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        this._objectIndenter.writeIndentation(jsonGenerator, this._nesting);
    }
    
    public void indentArraysWith(final Indenter indenter) {
        Indenter arrayIndenter;
        if (indenter == null) {
            arrayIndenter = new NopIndenter();
        }
        else {
            arrayIndenter = indenter;
        }
        this._arrayIndenter = arrayIndenter;
    }
    
    public void indentObjectsWith(final Indenter indenter) {
        Indenter objectIndenter;
        if (indenter == null) {
            objectIndenter = new NopIndenter();
        }
        else {
            objectIndenter = indenter;
        }
        this._objectIndenter = objectIndenter;
    }
    
    public void spacesInObjectEntries(final boolean spacesInObjectEntries) {
        this._spacesInObjectEntries = spacesInObjectEntries;
    }
    
    @Override
    public void writeArrayValueSeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw(',');
        this._arrayIndenter.writeIndentation(jsonGenerator, this._nesting);
    }
    
    @Override
    public void writeEndArray(final JsonGenerator jsonGenerator, final int n) throws IOException, JsonGenerationException {
        if (!this._arrayIndenter.isInline()) {
            --this._nesting;
        }
        if (n > 0) {
            this._arrayIndenter.writeIndentation(jsonGenerator, this._nesting);
        }
        else {
            jsonGenerator.writeRaw(' ');
        }
        jsonGenerator.writeRaw(']');
    }
    
    @Override
    public void writeEndObject(final JsonGenerator jsonGenerator, final int n) throws IOException, JsonGenerationException {
        if (!this._objectIndenter.isInline()) {
            --this._nesting;
        }
        if (n > 0) {
            this._objectIndenter.writeIndentation(jsonGenerator, this._nesting);
        }
        else {
            jsonGenerator.writeRaw(' ');
        }
        jsonGenerator.writeRaw('}');
    }
    
    @Override
    public void writeObjectEntrySeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw(',');
        this._objectIndenter.writeIndentation(jsonGenerator, this._nesting);
    }
    
    @Override
    public void writeObjectFieldValueSeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        if (this._spacesInObjectEntries) {
            jsonGenerator.writeRaw(" : ");
            return;
        }
        jsonGenerator.writeRaw(':');
    }
    
    @Override
    public void writeRootValueSeparator(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw(' ');
    }
    
    @Override
    public void writeStartArray(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        if (!this._arrayIndenter.isInline()) {
            ++this._nesting;
        }
        jsonGenerator.writeRaw('[');
    }
    
    @Override
    public void writeStartObject(final JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        jsonGenerator.writeRaw('{');
        if (!this._objectIndenter.isInline()) {
            ++this._nesting;
        }
    }
    
    public static class FixedSpaceIndenter implements Indenter
    {
        @Override
        public boolean isInline() {
            return true;
        }
        
        @Override
        public void writeIndentation(final JsonGenerator jsonGenerator, final int n) throws IOException, JsonGenerationException {
            jsonGenerator.writeRaw(' ');
        }
    }
    
    public static class Lf2SpacesIndenter implements Indenter
    {
        static final char[] SPACES;
        static final int SPACE_COUNT = 64;
        static final String SYSTEM_LINE_SEPARATOR;
        
        static {
            while (true) {
                try {
                    final String property = System.getProperty("line.separator");
                    String system_LINE_SEPARATOR;
                    if (property == null) {
                        system_LINE_SEPARATOR = "\n";
                    }
                    else {
                        system_LINE_SEPARATOR = property;
                    }
                    SYSTEM_LINE_SEPARATOR = system_LINE_SEPARATOR;
                    Arrays.fill(SPACES = new char[64], ' ');
                }
                catch (Throwable t) {
                    final String property = null;
                    continue;
                }
                break;
            }
        }
        
        @Override
        public boolean isInline() {
            return false;
        }
        
        @Override
        public void writeIndentation(final JsonGenerator jsonGenerator, final int n) throws IOException, JsonGenerationException {
            jsonGenerator.writeRaw(Lf2SpacesIndenter.SYSTEM_LINE_SEPARATOR);
            int i;
            for (i = n + n; i > 64; i -= Lf2SpacesIndenter.SPACES.length) {
                jsonGenerator.writeRaw(Lf2SpacesIndenter.SPACES, 0, 64);
            }
            jsonGenerator.writeRaw(Lf2SpacesIndenter.SPACES, 0, i);
        }
    }
    
    public static class NopIndenter implements Indenter
    {
        @Override
        public boolean isInline() {
            return true;
        }
        
        @Override
        public void writeIndentation(final JsonGenerator jsonGenerator, final int n) {
        }
    }
}

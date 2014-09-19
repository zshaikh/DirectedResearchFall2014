package com.flurry.org.codehaus.jackson;

import java.lang.ref.*;
import com.flurry.org.codehaus.jackson.sym.*;
import com.flurry.org.codehaus.jackson.impl.*;
import com.flurry.org.codehaus.jackson.io.*;
import java.net.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.format.*;
import com.flurry.org.codehaus.jackson.util.*;

public class JsonFactory implements Versioned
{
    static final int DEFAULT_GENERATOR_FEATURE_FLAGS = 0;
    static final int DEFAULT_PARSER_FEATURE_FLAGS = 0;
    public static final String FORMAT_NAME_JSON = "JSON";
    protected static final ThreadLocal<SoftReference<BufferRecycler>> _recyclerRef;
    protected CharacterEscapes _characterEscapes;
    protected int _generatorFeatures;
    protected InputDecorator _inputDecorator;
    protected ObjectCodec _objectCodec;
    protected OutputDecorator _outputDecorator;
    protected int _parserFeatures;
    protected BytesToNameCanonicalizer _rootByteSymbols;
    protected CharsToNameCanonicalizer _rootCharSymbols;
    
    static {
        DEFAULT_PARSER_FEATURE_FLAGS = JsonParser.Feature.collectDefaults();
        DEFAULT_GENERATOR_FEATURE_FLAGS = JsonGenerator.Feature.collectDefaults();
        _recyclerRef = new ThreadLocal<SoftReference<BufferRecycler>>();
    }
    
    public JsonFactory() {
        this(null);
    }
    
    public JsonFactory(final ObjectCodec objectCodec) {
        super();
        this._rootCharSymbols = CharsToNameCanonicalizer.createRoot();
        this._rootByteSymbols = BytesToNameCanonicalizer.createRoot();
        this._parserFeatures = JsonFactory.DEFAULT_PARSER_FEATURE_FLAGS;
        this._generatorFeatures = JsonFactory.DEFAULT_GENERATOR_FEATURE_FLAGS;
        this._objectCodec = objectCodec;
    }
    
    protected IOContext _createContext(final Object o, final boolean b) {
        return new IOContext(this._getBufferRecycler(), o, b);
    }
    
    protected JsonGenerator _createJsonGenerator(final Writer writer, final IOContext ioContext) throws IOException {
        final WriterBasedGenerator writerBasedGenerator = new WriterBasedGenerator(ioContext, this._generatorFeatures, this._objectCodec, writer);
        if (this._characterEscapes != null) {
            writerBasedGenerator.setCharacterEscapes(this._characterEscapes);
        }
        return writerBasedGenerator;
    }
    
    protected JsonParser _createJsonParser(final InputStream inputStream, final IOContext ioContext) throws IOException, JsonParseException {
        return new ByteSourceBootstrapper(ioContext, inputStream).constructParser(this._parserFeatures, this._objectCodec, this._rootByteSymbols, this._rootCharSymbols);
    }
    
    protected JsonParser _createJsonParser(final Reader reader, final IOContext ioContext) throws IOException, JsonParseException {
        return new ReaderBasedParser(ioContext, this._parserFeatures, reader, this._objectCodec, this._rootCharSymbols.makeChild(this.isEnabled(JsonParser.Feature.CANONICALIZE_FIELD_NAMES), this.isEnabled(JsonParser.Feature.INTERN_FIELD_NAMES)));
    }
    
    protected JsonParser _createJsonParser(final byte[] array, final int n, final int n2, final IOContext ioContext) throws IOException, JsonParseException {
        return new ByteSourceBootstrapper(ioContext, array, n, n2).constructParser(this._parserFeatures, this._objectCodec, this._rootByteSymbols, this._rootCharSymbols);
    }
    
    protected JsonGenerator _createUTF8JsonGenerator(final OutputStream outputStream, final IOContext ioContext) throws IOException {
        final Utf8Generator utf8Generator = new Utf8Generator(ioContext, this._generatorFeatures, this._objectCodec, outputStream);
        if (this._characterEscapes != null) {
            utf8Generator.setCharacterEscapes(this._characterEscapes);
        }
        return utf8Generator;
    }
    
    protected Writer _createWriter(final OutputStream out, final JsonEncoding jsonEncoding, final IOContext ioContext) throws IOException {
        if (jsonEncoding == JsonEncoding.UTF8) {
            return new UTF8Writer(ioContext, out);
        }
        return new OutputStreamWriter(out, jsonEncoding.getJavaName());
    }
    
    public BufferRecycler _getBufferRecycler() {
        final SoftReference<BufferRecycler> softReference = JsonFactory._recyclerRef.get();
        BufferRecycler referent;
        if (softReference == null) {
            referent = null;
        }
        else {
            referent = softReference.get();
        }
        if (referent == null) {
            referent = new BufferRecycler();
            JsonFactory._recyclerRef.set(new SoftReference<BufferRecycler>(referent));
        }
        return referent;
    }
    
    protected InputStream _optimizedStreamFromURL(final URL url) throws IOException {
        if ("file".equals(url.getProtocol())) {
            final String host = url.getHost();
            if (host == null || host.length() == 0) {
                return new FileInputStream(url.getPath());
            }
        }
        return url.openStream();
    }
    
    public final JsonFactory configure(final JsonGenerator.Feature feature, final boolean b) {
        if (b) {
            this.enable(feature);
            return this;
        }
        this.disable(feature);
        return this;
    }
    
    public final JsonFactory configure(final JsonParser.Feature feature, final boolean b) {
        if (b) {
            this.enable(feature);
            return this;
        }
        this.disable(feature);
        return this;
    }
    
    public JsonGenerator createJsonGenerator(final File file, final JsonEncoding encoding) throws IOException {
        OutputStream decorate = new FileOutputStream(file);
        final IOContext createContext = this._createContext(decorate, true);
        createContext.setEncoding(encoding);
        if (encoding == JsonEncoding.UTF8) {
            if (this._outputDecorator != null) {
                decorate = this._outputDecorator.decorate(createContext, decorate);
            }
            return this._createUTF8JsonGenerator(decorate, createContext);
        }
        Writer writer = this._createWriter(decorate, encoding, createContext);
        if (this._outputDecorator != null) {
            writer = this._outputDecorator.decorate(createContext, writer);
        }
        return this._createJsonGenerator(writer, createContext);
    }
    
    public JsonGenerator createJsonGenerator(final OutputStream outputStream) throws IOException {
        return this.createJsonGenerator(outputStream, JsonEncoding.UTF8);
    }
    
    public JsonGenerator createJsonGenerator(OutputStream decorate, final JsonEncoding encoding) throws IOException {
        final IOContext createContext = this._createContext(decorate, false);
        createContext.setEncoding(encoding);
        if (encoding == JsonEncoding.UTF8) {
            if (this._outputDecorator != null) {
                decorate = this._outputDecorator.decorate(createContext, decorate);
            }
            return this._createUTF8JsonGenerator(decorate, createContext);
        }
        Writer writer = this._createWriter(decorate, encoding, createContext);
        if (this._outputDecorator != null) {
            writer = this._outputDecorator.decorate(createContext, writer);
        }
        return this._createJsonGenerator(writer, createContext);
    }
    
    public JsonGenerator createJsonGenerator(Writer decorate) throws IOException {
        final IOContext createContext = this._createContext(decorate, false);
        if (this._outputDecorator != null) {
            decorate = this._outputDecorator.decorate(createContext, decorate);
        }
        return this._createJsonGenerator(decorate, createContext);
    }
    
    public JsonParser createJsonParser(final File file) throws IOException, JsonParseException {
        final IOContext createContext = this._createContext(file, true);
        InputStream decorate = new FileInputStream(file);
        if (this._inputDecorator != null) {
            decorate = this._inputDecorator.decorate(createContext, decorate);
        }
        return this._createJsonParser(decorate, createContext);
    }
    
    public JsonParser createJsonParser(InputStream decorate) throws IOException, JsonParseException {
        final IOContext createContext = this._createContext(decorate, false);
        if (this._inputDecorator != null) {
            decorate = this._inputDecorator.decorate(createContext, decorate);
        }
        return this._createJsonParser(decorate, createContext);
    }
    
    public JsonParser createJsonParser(Reader decorate) throws IOException, JsonParseException {
        final IOContext createContext = this._createContext(decorate, false);
        if (this._inputDecorator != null) {
            decorate = this._inputDecorator.decorate(createContext, decorate);
        }
        return this._createJsonParser(decorate, createContext);
    }
    
    public JsonParser createJsonParser(final String s) throws IOException, JsonParseException {
        Reader decorate = new StringReader(s);
        final IOContext createContext = this._createContext(decorate, true);
        if (this._inputDecorator != null) {
            decorate = this._inputDecorator.decorate(createContext, decorate);
        }
        return this._createJsonParser(decorate, createContext);
    }
    
    public JsonParser createJsonParser(final URL url) throws IOException, JsonParseException {
        final IOContext createContext = this._createContext(url, true);
        InputStream inputStream = this._optimizedStreamFromURL(url);
        if (this._inputDecorator != null) {
            inputStream = this._inputDecorator.decorate(createContext, inputStream);
        }
        return this._createJsonParser(inputStream, createContext);
    }
    
    public JsonParser createJsonParser(final byte[] array) throws IOException, JsonParseException {
        final IOContext createContext = this._createContext(array, true);
        if (this._inputDecorator != null) {
            final InputStream decorate = this._inputDecorator.decorate(createContext, array, 0, array.length);
            if (decorate != null) {
                return this._createJsonParser(decorate, createContext);
            }
        }
        return this._createJsonParser(array, 0, array.length, createContext);
    }
    
    public JsonParser createJsonParser(final byte[] array, final int n, final int n2) throws IOException, JsonParseException {
        final IOContext createContext = this._createContext(array, true);
        if (this._inputDecorator != null) {
            final InputStream decorate = this._inputDecorator.decorate(createContext, array, n, n2);
            if (decorate != null) {
                return this._createJsonParser(decorate, createContext);
            }
        }
        return this._createJsonParser(array, n, n2, createContext);
    }
    
    public JsonFactory disable(final JsonGenerator.Feature feature) {
        this._generatorFeatures &= (-1 ^ feature.getMask());
        return this;
    }
    
    public JsonFactory disable(final JsonParser.Feature feature) {
        this._parserFeatures &= (-1 ^ feature.getMask());
        return this;
    }
    
    @Deprecated
    public final void disableGeneratorFeature(final JsonGenerator.Feature feature) {
        this.disable(feature);
    }
    
    public final void disableParserFeature(final JsonParser.Feature feature) {
        this.disable(feature);
    }
    
    public JsonFactory enable(final JsonGenerator.Feature feature) {
        this._generatorFeatures |= feature.getMask();
        return this;
    }
    
    public JsonFactory enable(final JsonParser.Feature feature) {
        this._parserFeatures |= feature.getMask();
        return this;
    }
    
    @Deprecated
    public final void enableGeneratorFeature(final JsonGenerator.Feature feature) {
        this.enable(feature);
    }
    
    public final void enableParserFeature(final JsonParser.Feature feature) {
        this.enable(feature);
    }
    
    public CharacterEscapes getCharacterEscapes() {
        return this._characterEscapes;
    }
    
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }
    
    public String getFormatName() {
        if (this.getClass() == JsonFactory.class) {
            return "JSON";
        }
        return null;
    }
    
    public InputDecorator getInputDecorator() {
        return this._inputDecorator;
    }
    
    public OutputDecorator getOutputDecorator() {
        return this._outputDecorator;
    }
    
    public MatchStrength hasFormat(final InputAccessor inputAccessor) throws IOException {
        if (this.getClass() == JsonFactory.class) {
            return this.hasJSONFormat(inputAccessor);
        }
        return null;
    }
    
    protected MatchStrength hasJSONFormat(final InputAccessor inputAccessor) throws IOException {
        return ByteSourceBootstrapper.hasJSONFormat(inputAccessor);
    }
    
    public final boolean isEnabled(final JsonGenerator.Feature feature) {
        return (this._generatorFeatures & feature.getMask()) != 0x0;
    }
    
    public final boolean isEnabled(final JsonParser.Feature feature) {
        return (this._parserFeatures & feature.getMask()) != 0x0;
    }
    
    @Deprecated
    public final boolean isGeneratorFeatureEnabled(final JsonGenerator.Feature feature) {
        return this.isEnabled(feature);
    }
    
    public final boolean isParserFeatureEnabled(final JsonParser.Feature feature) {
        return (this._parserFeatures & feature.getMask()) != 0x0;
    }
    
    public JsonFactory setCharacterEscapes(final CharacterEscapes characterEscapes) {
        this._characterEscapes = characterEscapes;
        return this;
    }
    
    public JsonFactory setCodec(final ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }
    
    @Deprecated
    public final void setGeneratorFeature(final JsonGenerator.Feature feature, final boolean b) {
        this.configure(feature, b);
    }
    
    public JsonFactory setInputDecorator(final InputDecorator inputDecorator) {
        this._inputDecorator = inputDecorator;
        return this;
    }
    
    public JsonFactory setOutputDecorator(final OutputDecorator outputDecorator) {
        this._outputDecorator = outputDecorator;
        return this;
    }
    
    public final void setParserFeature(final JsonParser.Feature feature, final boolean b) {
        this.configure(feature, b);
    }
    
    @Override
    public Version version() {
        return VersionUtil.versionFor(Utf8Generator.class);
    }
}

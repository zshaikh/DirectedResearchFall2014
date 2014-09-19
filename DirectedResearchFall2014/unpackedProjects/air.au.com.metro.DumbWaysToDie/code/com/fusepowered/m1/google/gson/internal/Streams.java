package com.fusepowered.m1.google.gson.internal;

import com.fusepowered.m1.google.gson.internal.bind.*;
import com.fusepowered.m1.google.gson.*;
import com.fusepowered.m1.google.gson.stream.*;
import java.io.*;

public final class Streams
{
    public static JsonElement parse(final JsonReader jsonReader) throws JsonParseException {
        boolean b = true;
        try {
            jsonReader.peek();
            b = false;
            return TypeAdapters.JSON_ELEMENT.read(jsonReader);
        }
        catch (EOFException ex) {
            if (b) {
                return JsonNull.INSTANCE;
            }
            throw new JsonSyntaxException(ex);
        }
        catch (MalformedJsonException ex2) {
            throw new JsonSyntaxException(ex2);
        }
        catch (IOException ex3) {
            throw new JsonIOException(ex3);
        }
        catch (NumberFormatException ex4) {
            throw new JsonSyntaxException(ex4);
        }
    }
    
    public static void write(final JsonElement jsonElement, final JsonWriter jsonWriter) throws IOException {
        TypeAdapters.JSON_ELEMENT.write(jsonWriter, jsonElement);
    }
    
    public static Writer writerForAppendable(final Appendable appendable) {
        if (appendable instanceof Writer) {
            return (Writer)appendable;
        }
        return new AppendableWriter(appendable);
    }
    
    private static final class AppendableWriter extends Writer
    {
        private final Appendable appendable;
        private final CurrentWrite currentWrite;
        
        private AppendableWriter(final Appendable appendable) {
            super();
            this.currentWrite = new CurrentWrite();
            this.appendable = appendable;
        }
        
        @Override
        public void close() {
        }
        
        @Override
        public void flush() {
        }
        
        @Override
        public void write(final int n) throws IOException {
            this.appendable.append((char)n);
        }
        
        @Override
        public void write(final char[] chars, final int n, final int n2) throws IOException {
            this.currentWrite.chars = chars;
            this.appendable.append(this.currentWrite, n, n + n2);
        }
        
        static class CurrentWrite implements CharSequence
        {
            char[] chars;
            
            @Override
            public char charAt(final int n) {
                return this.chars[n];
            }
            
            @Override
            public int length() {
                return this.chars.length;
            }
            
            @Override
            public CharSequence subSequence(final int offset, final int n) {
                return new String(this.chars, offset, n - offset);
            }
        }
    }
}

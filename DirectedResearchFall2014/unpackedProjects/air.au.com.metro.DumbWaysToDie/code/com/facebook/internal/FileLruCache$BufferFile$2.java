package com.facebook.internal;

import java.io.*;

final class FileLruCache$BufferFile$2 implements FilenameFilter
{
    @Override
    public final boolean accept(final File file, final String s) {
        return s.startsWith("buffer");
    }
}

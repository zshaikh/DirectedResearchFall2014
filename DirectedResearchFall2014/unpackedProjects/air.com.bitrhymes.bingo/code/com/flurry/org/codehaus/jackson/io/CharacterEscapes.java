package com.flurry.org.codehaus.jackson.io;

import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class CharacterEscapes
{
    public static final int ESCAPE_CUSTOM = -2;
    public static final int ESCAPE_NONE = 0;
    public static final int ESCAPE_STANDARD = -1;
    
    public static int[] standardAsciiEscapesForJSON() {
        final int[] get7BitOutputEscapes = CharTypes.get7BitOutputEscapes();
        final int[] array = new int[get7BitOutputEscapes.length];
        System.arraycopy(get7BitOutputEscapes, 0, array, 0, get7BitOutputEscapes.length);
        return array;
    }
    
    public abstract int[] getEscapeCodesForAscii();
    
    public abstract SerializableString getEscapeSequence(final int p0);
}

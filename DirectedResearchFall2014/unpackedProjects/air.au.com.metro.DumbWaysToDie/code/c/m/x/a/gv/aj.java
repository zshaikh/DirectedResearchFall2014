package c.m.x.a.gv;

import android.util.*;
import java.io.*;

public final class aj extends Writer
{
    private final String a;
    private StringBuilder b;
    
    public aj(final String a) {
        super();
        this.b = new StringBuilder(128);
        this.a = a;
    }
    
    private void a() {
        if (this.b.length() > 0) {
            Log.d(this.a, this.b.toString());
            this.b.delete(0, this.b.length());
        }
    }
    
    @Override
    public final void close() {
        this.a();
    }
    
    @Override
    public final void flush() {
        this.a();
    }
    
    @Override
    public final void write(final char[] array, final int n, final int n2) {
        for (int i = 0; i < n2; ++i) {
            final char c = array[n + i];
            if (c == '\n') {
                this.a();
            }
            else {
                this.b.append(c);
            }
        }
    }
}

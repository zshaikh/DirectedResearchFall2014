package c.m.x.a.iab;

public final class c extends Exception
{
    p a;
    
    public c(final int n, final String s) {
        this(new p(n, s));
    }
    
    public c(final int n, final String s, final Exception ex) {
        this(new p(n, s), ex);
    }
    
    private c(final p p) {
        this(p, null);
    }
    
    private c(final p a, final Exception cause) {
        super(a.b, cause);
        this.a = a;
    }
    
    public final p a() {
        return this.a;
    }
}

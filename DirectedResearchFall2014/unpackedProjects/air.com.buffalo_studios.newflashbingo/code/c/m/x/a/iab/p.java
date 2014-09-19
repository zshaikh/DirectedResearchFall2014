package c.m.x.a.iab;

public final class p
{
    int a;
    String b;
    
    public p(final int a, final String str) {
        super();
        this.a = a;
        if (str == null || str.trim().length() == 0) {
            this.b = d.a(a);
            return;
        }
        this.b = str + " (response: " + d.a(a) + ")";
    }
    
    public final int a() {
        return this.a;
    }
    
    public final String b() {
        return this.b;
    }
    
    public final boolean c() {
        return this.a == 0;
    }
    
    public final boolean d() {
        return !this.c();
    }
    
    @Override
    public final String toString() {
        return "IabResult: " + this.b;
    }
}

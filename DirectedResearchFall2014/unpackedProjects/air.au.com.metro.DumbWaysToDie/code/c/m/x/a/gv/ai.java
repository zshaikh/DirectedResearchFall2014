package c.m.x.a.gv;

public final class ai
{
    public static void a(final Object o, final StringBuilder sb) {
        if (o == null) {
            sb.append("null");
            return;
        }
        String str = o.getClass().getSimpleName();
        if (str == null || str.length() <= 0) {
            str = o.getClass().getName();
            final int lastIndex = str.lastIndexOf(46);
            if (lastIndex > 0) {
                str = str.substring(lastIndex + 1);
            }
        }
        sb.append(str);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(o)));
    }
}

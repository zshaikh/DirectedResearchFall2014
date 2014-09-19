package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.reflect.*;

public abstract class AnnotatedMember extends Annotated
{
    protected final AnnotationMap _annotations;
    
    protected AnnotatedMember(final AnnotationMap annotations) {
        super();
        this._annotations = annotations;
    }
    
    public final void fixAccess() {
        ClassUtil.checkAndFixAccess(this.getMember());
    }
    
    @Override
    protected AnnotationMap getAllAnnotations() {
        return this._annotations;
    }
    
    public abstract Class<?> getDeclaringClass();
    
    public abstract Member getMember();
    
    public abstract void setValue(final Object p0, final Object p1) throws UnsupportedOperationException, IllegalArgumentException;
}

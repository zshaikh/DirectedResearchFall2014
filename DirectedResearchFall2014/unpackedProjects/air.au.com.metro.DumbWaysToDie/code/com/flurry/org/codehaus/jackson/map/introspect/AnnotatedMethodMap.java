package com.flurry.org.codehaus.jackson.map.introspect;

import java.lang.reflect.*;
import java.util.*;

public final class AnnotatedMethodMap implements Iterable<AnnotatedMethod>
{
    protected LinkedHashMap<MemberKey, AnnotatedMethod> _methods;
    
    public void add(final AnnotatedMethod value) {
        if (this._methods == null) {
            this._methods = new LinkedHashMap<MemberKey, AnnotatedMethod>();
        }
        this._methods.put(new MemberKey(value.getAnnotated()), value);
    }
    
    public AnnotatedMethod find(final String s, final Class<?>[] array) {
        if (this._methods == null) {
            return null;
        }
        return this._methods.get(new MemberKey(s, array));
    }
    
    public AnnotatedMethod find(final Method method) {
        if (this._methods == null) {
            return null;
        }
        return this._methods.get(new MemberKey(method));
    }
    
    public boolean isEmpty() {
        return this._methods == null || this._methods.size() == 0;
    }
    
    @Override
    public Iterator<AnnotatedMethod> iterator() {
        if (this._methods != null) {
            return this._methods.values().iterator();
        }
        return Collections.emptyList().iterator();
    }
    
    public AnnotatedMethod remove(final AnnotatedMethod annotatedMethod) {
        return this.remove(annotatedMethod.getAnnotated());
    }
    
    public AnnotatedMethod remove(final Method method) {
        if (this._methods != null) {
            return this._methods.remove(new MemberKey(method));
        }
        return null;
    }
    
    public int size() {
        if (this._methods == null) {
            return 0;
        }
        return this._methods.size();
    }
}

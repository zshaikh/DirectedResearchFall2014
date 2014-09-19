package com.flurry.org.codehaus.jackson.map.exc;

import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.*;

public class UnrecognizedPropertyException extends JsonMappingException
{
    private static final long serialVersionUID = 1L;
    protected final Class<?> _referringClass;
    protected final String _unrecognizedPropertyName;
    
    public UnrecognizedPropertyException(final String s, final JsonLocation jsonLocation, final Class<?> referringClass, final String unrecognizedPropertyName) {
        super(s, jsonLocation);
        this._referringClass = referringClass;
        this._unrecognizedPropertyName = unrecognizedPropertyName;
    }
    
    public static UnrecognizedPropertyException from(final JsonParser jsonParser, final Object o, final String str) {
        if (o == null) {
            throw new IllegalArgumentException();
        }
        Class<?> class1;
        if (o instanceof Class) {
            class1 = (Class<?>)o;
        }
        else {
            class1 = o.getClass();
        }
        final UnrecognizedPropertyException ex = new UnrecognizedPropertyException("Unrecognized field \"" + str + "\" (Class " + class1.getName() + "), not marked as ignorable", jsonParser.getCurrentLocation(), class1, str);
        ex.prependPath(o, str);
        return ex;
    }
    
    public Class<?> getReferringClass() {
        return this._referringClass;
    }
    
    public String getUnrecognizedPropertyName() {
        return this._unrecognizedPropertyName;
    }
}

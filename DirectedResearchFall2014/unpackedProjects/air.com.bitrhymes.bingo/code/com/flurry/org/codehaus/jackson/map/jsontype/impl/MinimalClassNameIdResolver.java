package com.flurry.org.codehaus.jackson.map.jsontype.impl;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public class MinimalClassNameIdResolver extends ClassNameIdResolver
{
    protected final String _basePackageName;
    protected final String _basePackagePrefix;
    
    protected MinimalClassNameIdResolver(final JavaType javaType, final TypeFactory typeFactory) {
        super(javaType, typeFactory);
        final String name = javaType.getRawClass().getName();
        final int lastIndex = name.lastIndexOf(46);
        if (lastIndex < 0) {
            this._basePackageName = "";
            this._basePackagePrefix = ".";
            return;
        }
        this._basePackagePrefix = name.substring(0, lastIndex + 1);
        this._basePackageName = name.substring(0, lastIndex);
    }
    
    @Override
    public JsonTypeInfo.Id getMechanism() {
        return JsonTypeInfo.Id.MINIMAL_CLASS;
    }
    
    @Override
    public String idFromValue(final Object o) {
        final String name = o.getClass().getName();
        if (name.startsWith(this._basePackagePrefix)) {
            return name.substring(this._basePackagePrefix.length() - 1);
        }
        return name;
    }
    
    @Override
    public JavaType typeFromId(String string) {
        if (string.startsWith(".")) {
            final StringBuilder sb = new StringBuilder(string.length() + this._basePackageName.length());
            if (this._basePackageName.length() == 0) {
                sb.append(string.substring(1));
            }
            else {
                sb.append(this._basePackageName).append(string);
            }
            string = sb.toString();
        }
        return super.typeFromId(string);
    }
}

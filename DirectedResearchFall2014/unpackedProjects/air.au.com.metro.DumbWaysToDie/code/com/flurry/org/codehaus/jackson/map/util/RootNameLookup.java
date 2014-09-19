package com.flurry.org.codehaus.jackson.map.util;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.io.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;

public class RootNameLookup
{
    protected LRUMap<ClassKey, SerializedString> _rootNames;
    
    public SerializedString findRootName(final JavaType javaType, final MapperConfig<?> mapperConfig) {
        return this.findRootName(javaType.getRawClass(), mapperConfig);
    }
    
    public SerializedString findRootName(final Class<?> clazz, final MapperConfig<?> mapperConfig) {
        synchronized (this) {
            final ClassKey classKey = new ClassKey(clazz);
            if (this._rootNames == null) {
                this._rootNames = new LRUMap<ClassKey, SerializedString>(20, 200);
            }
            else {
                final SerializedString value = this._rootNames.get(classKey);
                if (value != null) {
                    return value;
                }
            }
            String s = mapperConfig.getAnnotationIntrospector().findRootName(mapperConfig.introspectClassAnnotations(clazz).getClassInfo());
            if (s == null) {
                s = clazz.getSimpleName();
            }
            final SerializedString value = new SerializedString(s);
            this._rootNames.put(classKey, value);
            return value;
        }
    }
}

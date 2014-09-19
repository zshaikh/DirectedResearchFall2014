package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;

public abstract class ClassIntrospector<T extends BeanDescription>
{
    public abstract T forClassAnnotations(final MapperConfig<?> p0, final JavaType p1, final MixInResolver p2);
    
    @Deprecated
    public T forClassAnnotations(final MapperConfig<?> mapperConfig, final Class<?> clazz, final MixInResolver mixInResolver) {
        return this.forClassAnnotations(mapperConfig, mapperConfig.constructType(clazz), mixInResolver);
    }
    
    public abstract T forCreation(final DeserializationConfig p0, final JavaType p1, final MixInResolver p2);
    
    public abstract T forDeserialization(final DeserializationConfig p0, final JavaType p1, final MixInResolver p2);
    
    public abstract T forDirectClassAnnotations(final MapperConfig<?> p0, final JavaType p1, final MixInResolver p2);
    
    @Deprecated
    public T forDirectClassAnnotations(final MapperConfig<?> mapperConfig, final Class<?> clazz, final MixInResolver mixInResolver) {
        return this.forDirectClassAnnotations(mapperConfig, mapperConfig.constructType(clazz), mixInResolver);
    }
    
    public abstract T forSerialization(final SerializationConfig p0, final JavaType p1, final MixInResolver p2);
    
    public interface MixInResolver
    {
        Class<?> findMixInClassFor(Class<?> p0);
    }
}

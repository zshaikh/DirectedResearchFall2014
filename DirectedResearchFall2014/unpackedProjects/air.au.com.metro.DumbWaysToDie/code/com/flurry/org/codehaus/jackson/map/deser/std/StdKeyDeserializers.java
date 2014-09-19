package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.reflect.*;

public class StdKeyDeserializers
{
    protected final HashMap<JavaType, KeyDeserializer> _keyDeserializers;
    
    protected StdKeyDeserializers() {
        super();
        this._keyDeserializers = new HashMap<JavaType, KeyDeserializer>();
        this.add(new StdKeyDeserializer.BoolKD());
        this.add(new StdKeyDeserializer.ByteKD());
        this.add(new StdKeyDeserializer.CharKD());
        this.add(new StdKeyDeserializer.ShortKD());
        this.add(new StdKeyDeserializer.IntKD());
        this.add(new StdKeyDeserializer.LongKD());
        this.add(new StdKeyDeserializer.FloatKD());
        this.add(new StdKeyDeserializer.DoubleKD());
        this.add(new StdKeyDeserializer.DateKD());
        this.add(new StdKeyDeserializer.CalendarKD());
        this.add(new StdKeyDeserializer.UuidKD());
    }
    
    private void add(final StdKeyDeserializer value) {
        this._keyDeserializers.put(TypeFactory.defaultInstance().uncheckedSimpleType(value.getKeyClass()), value);
    }
    
    public static HashMap<JavaType, KeyDeserializer> constructAll() {
        return new StdKeyDeserializers()._keyDeserializers;
    }
    
    public static KeyDeserializer constructEnumKeyDeserializer(final EnumResolver<?> enumResolver) {
        return new StdKeyDeserializer.EnumKD(enumResolver, null);
    }
    
    public static KeyDeserializer constructEnumKeyDeserializer(final EnumResolver<?> enumResolver, final AnnotatedMethod annotatedMethod) {
        return new StdKeyDeserializer.EnumKD(enumResolver, annotatedMethod);
    }
    
    public static KeyDeserializer constructStringKeyDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        return StdKeyDeserializer.StringKD.forType(javaType.getClass());
    }
    
    public static KeyDeserializer findStringBasedKeyDeserializer(final DeserializationConfig deserializationConfig, final JavaType javaType) {
        final BasicBeanDescription basicBeanDescription = deserializationConfig.introspect(javaType);
        final Constructor<?> singleArgConstructor = basicBeanDescription.findSingleArgConstructor(String.class);
        if (singleArgConstructor != null) {
            if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                ClassUtil.checkAndFixAccess(singleArgConstructor);
            }
            return new StdKeyDeserializer.StringCtorKeyDeserializer(singleArgConstructor);
        }
        final Method factoryMethod = basicBeanDescription.findFactoryMethod(String.class);
        if (factoryMethod != null) {
            if (deserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                ClassUtil.checkAndFixAccess(factoryMethod);
            }
            return new StdKeyDeserializer.StringFactoryKeyDeserializer(factoryMethod);
        }
        return null;
    }
}

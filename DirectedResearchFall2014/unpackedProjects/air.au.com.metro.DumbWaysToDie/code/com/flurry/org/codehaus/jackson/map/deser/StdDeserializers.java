package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.map.type.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.deser.std.*;
import java.util.*;

class StdDeserializers
{
    final HashMap<ClassKey, JsonDeserializer<Object>> _deserializers;
    
    private StdDeserializers() {
        super();
        this._deserializers = new HashMap<ClassKey, JsonDeserializer<Object>>();
        this.add(new UntypedObjectDeserializer());
        final StringDeserializer stringDeserializer = new StringDeserializer();
        this.add(stringDeserializer, String.class);
        this.add(stringDeserializer, CharSequence.class);
        this.add(new ClassDeserializer());
        this.add(new StdDeserializer.BooleanDeserializer(Boolean.class, null));
        this.add(new StdDeserializer.ByteDeserializer(Byte.class, null));
        this.add(new StdDeserializer.ShortDeserializer(Short.class, null));
        this.add(new StdDeserializer.CharacterDeserializer(Character.class, null));
        this.add(new StdDeserializer.IntegerDeserializer(Integer.class, null));
        this.add(new StdDeserializer.LongDeserializer(Long.class, null));
        this.add(new StdDeserializer.FloatDeserializer(Float.class, null));
        this.add(new StdDeserializer.DoubleDeserializer(Double.class, null));
        this.add(new StdDeserializer.BooleanDeserializer(Boolean.TYPE, Boolean.FALSE));
        this.add(new StdDeserializer.ByteDeserializer(Byte.TYPE, Byte.valueOf((byte)0)));
        this.add(new StdDeserializer.ShortDeserializer(Short.TYPE, Short.valueOf((short)0)));
        this.add(new StdDeserializer.CharacterDeserializer(Character.TYPE, Character.valueOf('\0')));
        this.add(new StdDeserializer.IntegerDeserializer(Integer.TYPE, Integer.valueOf(0)));
        this.add(new StdDeserializer.LongDeserializer(Long.TYPE, Long.valueOf(0L)));
        this.add(new StdDeserializer.FloatDeserializer(Float.TYPE, Float.valueOf(0.0f)));
        this.add(new StdDeserializer.DoubleDeserializer(Double.TYPE, Double.valueOf(0.0)));
        this.add(new StdDeserializer.NumberDeserializer());
        this.add(new StdDeserializer.BigDecimalDeserializer());
        this.add(new StdDeserializer.BigIntegerDeserializer());
        this.add(new CalendarDeserializer());
        this.add(new DateDeserializer());
        this.add(new CalendarDeserializer(GregorianCalendar.class), GregorianCalendar.class);
        this.add(new StdDeserializer.SqlDateDeserializer());
        this.add(new TimestampDeserializer());
        final Iterator<FromStringDeserializer<?>> iterator = FromStringDeserializer.all().iterator();
        while (iterator.hasNext()) {
            this.add(iterator.next());
        }
        this.add(new StdDeserializer.StackTraceElementDeserializer());
        this.add(new AtomicBooleanDeserializer());
        this.add(new TokenBufferDeserializer());
        this.add(new JavaTypeDeserializer());
    }
    
    private void add(final StdDeserializer<?> stdDeserializer) {
        this.add(stdDeserializer, stdDeserializer.getValueClass());
    }
    
    private void add(final StdDeserializer<?> value, final Class<?> clazz) {
        this._deserializers.put(new ClassKey(clazz), (JsonDeserializer<Object>)value);
    }
    
    public static HashMap<ClassKey, JsonDeserializer<Object>> constructAll() {
        return new StdDeserializers()._deserializers;
    }
}

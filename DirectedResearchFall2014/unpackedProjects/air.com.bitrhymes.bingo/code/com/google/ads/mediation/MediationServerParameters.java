package com.google.ads.mediation;

import java.lang.reflect.*;
import com.google.ads.util.*;
import java.util.*;
import java.lang.annotation.*;

public abstract class MediationServerParameters
{
    protected void a() {
    }
    
    public void load(final Map<String, String> map) throws MappingException {
        final HashMap<Object, Field> hashMap = new HashMap<Object, Field>();
        for (final Field field : this.getClass().getFields()) {
            final Parameter parameter = field.getAnnotation(Parameter.class);
            if (parameter != null) {
                hashMap.put(parameter.name(), field);
            }
        }
        if (hashMap.isEmpty()) {
            b.e("No server options fields detected.  To suppress this message either add a field with the @Parameter annotation, or override the load() method");
        }
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            final Field field2 = hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                }
                catch (IllegalAccessException ex) {
                    b.b("Server Option '" + entry.getKey() + "' could not be set: Illegal Access");
                }
                catch (IllegalArgumentException ex2) {
                    b.b("Server Option '" + entry.getKey() + "' could not be set: Bad Type");
                }
            }
            else {
                b.e("Unexpected Server Option: " + entry.getKey() + " = '" + entry.getValue() + "'");
            }
        }
        final Iterator<Field> iterator2 = hashMap.values().iterator();
        String s = null;
        while (iterator2.hasNext()) {
            final Field field3 = iterator2.next();
            String string2;
            if (field3.getAnnotation(Parameter.class).required()) {
                b.b("Required Server Option missing: " + field3.getAnnotation(Parameter.class).name());
                final StringBuilder sb = new StringBuilder();
                String string;
                if (s == null) {
                    string = "";
                }
                else {
                    string = s + ", ";
                }
                string2 = sb.append(string).append(field3.getAnnotation(Parameter.class).name()).toString();
            }
            else {
                string2 = s;
            }
            s = string2;
        }
        if (s != null) {
            throw new MappingException("Required Server Option(s) missing: " + s);
        }
        this.a();
    }
    
    public static class MappingException extends Exception
    {
        public MappingException(final String message) {
            super(message);
        }
    }
    
    @Retention(RetentionPolicy.RUNTIME)
    @Target({ ElementType.FIELD })
    protected @interface Parameter {
        String name();
        
        boolean required() default true;
    }
}

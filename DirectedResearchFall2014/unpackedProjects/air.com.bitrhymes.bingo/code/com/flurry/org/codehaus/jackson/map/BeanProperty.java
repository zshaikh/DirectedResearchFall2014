package com.flurry.org.codehaus.jackson.map;

import java.lang.annotation.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;

public interface BeanProperty extends Named
{
     <A extends Annotation> A getAnnotation(Class<A> p0);
    
     <A extends Annotation> A getContextAnnotation(Class<A> p0);
    
    AnnotatedMember getMember();
    
    String getName();
    
    JavaType getType();
    
    public static class Std implements BeanProperty
    {
        protected final Annotations _contextAnnotations;
        protected final AnnotatedMember _member;
        protected final String _name;
        protected final JavaType _type;
        
        public Std(String name, JavaType type, Annotations contextAnnotations, AnnotatedMember member) {
            super();
            this._name = name;
            this._type = type;
            this._member = member;
            this._contextAnnotations = contextAnnotations;
        }
        
        @Override
        public <A extends Annotation> A getAnnotation(Class<A> clazz) {
            return this._member.getAnnotation(clazz);
        }
        
        @Override
        public <A extends Annotation> A getContextAnnotation(Class<A> clazz) {
            if (this._contextAnnotations == null) {
                return null;
            }
            return this._contextAnnotations.get(clazz);
        }
        
        @Override
        public AnnotatedMember getMember() {
            return this._member;
        }
        
        @Override
        public String getName() {
            return this._name;
        }
        
        @Override
        public JavaType getType() {
            return this._type;
        }
        
        public Std withType(JavaType javaType) {
            return new Std(this._name, javaType, this._contextAnnotations, this._member);
        }
    }
}

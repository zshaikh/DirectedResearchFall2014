package com.flurry.org.codehaus.jackson.map.introspect;

import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.annotate.*;

public interface VisibilityChecker<T extends VisibilityChecker<T>>
{
    boolean isCreatorVisible(AnnotatedMember p0);
    
    boolean isCreatorVisible(Member p0);
    
    boolean isFieldVisible(AnnotatedField p0);
    
    boolean isFieldVisible(Field p0);
    
    boolean isGetterVisible(AnnotatedMethod p0);
    
    boolean isGetterVisible(Method p0);
    
    boolean isIsGetterVisible(AnnotatedMethod p0);
    
    boolean isIsGetterVisible(Method p0);
    
    boolean isSetterVisible(AnnotatedMethod p0);
    
    boolean isSetterVisible(Method p0);
    
    T with(JsonAutoDetect.Visibility p0);
    
    T with(JsonAutoDetect p0);
    
    T withCreatorVisibility(JsonAutoDetect.Visibility p0);
    
    T withFieldVisibility(JsonAutoDetect.Visibility p0);
    
    T withGetterVisibility(JsonAutoDetect.Visibility p0);
    
    T withIsGetterVisibility(JsonAutoDetect.Visibility p0);
    
    T withSetterVisibility(JsonAutoDetect.Visibility p0);
    
    T withVisibility(JsonMethod p0, JsonAutoDetect.Visibility p1);
    
    @JsonAutoDetect(creatorVisibility = JsonAutoDetect.Visibility.ANY, fieldVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, getterVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, isGetterVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, setterVisibility = JsonAutoDetect.Visibility.ANY)
    public static class Std implements VisibilityChecker<Std>
    {
        protected static final Std DEFAULT;
        protected final JsonAutoDetect.Visibility _creatorMinLevel;
        protected final JsonAutoDetect.Visibility _fieldMinLevel;
        protected final JsonAutoDetect.Visibility _getterMinLevel;
        protected final JsonAutoDetect.Visibility _isGetterMinLevel;
        protected final JsonAutoDetect.Visibility _setterMinLevel;
        
        static {
            DEFAULT = new Std(Std.class.getAnnotation(JsonAutoDetect.class));
        }
        
        public Std(JsonAutoDetect.Visibility fieldMinLevel) {
            super();
            if (fieldMinLevel == JsonAutoDetect.Visibility.DEFAULT) {
                this._getterMinLevel = Std.DEFAULT._getterMinLevel;
                this._isGetterMinLevel = Std.DEFAULT._isGetterMinLevel;
                this._setterMinLevel = Std.DEFAULT._setterMinLevel;
                this._creatorMinLevel = Std.DEFAULT._creatorMinLevel;
                this._fieldMinLevel = Std.DEFAULT._fieldMinLevel;
                return;
            }
            this._getterMinLevel = fieldMinLevel;
            this._isGetterMinLevel = fieldMinLevel;
            this._setterMinLevel = fieldMinLevel;
            this._creatorMinLevel = fieldMinLevel;
            this._fieldMinLevel = fieldMinLevel;
        }
        
        public Std(JsonAutoDetect.Visibility getterMinLevel, JsonAutoDetect.Visibility isGetterMinLevel, JsonAutoDetect.Visibility setterMinLevel, JsonAutoDetect.Visibility creatorMinLevel, JsonAutoDetect.Visibility fieldMinLevel) {
            super();
            this._getterMinLevel = getterMinLevel;
            this._isGetterMinLevel = isGetterMinLevel;
            this._setterMinLevel = setterMinLevel;
            this._creatorMinLevel = creatorMinLevel;
            this._fieldMinLevel = fieldMinLevel;
        }
        
        public Std(JsonAutoDetect jsonAutoDetect) {
            JsonMethod[] value;
            JsonAutoDetect.Visibility getterMinLevel;
            JsonAutoDetect.Visibility isGetterMinLevel;
            JsonAutoDetect.Visibility setterMinLevel;
            JsonAutoDetect.Visibility creatorMinLevel;
            JsonAutoDetect.Visibility fieldMinLevel;
            super();
            value = jsonAutoDetect.value();
            if (hasMethod(value, JsonMethod.GETTER)) {
                getterMinLevel = jsonAutoDetect.getterVisibility();
            }
            else {
                getterMinLevel = JsonAutoDetect.Visibility.NONE;
            }
            this._getterMinLevel = getterMinLevel;
            if (hasMethod(value, JsonMethod.IS_GETTER)) {
                isGetterMinLevel = jsonAutoDetect.isGetterVisibility();
            }
            else {
                isGetterMinLevel = JsonAutoDetect.Visibility.NONE;
            }
            this._isGetterMinLevel = isGetterMinLevel;
            if (hasMethod(value, JsonMethod.SETTER)) {
                setterMinLevel = jsonAutoDetect.setterVisibility();
            }
            else {
                setterMinLevel = JsonAutoDetect.Visibility.NONE;
            }
            this._setterMinLevel = setterMinLevel;
            if (hasMethod(value, JsonMethod.CREATOR)) {
                creatorMinLevel = jsonAutoDetect.creatorVisibility();
            }
            else {
                creatorMinLevel = JsonAutoDetect.Visibility.NONE;
            }
            this._creatorMinLevel = creatorMinLevel;
            if (hasMethod(value, JsonMethod.FIELD)) {
                fieldMinLevel = jsonAutoDetect.fieldVisibility();
            }
            else {
                fieldMinLevel = JsonAutoDetect.Visibility.NONE;
            }
            this._fieldMinLevel = fieldMinLevel;
        }
        
        public static Std defaultInstance() {
            return Std.DEFAULT;
        }
        
        private static boolean hasMethod(JsonMethod[] array, JsonMethod jsonMethod) {
            int length;
            int i;
            JsonMethod jsonMethod2;
            for (final JsonMethod jsonMethod2 : array) {
                if (jsonMethod2 == jsonMethod || jsonMethod2 == JsonMethod.ALL) {
                    return true;
                }
            }
            return false;
        }
        
        @Override
        public boolean isCreatorVisible(AnnotatedMember annotatedMember) {
            return this.isCreatorVisible(annotatedMember.getMember());
        }
        
        @Override
        public boolean isCreatorVisible(Member member) {
            return this._creatorMinLevel.isVisible(member);
        }
        
        @Override
        public boolean isFieldVisible(AnnotatedField annotatedField) {
            return this.isFieldVisible(annotatedField.getAnnotated());
        }
        
        @Override
        public boolean isFieldVisible(Field field) {
            return this._fieldMinLevel.isVisible(field);
        }
        
        @Override
        public boolean isGetterVisible(AnnotatedMethod annotatedMethod) {
            return this.isGetterVisible(annotatedMethod.getAnnotated());
        }
        
        @Override
        public boolean isGetterVisible(Method method) {
            return this._getterMinLevel.isVisible(method);
        }
        
        @Override
        public boolean isIsGetterVisible(AnnotatedMethod annotatedMethod) {
            return this.isIsGetterVisible(annotatedMethod.getAnnotated());
        }
        
        @Override
        public boolean isIsGetterVisible(Method method) {
            return this._isGetterMinLevel.isVisible(method);
        }
        
        @Override
        public boolean isSetterVisible(AnnotatedMethod annotatedMethod) {
            return this.isSetterVisible(annotatedMethod.getAnnotated());
        }
        
        @Override
        public boolean isSetterVisible(Method method) {
            return this._setterMinLevel.isVisible(method);
        }
        
        @Override
        public String toString() {
            return "[Visibility:" + " getter: " + this._getterMinLevel + ", isGetter: " + this._isGetterMinLevel + ", setter: " + this._setterMinLevel + ", creator: " + this._creatorMinLevel + ", field: " + this._fieldMinLevel + "]";
        }
        
        @Override
        public Std with(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                return Std.DEFAULT;
            }
            return new Std(visibility);
        }
        
        @Override
        public Std with(JsonAutoDetect jsonAutoDetect) {
            JsonMethod[] value;
            JsonAutoDetect.Visibility visibility;
            Std withGetterVisibility;
            JsonAutoDetect.Visibility visibility2;
            Std withIsGetterVisibility;
            JsonAutoDetect.Visibility visibility3;
            Std withSetterVisibility;
            JsonAutoDetect.Visibility visibility4;
            Std withCreatorVisibility;
            JsonAutoDetect.Visibility visibility5;
            if (jsonAutoDetect == null) {
                return this;
            }
            value = jsonAutoDetect.value();
            if (hasMethod(value, JsonMethod.GETTER)) {
                visibility = jsonAutoDetect.getterVisibility();
            }
            else {
                visibility = JsonAutoDetect.Visibility.NONE;
            }
            withGetterVisibility = this.withGetterVisibility(visibility);
            if (hasMethod(value, JsonMethod.IS_GETTER)) {
                visibility2 = jsonAutoDetect.isGetterVisibility();
            }
            else {
                visibility2 = JsonAutoDetect.Visibility.NONE;
            }
            withIsGetterVisibility = withGetterVisibility.withIsGetterVisibility(visibility2);
            if (hasMethod(value, JsonMethod.SETTER)) {
                visibility3 = jsonAutoDetect.setterVisibility();
            }
            else {
                visibility3 = JsonAutoDetect.Visibility.NONE;
            }
            withSetterVisibility = withIsGetterVisibility.withSetterVisibility(visibility3);
            if (hasMethod(value, JsonMethod.CREATOR)) {
                visibility4 = jsonAutoDetect.creatorVisibility();
            }
            else {
                visibility4 = JsonAutoDetect.Visibility.NONE;
            }
            withCreatorVisibility = withSetterVisibility.withCreatorVisibility(visibility4);
            if (hasMethod(value, JsonMethod.FIELD)) {
                visibility5 = jsonAutoDetect.fieldVisibility();
            }
            else {
                visibility5 = JsonAutoDetect.Visibility.NONE;
            }
            return withCreatorVisibility.withFieldVisibility(visibility5);
        }
        
        @Override
        public Std withCreatorVisibility(JsonAutoDetect.Visibility creatorMinLevel) {
            if (creatorMinLevel == JsonAutoDetect.Visibility.DEFAULT) {
                creatorMinLevel = Std.DEFAULT._creatorMinLevel;
            }
            if (this._creatorMinLevel == creatorMinLevel) {
                return this;
            }
            return new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, creatorMinLevel, this._fieldMinLevel);
        }
        
        @Override
        public Std withFieldVisibility(JsonAutoDetect.Visibility fieldMinLevel) {
            if (fieldMinLevel == JsonAutoDetect.Visibility.DEFAULT) {
                fieldMinLevel = Std.DEFAULT._fieldMinLevel;
            }
            if (this._fieldMinLevel == fieldMinLevel) {
                return this;
            }
            return new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, fieldMinLevel);
        }
        
        @Override
        public Std withGetterVisibility(JsonAutoDetect.Visibility getterMinLevel) {
            if (getterMinLevel == JsonAutoDetect.Visibility.DEFAULT) {
                getterMinLevel = Std.DEFAULT._getterMinLevel;
            }
            if (this._getterMinLevel == getterMinLevel) {
                return this;
            }
            return new Std(getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }
        
        @Override
        public Std withIsGetterVisibility(JsonAutoDetect.Visibility isGetterMinLevel) {
            if (isGetterMinLevel == JsonAutoDetect.Visibility.DEFAULT) {
                isGetterMinLevel = Std.DEFAULT._isGetterMinLevel;
            }
            if (this._isGetterMinLevel == isGetterMinLevel) {
                return this;
            }
            return new Std(this._getterMinLevel, isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }
        
        @Override
        public Std withSetterVisibility(JsonAutoDetect.Visibility setterMinLevel) {
            if (setterMinLevel == JsonAutoDetect.Visibility.DEFAULT) {
                setterMinLevel = Std.DEFAULT._setterMinLevel;
            }
            if (this._setterMinLevel == setterMinLevel) {
                return this;
            }
            return new Std(this._getterMinLevel, this._isGetterMinLevel, setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }
        
        @Override
        public Std withVisibility(JsonMethod jsonMethod, JsonAutoDetect.Visibility visibility) {
            switch (jsonMethod) {
                default: {
                    return this;
                }
                case GETTER: {
                    return this.withGetterVisibility(visibility);
                }
                case SETTER: {
                    return this.withSetterVisibility(visibility);
                }
                case CREATOR: {
                    return this.withCreatorVisibility(visibility);
                }
                case FIELD: {
                    return this.withFieldVisibility(visibility);
                }
                case IS_GETTER: {
                    return this.withIsGetterVisibility(visibility);
                }
                case ALL: {
                    return this.with(visibility);
                }
            }
        }
    }
}

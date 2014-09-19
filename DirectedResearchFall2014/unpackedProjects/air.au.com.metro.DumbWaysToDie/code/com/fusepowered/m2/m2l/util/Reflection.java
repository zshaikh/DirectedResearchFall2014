package com.fusepowered.m2.m2l.util;

import java.lang.reflect.*;
import java.util.*;

public class Reflection
{
    public static Method getDeclaredMethodWithTraversal(final Class<?> clazz, final String name, final Class<?>... parameterTypes) throws NoSuchMethodException {
        Class<?> superclass = clazz;
        while (superclass != null) {
            try {
                return superclass.getDeclaredMethod(name, (Class[])parameterTypes);
            }
            catch (NoSuchMethodException ex) {
                superclass = superclass.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }
    
    public static class MethodBuilder
    {
        private final Class<?> mClass;
        private final Object mInstance;
        private boolean mIsAccessible;
        private final String mMethodName;
        private List<Class<?>> mParameterClasses;
        private List<Object> mParameters;
        
        public MethodBuilder(final Object mInstance, final String mMethodName) {
            super();
            this.mInstance = mInstance;
            this.mMethodName = mMethodName;
            this.mParameterClasses = new ArrayList<Class<?>>();
            this.mParameters = new ArrayList<Object>();
            Class<?> class1;
            if (mInstance != null) {
                class1 = mInstance.getClass();
            }
            else {
                class1 = null;
            }
            this.mClass = class1;
        }
        
        public <T> MethodBuilder addParam(final Class<T> clazz, final T t) {
            this.mParameterClasses.add(clazz);
            this.mParameters.add(t);
            return this;
        }
        
        public Object execute() throws Exception {
            final Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.mClass, this.mMethodName, (Class<?>[])this.mParameterClasses.toArray(new Class[this.mParameterClasses.size()]));
            if (this.mIsAccessible) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            return declaredMethodWithTraversal.invoke(this.mInstance, this.mParameters.toArray());
        }
        
        public MethodBuilder setAccessible() {
            this.mIsAccessible = true;
            return this;
        }
    }
}

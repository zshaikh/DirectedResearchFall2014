package com.fusepowered.m1.google.gson.internal;

import java.io.*;
import java.lang.reflect.*;

public abstract class UnsafeAllocator
{
    public static UnsafeAllocator create() {
        try {
            final Class<?> forName = Class.forName("sun.misc.Unsafe");
            final Field declaredField = forName.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new UnsafeAllocator() {
                final /* synthetic */ Method val$allocateInstance = forName.getMethod("allocateInstance", Class.class);
                final /* synthetic */ Object val$unsafe = declaredField.get(null);
                
                @Override
                public <T> T newInstance(final Class<T> clazz) throws Exception {
                    return (T)this.val$allocateInstance.invoke(this.val$unsafe, clazz);
                }
            };
        }
        catch (Exception ex) {
            try {
                final Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod.setAccessible(true);
                return new UnsafeAllocator() {
                    @Override
                    public <T> T newInstance(final Class<T> clazz) throws Exception {
                        return (T)declaredMethod.invoke(null, clazz, Object.class);
                    }
                };
            }
            catch (Exception ex2) {
                try {
                    final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod2.setAccessible(true);
                    final int intValue = (int)declaredMethod2.invoke(null, Object.class);
                    final Method declaredMethod3 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod3.setAccessible(true);
                    return new UnsafeAllocator() {
                        @Override
                        public <T> T newInstance(final Class<T> clazz) throws Exception {
                            return (T)declaredMethod3.invoke(null, clazz, intValue);
                        }
                    };
                }
                catch (Exception ex3) {
                    return new UnsafeAllocator() {
                        @Override
                        public <T> T newInstance(final Class<T> obj) {
                            throw new UnsupportedOperationException("Cannot allocate " + obj);
                        }
                    };
                }
            }
        }
    }
    
    public abstract <T> T newInstance(final Class<T> p0) throws Exception;
}

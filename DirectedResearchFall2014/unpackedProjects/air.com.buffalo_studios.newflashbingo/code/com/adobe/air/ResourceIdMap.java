package com.adobe.air;

import java.util.*;
import java.lang.reflect.*;
import android.content.res.*;

public class ResourceIdMap
{
    private static Hashtable<String, Hashtable<String, Integer>> s_resourceMap;
    private Hashtable<String, Integer> m_resourceIds;
    
    public ResourceIdMap(final Class<?> clazz) {
        super();
        this.init(clazz);
    }
    
    public ResourceIdMap(final String className) {
        super();
        try {
            this.init(Class.forName(className));
        }
        catch (ClassNotFoundException ex) {
            System.out.format("Class not found:  %s%n%n", className);
        }
    }
    
    private static void gatherResourceInfo(final Class<?> clazz, final Hashtable<String, Integer> hashtable) {
        for (final Class obj : clazz.getClasses()) {
            final String name = obj.getName();
            final int beginIndex = 1 + name.lastIndexOf(36);
            String substring;
            if (beginIndex > 0) {
                substring = name.substring(beginIndex);
            }
            else {
                substring = name;
            }
            for (final Field field : obj.getDeclaredFields()) {
                try {
                    final String intern = String.format("%s.%s", substring, field.getName()).intern();
                    if (hashtable.containsKey(intern)) {
                        System.out.format("Did not add duplicate resource key %s", intern);
                    }
                    else {
                        hashtable.put(intern, field.getInt(obj));
                    }
                }
                catch (IllegalArgumentException ex) {
                    System.out.format("IllegalArgumentException", new Object[0]);
                }
                catch (IllegalAccessException ex2) {
                    System.out.format("IllegalAccessException", new Object[0]);
                }
            }
        }
    }
    
    private void init(final Class<?> clazz) {
        if (ResourceIdMap.s_resourceMap == null) {
            ResourceIdMap.s_resourceMap = new Hashtable<String, Hashtable<String, Integer>>();
        }
        if (!ResourceIdMap.s_resourceMap.contains(clazz)) {
            gatherResourceInfo(clazz, this.m_resourceIds = new Hashtable<String, Integer>());
            ResourceIdMap.s_resourceMap.put(clazz.getName(), this.m_resourceIds);
            return;
        }
        this.m_resourceIds = ResourceIdMap.s_resourceMap.get(clazz);
    }
    
    public int getId(final String s) throws IllegalArgumentException, Resources$NotFoundException {
        if (s == null) {
            throw new IllegalArgumentException();
        }
        final String intern = s.intern();
        if (!this.m_resourceIds.containsKey(intern)) {
            throw new Resources$NotFoundException(intern);
        }
        return this.m_resourceIds.get(intern);
    }
}

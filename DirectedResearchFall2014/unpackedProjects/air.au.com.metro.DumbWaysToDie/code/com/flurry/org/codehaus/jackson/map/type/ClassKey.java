package com.flurry.org.codehaus.jackson.map.type;

public final class ClassKey implements Comparable<ClassKey>
{
    private Class<?> _class;
    private String _className;
    private int _hashCode;
    
    public ClassKey() {
        super();
        this._class = null;
        this._className = null;
        this._hashCode = 0;
    }
    
    public ClassKey(final Class<?> class1) {
        super();
        this._class = class1;
        this._className = class1.getName();
        this._hashCode = this._className.hashCode();
    }
    
    @Override
    public int compareTo(final ClassKey classKey) {
        return this._className.compareTo(classKey._className);
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && ((ClassKey)o)._class == this._class);
    }
    
    @Override
    public int hashCode() {
        return this._hashCode;
    }
    
    public void reset(final Class<?> class1) {
        this._class = class1;
        this._className = class1.getName();
        this._hashCode = this._className.hashCode();
    }
    
    @Override
    public String toString() {
        return this._className;
    }
}

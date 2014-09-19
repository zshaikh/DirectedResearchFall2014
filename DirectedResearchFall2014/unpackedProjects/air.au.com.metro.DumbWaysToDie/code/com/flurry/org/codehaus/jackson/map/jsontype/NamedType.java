package com.flurry.org.codehaus.jackson.map.jsontype;

public final class NamedType
{
    protected final Class<?> _class;
    protected final int _hashCode;
    protected String _name;
    
    public NamedType(final Class<?> clazz) {
        this(clazz, null);
    }
    
    public NamedType(final Class<?> class1, final String name) {
        super();
        this._class = class1;
        this._hashCode = class1.getName().hashCode();
        this.setName(name);
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o != null && o.getClass() == this.getClass() && this._class == ((NamedType)o)._class);
    }
    
    public String getName() {
        return this._name;
    }
    
    public Class<?> getType() {
        return this._class;
    }
    
    public boolean hasName() {
        return this._name != null;
    }
    
    @Override
    public int hashCode() {
        return this._hashCode;
    }
    
    public void setName(final String s) {
        String name;
        if (s == null || s.length() == 0) {
            name = null;
        }
        else {
            name = s;
        }
        this._name = name;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder().append("[NamedType, class ").append(this._class.getName()).append(", name: ");
        String string;
        if (this._name == null) {
            string = "null";
        }
        else {
            string = "'" + this._name + "'";
        }
        return append.append(string).append("]").toString();
    }
}

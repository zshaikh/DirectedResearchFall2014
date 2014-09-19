package com.flurry.org.codehaus.jackson.map.introspect;

import com.flurry.org.codehaus.jackson.map.*;

public class POJOPropertyBuilder extends BeanPropertyDefinition implements Comparable<POJOPropertyBuilder>
{
    protected Node<AnnotatedParameter> _ctorParameters;
    protected Node<AnnotatedField> _fields;
    protected Node<AnnotatedMethod> _getters;
    protected final String _internalName;
    protected final String _name;
    protected Node<AnnotatedMethod> _setters;
    
    public POJOPropertyBuilder(final POJOPropertyBuilder pojoPropertyBuilder, final String name) {
        super();
        this._internalName = pojoPropertyBuilder._internalName;
        this._name = name;
        this._fields = pojoPropertyBuilder._fields;
        this._ctorParameters = pojoPropertyBuilder._ctorParameters;
        this._getters = pojoPropertyBuilder._getters;
        this._setters = pojoPropertyBuilder._setters;
    }
    
    public POJOPropertyBuilder(final String s) {
        super();
        this._internalName = s;
        this._name = s;
    }
    
    private <T> boolean _anyExplicitNames(Node<T> next) {
        while (next != null) {
            if (next.explicitName != null && next.explicitName.length() > 0) {
                return true;
            }
            next = next.next;
        }
        return false;
    }
    
    private <T> boolean _anyIgnorals(Node<T> next) {
        while (next != null) {
            if (next.isMarkedIgnored) {
                return true;
            }
            next = next.next;
        }
        return false;
    }
    
    private <T> boolean _anyVisible(Node<T> next) {
        while (next != null) {
            if (next.isVisible) {
                return true;
            }
            next = next.next;
        }
        return false;
    }
    
    private AnnotationMap _mergeAnnotations(final int n, final Node<? extends AnnotatedMember>... array) {
        final AnnotationMap allAnnotations = ((AnnotatedMember)array[n].value).getAllAnnotations();
        for (int i = n + 1; i < array.length; ++i) {
            if (array[i] != null) {
                return AnnotationMap.merge(allAnnotations, this._mergeAnnotations(i, array));
            }
        }
        return allAnnotations;
    }
    
    private <T> Node<T> _removeIgnored(final Node<T> node) {
        if (node == null) {
            return node;
        }
        return node.withoutIgnored();
    }
    
    private <T> Node<T> _removeNonVisible(final Node<T> node) {
        if (node == null) {
            return node;
        }
        return node.withoutNonVisible();
    }
    
    private <T> Node<T> _trimByVisibility(final Node<T> node) {
        if (node == null) {
            return node;
        }
        return node.trimByVisibility();
    }
    
    private Node<? extends AnnotatedMember> findRenamed(Node<? extends AnnotatedMember> next, Node<? extends AnnotatedMember> node) {
        while (next != null) {
            final String explicitName = next.explicitName;
            if (explicitName != null && !explicitName.equals(this._name)) {
                if (node == null) {
                    node = next;
                }
                else if (!explicitName.equals(node.explicitName)) {
                    throw new IllegalStateException("Conflicting property name definitions: '" + node.explicitName + "' (for " + node.value + ") vs '" + next.explicitName + "' (for " + next.value + ")");
                }
            }
            next = next.next;
        }
        return node;
    }
    
    private static <T> Node<T> merge(final Node<T> node, final Node<T> node2) {
        if (node == null) {
            return node2;
        }
        if (node2 == null) {
            return node;
        }
        return (Node<T>)((Node<Object>)node).append((Node<Object>)node2);
    }
    
    public void addAll(final POJOPropertyBuilder pojoPropertyBuilder) {
        this._fields = merge(this._fields, pojoPropertyBuilder._fields);
        this._ctorParameters = merge(this._ctorParameters, pojoPropertyBuilder._ctorParameters);
        this._getters = merge(this._getters, pojoPropertyBuilder._getters);
        this._setters = merge(this._setters, pojoPropertyBuilder._setters);
    }
    
    public void addCtor(final AnnotatedParameter annotatedParameter, final String s, final boolean b, final boolean b2) {
        this._ctorParameters = new Node<AnnotatedParameter>(annotatedParameter, this._ctorParameters, s, b, b2);
    }
    
    public void addField(final AnnotatedField annotatedField, final String s, final boolean b, final boolean b2) {
        this._fields = new Node<AnnotatedField>(annotatedField, this._fields, s, b, b2);
    }
    
    public void addGetter(final AnnotatedMethod annotatedMethod, final String s, final boolean b, final boolean b2) {
        this._getters = new Node<AnnotatedMethod>(annotatedMethod, this._getters, s, b, b2);
    }
    
    public void addSetter(final AnnotatedMethod annotatedMethod, final String s, final boolean b, final boolean b2) {
        this._setters = new Node<AnnotatedMethod>(annotatedMethod, this._setters, s, b, b2);
    }
    
    public boolean anyDeserializeIgnorals() {
        return this._anyIgnorals(this._fields) || this._anyIgnorals(this._setters) || this._anyIgnorals(this._ctorParameters);
    }
    
    public boolean anyExplicitNames() {
        return this._anyExplicitNames(this._fields) || this._anyExplicitNames(this._getters) || this._anyExplicitNames(this._setters) || this._anyExplicitNames(this._ctorParameters);
    }
    
    public boolean anyIgnorals() {
        return this._anyIgnorals(this._fields) || this._anyIgnorals(this._getters) || this._anyIgnorals(this._setters) || this._anyIgnorals(this._ctorParameters);
    }
    
    public boolean anySerializeIgnorals() {
        return this._anyIgnorals(this._fields) || this._anyIgnorals(this._getters);
    }
    
    public boolean anyVisible() {
        return this._anyVisible(this._fields) || this._anyVisible(this._getters) || this._anyVisible(this._setters) || this._anyVisible(this._ctorParameters);
    }
    
    @Override
    public int compareTo(final POJOPropertyBuilder pojoPropertyBuilder) {
        if (this._ctorParameters != null) {
            if (pojoPropertyBuilder._ctorParameters == null) {
                return -1;
            }
        }
        else if (pojoPropertyBuilder._ctorParameters != null) {
            return 1;
        }
        return this.getName().compareTo(pojoPropertyBuilder.getName());
    }
    
    @Override
    public boolean couldSerialize() {
        return this._getters != null || this._fields != null;
    }
    
    public String findNewName() {
        final Node<? extends AnnotatedMember> renamed = this.findRenamed(this._ctorParameters, this.findRenamed(this._setters, this.findRenamed(this._getters, this.findRenamed(this._fields, null))));
        if (renamed == null) {
            return null;
        }
        return renamed.explicitName;
    }
    
    @Override
    public AnnotatedMember getAccessor() {
        AnnotatedMember annotatedMember = this.getGetter();
        if (annotatedMember == null) {
            annotatedMember = this.getField();
        }
        return annotatedMember;
    }
    
    @Override
    public AnnotatedParameter getConstructorParameter() {
        if (this._ctorParameters == null) {
            return null;
        }
        Node<AnnotatedParameter> node = this._ctorParameters;
        while (!(node.value.getOwner() instanceof AnnotatedConstructor)) {
            node = node.next;
            if (node == null) {
                return this._ctorParameters.value;
            }
        }
        return node.value;
    }
    
    @Override
    public AnnotatedField getField() {
        if (this._fields == null) {
            return null;
        }
        AnnotatedField annotatedField = this._fields.value;
        Node<AnnotatedField> node = this._fields.next;
        while (node != null) {
            final AnnotatedField annotatedField2 = node.value;
            final Class<?> declaringClass = annotatedField.getDeclaringClass();
            final Class<?> declaringClass2 = annotatedField2.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    annotatedField = annotatedField2;
                }
                else if (!declaringClass2.isAssignableFrom(declaringClass)) {
                    throw new IllegalArgumentException("Multiple fields representing property \"" + this.getName() + "\": " + annotatedField.getFullName() + " vs " + annotatedField2.getFullName());
                }
                node = node.next;
                continue;
            }
            throw new IllegalArgumentException("Multiple fields representing property \"" + this.getName() + "\": " + annotatedField.getFullName() + " vs " + annotatedField2.getFullName());
        }
        return annotatedField;
    }
    
    @Override
    public AnnotatedMethod getGetter() {
        if (this._getters == null) {
            return null;
        }
        AnnotatedMethod annotatedMethod = this._getters.value;
        Node<AnnotatedMethod> node = this._getters.next;
        while (node != null) {
            final AnnotatedMethod annotatedMethod2 = node.value;
            final Class<?> declaringClass = annotatedMethod.getDeclaringClass();
            final Class<?> declaringClass2 = annotatedMethod2.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    annotatedMethod = annotatedMethod2;
                }
                else if (!declaringClass2.isAssignableFrom(declaringClass)) {
                    throw new IllegalArgumentException("Conflicting getter definitions for property \"" + this.getName() + "\": " + annotatedMethod.getFullName() + " vs " + annotatedMethod2.getFullName());
                }
                node = node.next;
                continue;
            }
            throw new IllegalArgumentException("Conflicting getter definitions for property \"" + this.getName() + "\": " + annotatedMethod.getFullName() + " vs " + annotatedMethod2.getFullName());
        }
        return annotatedMethod;
    }
    
    @Override
    public String getInternalName() {
        return this._internalName;
    }
    
    @Override
    public AnnotatedMember getMutator() {
        AnnotatedMember annotatedMember = this.getConstructorParameter();
        if (annotatedMember == null) {
            annotatedMember = this.getSetter();
            if (annotatedMember == null) {
                annotatedMember = this.getField();
            }
        }
        return annotatedMember;
    }
    
    @Override
    public String getName() {
        return this._name;
    }
    
    @Override
    public AnnotatedMethod getSetter() {
        if (this._setters == null) {
            return null;
        }
        AnnotatedMethod annotatedMethod = this._setters.value;
        Node<AnnotatedMethod> node = this._setters.next;
        while (node != null) {
            final AnnotatedMethod annotatedMethod2 = node.value;
            final Class<?> declaringClass = annotatedMethod.getDeclaringClass();
            final Class<?> declaringClass2 = annotatedMethod2.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    annotatedMethod = annotatedMethod2;
                }
                else if (!declaringClass2.isAssignableFrom(declaringClass)) {
                    throw new IllegalArgumentException("Conflicting setter definitions for property \"" + this.getName() + "\": " + annotatedMethod.getFullName() + " vs " + annotatedMethod2.getFullName());
                }
                node = node.next;
                continue;
            }
            throw new IllegalArgumentException("Conflicting setter definitions for property \"" + this.getName() + "\": " + annotatedMethod.getFullName() + " vs " + annotatedMethod2.getFullName());
        }
        return annotatedMethod;
    }
    
    @Override
    public boolean hasConstructorParameter() {
        return this._ctorParameters != null;
    }
    
    @Override
    public boolean hasField() {
        return this._fields != null;
    }
    
    @Override
    public boolean hasGetter() {
        return this._getters != null;
    }
    
    @Override
    public boolean hasSetter() {
        return this._setters != null;
    }
    
    public void mergeAnnotations(final boolean b) {
        if (b) {
            if (this._getters != null) {
                this._getters = this._getters.withValue(this._getters.value.withAnnotations(this._mergeAnnotations(0, this._getters, this._fields, this._ctorParameters, this._setters)));
            }
            else if (this._fields != null) {
                this._fields = this._fields.withValue(this._fields.value.withAnnotations(this._mergeAnnotations(0, this._fields, this._ctorParameters, this._setters)));
            }
        }
        else {
            if (this._ctorParameters != null) {
                this._ctorParameters = this._ctorParameters.withValue(this._ctorParameters.value.withAnnotations(this._mergeAnnotations(0, this._ctorParameters, this._setters, this._fields, this._getters)));
                return;
            }
            if (this._setters != null) {
                this._setters = this._setters.withValue(this._setters.value.withAnnotations(this._mergeAnnotations(0, this._setters, this._fields, this._getters)));
                return;
            }
            if (this._fields != null) {
                this._fields = this._fields.withValue(this._fields.value.withAnnotations(this._mergeAnnotations(0, this._fields, this._getters)));
            }
        }
    }
    
    public void removeIgnored() {
        this._fields = this._removeIgnored(this._fields);
        this._getters = this._removeIgnored(this._getters);
        this._setters = this._removeIgnored(this._setters);
        this._ctorParameters = this._removeIgnored(this._ctorParameters);
    }
    
    public void removeNonVisible() {
        this._getters = this._removeNonVisible(this._getters);
        this._ctorParameters = this._removeNonVisible(this._ctorParameters);
        if (this._getters == null) {
            this._fields = this._removeNonVisible(this._fields);
            this._setters = this._removeNonVisible(this._setters);
        }
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("[Property '").append(this._name).append("'; ctors: ").append(this._ctorParameters).append(", field(s): ").append(this._fields).append(", getter(s): ").append(this._getters).append(", setter(s): ").append(this._setters);
        sb.append("]");
        return sb.toString();
    }
    
    public void trimByVisibility() {
        this._fields = this._trimByVisibility(this._fields);
        this._getters = this._trimByVisibility(this._getters);
        this._setters = this._trimByVisibility(this._setters);
        this._ctorParameters = this._trimByVisibility(this._ctorParameters);
    }
    
    public POJOPropertyBuilder withName(final String s) {
        return new POJOPropertyBuilder(this, s);
    }
    
    private static final class Node<T>
    {
        public final String explicitName;
        public final boolean isMarkedIgnored;
        public final boolean isVisible;
        public final Node<T> next;
        public final T value;
        
        public Node(final T value, final Node<T> next, final String s, final boolean isVisible, final boolean isMarkedIgnored) {
            super();
            this.value = value;
            this.next = next;
            if (s == null) {
                this.explicitName = null;
            }
            else {
                String explicitName;
                if (s.length() == 0) {
                    explicitName = null;
                }
                else {
                    explicitName = s;
                }
                this.explicitName = explicitName;
            }
            this.isVisible = isVisible;
            this.isMarkedIgnored = isMarkedIgnored;
        }
        
        private Node<T> append(final Node<T> node) {
            if (this.next == null) {
                return this.withNext(node);
            }
            return this.withNext(this.next.append(node));
        }
        
        @Override
        public String toString() {
            String str = this.value.toString() + "[visible=" + this.isVisible + "]";
            if (this.next != null) {
                str = str + ", " + this.next.toString();
            }
            return str;
        }
        
        public Node<T> trimByVisibility() {
            if (this.next == null) {
                return this;
            }
            final Node<T> trimByVisibility = this.next.trimByVisibility();
            if (this.explicitName != null) {
                if (trimByVisibility.explicitName == null) {
                    return this.withNext(null);
                }
                return this.withNext(trimByVisibility);
            }
            else {
                if (trimByVisibility.explicitName != null) {
                    return trimByVisibility;
                }
                if (this.isVisible == trimByVisibility.isVisible) {
                    return this.withNext(trimByVisibility);
                }
                if (this.isVisible) {
                    return this.withNext(null);
                }
                return trimByVisibility;
            }
        }
        
        public Node<T> withNext(final Node<T> node) {
            if (node == this.next) {
                return this;
            }
            return new Node<T>(this.value, node, this.explicitName, this.isVisible, this.isMarkedIgnored);
        }
        
        public Node<T> withValue(final T t) {
            if (t == this.value) {
                return this;
            }
            return new Node<T>(t, this.next, this.explicitName, this.isVisible, this.isMarkedIgnored);
        }
        
        public Node<T> withoutIgnored() {
            if (!this.isMarkedIgnored) {
                if (this.next != null) {
                    final Node<T> withoutIgnored = this.next.withoutIgnored();
                    if (withoutIgnored != this.next) {
                        return this.withNext(withoutIgnored);
                    }
                }
                return this;
            }
            if (this.next == null) {
                return null;
            }
            return this.next.withoutIgnored();
        }
        
        public Node<T> withoutNonVisible() {
            Node<T> withoutNonVisible;
            if (this.next == null) {
                withoutNonVisible = null;
            }
            else {
                withoutNonVisible = this.next.withoutNonVisible();
            }
            if (this.isVisible) {
                return this.withNext(withoutNonVisible);
            }
            return withoutNonVisible;
        }
    }
}

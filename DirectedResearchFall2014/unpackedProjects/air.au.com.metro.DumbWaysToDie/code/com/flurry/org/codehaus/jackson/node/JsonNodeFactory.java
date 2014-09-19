package com.flurry.org.codehaus.jackson.node;

import java.math.*;

public class JsonNodeFactory
{
    public static final JsonNodeFactory instance;
    
    static {
        instance = new JsonNodeFactory();
    }
    
    public POJONode POJONode(final Object o) {
        return new POJONode(o);
    }
    
    public ArrayNode arrayNode() {
        return new ArrayNode(this);
    }
    
    public BinaryNode binaryNode(final byte[] array) {
        return BinaryNode.valueOf(array);
    }
    
    public BinaryNode binaryNode(final byte[] array, final int n, final int n2) {
        return BinaryNode.valueOf(array, n, n2);
    }
    
    public BooleanNode booleanNode(final boolean b) {
        if (b) {
            return BooleanNode.getTrue();
        }
        return BooleanNode.getFalse();
    }
    
    public NullNode nullNode() {
        return NullNode.getInstance();
    }
    
    public NumericNode numberNode(final byte b) {
        return IntNode.valueOf(b);
    }
    
    public NumericNode numberNode(final double n) {
        return DoubleNode.valueOf(n);
    }
    
    public NumericNode numberNode(final float n) {
        return DoubleNode.valueOf(n);
    }
    
    public NumericNode numberNode(final int n) {
        return IntNode.valueOf(n);
    }
    
    public NumericNode numberNode(final long n) {
        return LongNode.valueOf(n);
    }
    
    public NumericNode numberNode(final BigDecimal bigDecimal) {
        return DecimalNode.valueOf(bigDecimal);
    }
    
    public NumericNode numberNode(final BigInteger bigInteger) {
        return BigIntegerNode.valueOf(bigInteger);
    }
    
    public NumericNode numberNode(final short n) {
        return IntNode.valueOf(n);
    }
    
    public ValueNode numberNode(final Byte b) {
        if (b == null) {
            return this.nullNode();
        }
        return IntNode.valueOf(b);
    }
    
    public ValueNode numberNode(final Double n) {
        if (n == null) {
            return this.nullNode();
        }
        return DoubleNode.valueOf(n);
    }
    
    public ValueNode numberNode(final Float n) {
        if (n == null) {
            return this.nullNode();
        }
        return DoubleNode.valueOf(n);
    }
    
    public ValueNode numberNode(final Integer n) {
        if (n == null) {
            return this.nullNode();
        }
        return IntNode.valueOf(n);
    }
    
    public ValueNode numberNode(final Long n) {
        if (n == null) {
            return this.nullNode();
        }
        return LongNode.valueOf(n);
    }
    
    public ValueNode numberNode(final Short n) {
        if (n == null) {
            return this.nullNode();
        }
        return IntNode.valueOf(n);
    }
    
    public ObjectNode objectNode() {
        return new ObjectNode(this);
    }
    
    public TextNode textNode(final String s) {
        return TextNode.valueOf(s);
    }
}

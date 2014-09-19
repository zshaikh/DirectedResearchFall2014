package com.facebook.model;

import java.lang.reflect.*;
import com.facebook.*;

abstract class GraphObject$Factory$ProxyBase<STATE> implements InvocationHandler
{
    private static final String EQUALS_METHOD = "equals";
    private static final String TOSTRING_METHOD = "toString";
    protected final STATE state;
    
    protected GraphObject$Factory$ProxyBase(final STATE state) {
        super();
        this.state = state;
    }
    
    protected final Object proxyObjectMethods(final Object o, final Method method, final Object[] args) {
        final String name = method.getName();
        if (name.equals("equals")) {
            final Object proxy = args[0];
            if (proxy == null) {
                return false;
            }
            final InvocationHandler invocationHandler = Proxy.getInvocationHandler(proxy);
            if (!(invocationHandler instanceof GraphObject$Factory$GraphObjectProxy)) {
                return false;
            }
            return this.state.equals(((GraphObject$Factory$GraphObjectProxy)invocationHandler).state);
        }
        else {
            if (name.equals("toString")) {
                return this.toString();
            }
            return method.invoke(this.state, args);
        }
    }
    
    protected final Object throwUnexpectedMethodSignature(final Method method) {
        throw new FacebookGraphObjectException(this.getClass().getName() + " got an unexpected method signature: " + method.toString());
    }
}

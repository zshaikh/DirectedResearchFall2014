package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.deser.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class ThrowableDeserializer extends BeanDeserializer
{
    protected static final String PROP_NAME_MESSAGE = "message";
    
    public ThrowableDeserializer(final BeanDeserializer beanDeserializer) {
        super(beanDeserializer);
    }
    
    protected ThrowableDeserializer(final BeanDeserializer beanDeserializer, final boolean b) {
        super(beanDeserializer, b);
    }
    
    @Override
    public Object deserializeFromObject(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        Object deserializeUsingPropertyBased;
        if (this._propertyBasedCreator != null) {
            deserializeUsingPropertyBased = this._deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        else {
            if (this._delegateDeserializer != null) {
                return this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
            }
            if (this._beanType.isAbstract()) {
                throw JsonMappingException.from(jsonParser, "Can not instantiate abstract type " + this._beanType + " (need to add/enable type information?)");
            }
            final boolean canCreateFromString = this._valueInstantiator.canCreateFromString();
            final boolean canCreateUsingDefault = this._valueInstantiator.canCreateUsingDefault();
            if (!canCreateFromString && !canCreateUsingDefault) {
                throw new JsonMappingException("Can not deserialize Throwable of type " + this._beanType + " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator");
            }
            Object[] array = null;
            int n = 0;
            deserializeUsingPropertyBased = null;
            while (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                final String currentName = jsonParser.getCurrentName();
                final SettableBeanProperty find = this._beanProperties.find(currentName);
                jsonParser.nextToken();
                if (find != null) {
                    if (deserializeUsingPropertyBased != null) {
                        find.deserializeAndSet(jsonParser, deserializationContext, deserializeUsingPropertyBased);
                    }
                    else {
                        if (array == null) {
                            final int size = this._beanProperties.size();
                            array = new Object[size + size];
                        }
                        final int n2 = n + 1;
                        array[n] = find;
                        n = n2 + 1;
                        array[n2] = find.deserialize(jsonParser, deserializationContext);
                    }
                }
                else if ("message".equals(currentName) && canCreateFromString) {
                    final Object fromString = this._valueInstantiator.createFromString(jsonParser.getText());
                    if (array != null) {
                        for (int i = 0; i < n; i += 2) {
                            ((SettableBeanProperty)array[i]).set(fromString, array[i + 1]);
                        }
                        deserializeUsingPropertyBased = fromString;
                        array = null;
                    }
                    else {
                        deserializeUsingPropertyBased = fromString;
                    }
                }
                else if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                }
                else if (this._anySetter != null) {
                    this._anySetter.deserializeAndSet(jsonParser, deserializationContext, deserializeUsingPropertyBased, currentName);
                }
                else {
                    this.handleUnknownProperty(jsonParser, deserializationContext, deserializeUsingPropertyBased, currentName);
                }
                jsonParser.nextToken();
            }
            if (deserializeUsingPropertyBased == null) {
                Object o;
                if (canCreateFromString) {
                    o = this._valueInstantiator.createFromString(null);
                }
                else {
                    o = this._valueInstantiator.createUsingDefault();
                }
                if (array != null) {
                    for (int j = 0; j < n; j += 2) {
                        ((SettableBeanProperty)array[j]).set(o, array[j + 1]);
                    }
                }
                return o;
            }
        }
        return deserializeUsingPropertyBased;
    }
    
    @Override
    public JsonDeserializer<Object> unwrappingDeserializer() {
        if (this.getClass() != ThrowableDeserializer.class) {
            return this;
        }
        return new ThrowableDeserializer(this, true);
    }
}

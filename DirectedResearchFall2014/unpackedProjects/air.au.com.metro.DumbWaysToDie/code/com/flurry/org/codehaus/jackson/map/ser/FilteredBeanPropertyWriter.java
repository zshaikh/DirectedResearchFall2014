package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public abstract class FilteredBeanPropertyWriter
{
    public static BeanPropertyWriter constructViewBased(final BeanPropertyWriter beanPropertyWriter, final Class<?>[] array) {
        if (array.length == 1) {
            return new SingleView(beanPropertyWriter, array[0]);
        }
        return new MultiView(beanPropertyWriter, array);
    }
    
    private static final class MultiView extends BeanPropertyWriter
    {
        protected final BeanPropertyWriter _delegate;
        protected final Class<?>[] _views;
        
        protected MultiView(final BeanPropertyWriter delegate, final Class<?>[] views) {
            super(delegate);
            this._delegate = delegate;
            this._views = views;
        }
        
        @Override
        public void serializeAsField(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws Exception {
            final Class<?> serializationView = serializerProvider.getSerializationView();
            if (serializationView != null) {
                int n;
                int length;
                for (n = 0, length = this._views.length; n < length && !this._views[n].isAssignableFrom(serializationView); ++n) {}
                if (n == length) {
                    return;
                }
            }
            this._delegate.serializeAsField(o, jsonGenerator, serializerProvider);
        }
        
        @Override
        public BeanPropertyWriter withSerializer(final JsonSerializer<Object> jsonSerializer) {
            return new MultiView(this._delegate.withSerializer(jsonSerializer), this._views);
        }
    }
    
    private static final class SingleView extends BeanPropertyWriter
    {
        protected final BeanPropertyWriter _delegate;
        protected final Class<?> _view;
        
        protected SingleView(final BeanPropertyWriter delegate, final Class<?> view) {
            super(delegate);
            this._delegate = delegate;
            this._view = view;
        }
        
        @Override
        public void serializeAsField(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws Exception {
            final Class<?> serializationView = serializerProvider.getSerializationView();
            if (serializationView == null || this._view.isAssignableFrom(serializationView)) {
                this._delegate.serializeAsField(o, jsonGenerator, serializerProvider);
            }
        }
        
        @Override
        public BeanPropertyWriter withSerializer(final JsonSerializer<Object> jsonSerializer) {
            return new SingleView(this._delegate.withSerializer(jsonSerializer), this._view);
        }
    }
}

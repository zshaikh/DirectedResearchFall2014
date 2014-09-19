package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class Callback$Builder extends SpecificRecordBuilderBase<Callback> implements RecordBuilder<Callback>
{
    private CharSequence bJ;
    private List<CharSequence> bK;
    
    private Callback$Builder() {
        super(Callback.SCHEMA$);
    }
    
    @Override
    public Callback build() {
        try {
            final Callback callback = new Callback();
            CharSequence bj;
            if (this.fieldSetFlags()[0]) {
                bj = this.bJ;
            }
            else {
                bj = (CharSequence)this.defaultValue(this.fields()[0]);
            }
            callback.bJ = bj;
            List<CharSequence> bk;
            if (this.fieldSetFlags()[1]) {
                bk = this.bK;
            }
            else {
                bk = (List<CharSequence>)this.defaultValue(this.fields()[1]);
            }
            callback.bK = bk;
            return callback;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public Callback$Builder clearActions() {
        this.bK = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public Callback$Builder clearEvent() {
        this.bJ = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public List<CharSequence> getActions() {
        return this.bK;
    }
    
    public CharSequence getEvent() {
        return this.bJ;
    }
    
    public boolean hasActions() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasEvent() {
        return this.fieldSetFlags()[0];
    }
    
    public Callback$Builder setActions(final List<CharSequence> bk) {
        this.validate(this.fields()[1], bk);
        this.bK = bk;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public Callback$Builder setEvent(final CharSequence bj) {
        this.validate(this.fields()[0], bj);
        this.bJ = bj;
        this.fieldSetFlags()[0] = true;
        return this;
    }
}

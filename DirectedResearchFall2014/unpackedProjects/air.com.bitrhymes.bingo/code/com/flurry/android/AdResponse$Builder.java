package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class AdResponse$Builder extends SpecificRecordBuilderBase<AdResponse> implements RecordBuilder<AdResponse>
{
    private List<AdUnit> bx;
    private List<CharSequence> x;
    
    private AdResponse$Builder() {
        super(AdResponse.SCHEMA$);
    }
    
    @Override
    public AdResponse build() {
        try {
            final AdResponse adResponse = new AdResponse();
            List<AdUnit> bx;
            if (this.fieldSetFlags()[0]) {
                bx = this.bx;
            }
            else {
                bx = (List<AdUnit>)this.defaultValue(this.fields()[0]);
            }
            adResponse.bx = bx;
            List<CharSequence> x;
            if (this.fieldSetFlags()[1]) {
                x = this.x;
            }
            else {
                x = (List<CharSequence>)this.defaultValue(this.fields()[1]);
            }
            adResponse.x = x;
            return adResponse;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public AdResponse$Builder clearAdUnits() {
        this.bx = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public AdResponse$Builder clearErrors() {
        this.x = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public List<AdUnit> getAdUnits() {
        return this.bx;
    }
    
    public List<CharSequence> getErrors() {
        return this.x;
    }
    
    public boolean hasAdUnits() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasErrors() {
        return this.fieldSetFlags()[1];
    }
    
    public AdResponse$Builder setAdUnits(final List<AdUnit> bx) {
        this.validate(this.fields()[0], bx);
        this.bx = bx;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public AdResponse$Builder setErrors(final List<CharSequence> x) {
        this.validate(this.fields()[1], x);
        this.x = x;
        this.fieldSetFlags()[1] = true;
        return this;
    }
}

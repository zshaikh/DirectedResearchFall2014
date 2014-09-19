package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class SdkLogResponse$Builder extends SpecificRecordBuilderBase<SdkLogResponse> implements RecordBuilder<SdkLogResponse>
{
    private CharSequence w;
    private List<CharSequence> x;
    
    private SdkLogResponse$Builder() {
        super(SdkLogResponse.SCHEMA$);
    }
    
    @Override
    public SdkLogResponse build() {
        try {
            final SdkLogResponse sdkLogResponse = new SdkLogResponse();
            CharSequence w;
            if (this.fieldSetFlags()[0]) {
                w = this.w;
            }
            else {
                w = (CharSequence)this.defaultValue(this.fields()[0]);
            }
            sdkLogResponse.w = w;
            List<CharSequence> x;
            if (this.fieldSetFlags()[1]) {
                x = this.x;
            }
            else {
                x = (List<CharSequence>)this.defaultValue(this.fields()[1]);
            }
            sdkLogResponse.x = x;
            return sdkLogResponse;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public SdkLogResponse$Builder clearErrors() {
        this.x = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public SdkLogResponse$Builder clearResult() {
        this.w = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public List<CharSequence> getErrors() {
        return this.x;
    }
    
    public CharSequence getResult() {
        return this.w;
    }
    
    public boolean hasErrors() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasResult() {
        return this.fieldSetFlags()[0];
    }
    
    public SdkLogResponse$Builder setErrors(final List<CharSequence> x) {
        this.validate(this.fields()[1], x);
        this.x = x;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public SdkLogResponse$Builder setResult(final CharSequence w) {
        this.validate(this.fields()[0], w);
        this.w = w;
        this.fieldSetFlags()[0] = true;
        return this;
    }
}

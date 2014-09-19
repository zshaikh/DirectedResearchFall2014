package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import com.flurry.org.apache.avro.*;

public class TestAds$Builder extends SpecificRecordBuilderBase<TestAds> implements RecordBuilder<TestAds>
{
    private int ew;
    
    private TestAds$Builder(final byte b) {
        super(TestAds.SCHEMA$);
    }
    
    @Override
    public TestAds build() {
        try {
            final TestAds testAds = new TestAds();
            int ew;
            if (this.fieldSetFlags()[0]) {
                ew = this.ew;
            }
            else {
                ew = (int)this.defaultValue(this.fields()[0]);
            }
            testAds.ew = ew;
            return testAds;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public TestAds$Builder clearAdspacePlacement() {
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public Integer getAdspacePlacement() {
        return this.ew;
    }
    
    public boolean hasAdspacePlacement() {
        return this.fieldSetFlags()[0];
    }
    
    public TestAds$Builder setAdspacePlacement(final int n) {
        this.validate(this.fields()[0], n);
        this.ew = n;
        this.fieldSetFlags()[0] = true;
        return this;
    }
}

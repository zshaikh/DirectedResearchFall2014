package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import com.flurry.org.apache.avro.*;

public class Location$Builder extends SpecificRecordBuilderBase<Location> implements RecordBuilder<Location>
{
    private float eY;
    private float eZ;
    
    private Location$Builder(final byte b) {
        super(Location.SCHEMA$);
    }
    
    @Override
    public Location build() {
        try {
            final Location location = new Location();
            float ey;
            if (this.fieldSetFlags()[0]) {
                ey = this.eY;
            }
            else {
                ey = (float)this.defaultValue(this.fields()[0]);
            }
            location.eY = ey;
            float ez;
            if (this.fieldSetFlags()[1]) {
                ez = this.eZ;
            }
            else {
                ez = (float)this.defaultValue(this.fields()[1]);
            }
            location.eZ = ez;
            return location;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public Location$Builder clearLat() {
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public Location$Builder clearLon() {
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public Float getLat() {
        return this.eY;
    }
    
    public Float getLon() {
        return this.eZ;
    }
    
    public boolean hasLat() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasLon() {
        return this.fieldSetFlags()[1];
    }
    
    public Location$Builder setLat(final float n) {
        this.validate(this.fields()[0], n);
        this.eY = n;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public Location$Builder setLon(final float n) {
        this.validate(this.fields()[1], n);
        this.eZ = n;
        this.fieldSetFlags()[1] = true;
        return this;
    }
}

package com.flurry.org.apache.avro;

public class UnresolvedUnionException extends AvroRuntimeException
{
    private Schema unionSchema;
    private Object unresolvedDatum;
    
    public UnresolvedUnionException(final Schema schema, final Object o) {
        super("Not in union " + schema + ": " + o);
        this.unionSchema = schema;
        this.unresolvedDatum = o;
    }
    
    public Schema getUnionSchema() {
        return this.unionSchema;
    }
    
    public Object getUnresolvedDatum() {
        return this.unresolvedDatum;
    }
}

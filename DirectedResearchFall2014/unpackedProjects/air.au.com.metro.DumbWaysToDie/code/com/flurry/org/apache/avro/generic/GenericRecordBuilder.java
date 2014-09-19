package com.flurry.org.apache.avro.generic;

import com.flurry.org.apache.avro.data.*;
import com.flurry.org.apache.avro.*;
import java.util.*;
import java.io.*;

public class GenericRecordBuilder extends RecordBuilderBase<GenericData.Record>
{
    private final GenericData.Record record;
    
    public GenericRecordBuilder(final Schema schema) {
        super(schema, GenericData.get());
        this.record = new GenericData.Record(schema);
    }
    
    public GenericRecordBuilder(final GenericData.Record record) {
        super(record.getSchema(), GenericData.get());
        this.record = new GenericData.Record(record, true);
        for (final Schema.Field field : this.schema().getFields()) {
            final Object value = record.get(field.pos());
            if (RecordBuilderBase.isValidValue(field, value)) {
                this.set(field, this.data().deepCopy(field.schema(), value));
            }
        }
    }
    
    public GenericRecordBuilder(final GenericRecordBuilder genericRecordBuilder) {
        super(genericRecordBuilder, GenericData.get());
        this.record = new GenericData.Record(genericRecordBuilder.record, true);
    }
    
    private Object getWithDefault(final Schema.Field field) throws IOException {
        if (this.fieldSetFlags()[field.pos()]) {
            return this.record.get(field.pos());
        }
        return this.defaultValue(field);
    }
    
    private GenericRecordBuilder set(final Schema.Field field, final int n, final Object o) {
        this.validate(field, o);
        this.record.put(n, o);
        this.fieldSetFlags()[n] = true;
        return this;
    }
    
    @Override
    public GenericData.Record build() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/flurry/org/apache/avro/generic/GenericData$Record;
        //     3: dup            
        //     4: aload_0        
        //     5: invokevirtual   com/flurry/org/apache/avro/generic/GenericRecordBuilder.schema:()Lcom/flurry/org/apache/avro/Schema;
        //     8: invokespecial   com/flurry/org/apache/avro/generic/GenericData$Record.<init>:(Lcom/flurry/org/apache/avro/Schema;)V
        //    11: astore_1       
        //    12: aload_0        
        //    13: invokevirtual   com/flurry/org/apache/avro/generic/GenericRecordBuilder.fields:()[Lcom/flurry/org/apache/avro/Schema$Field;
        //    16: astore_2       
        //    17: aload_2        
        //    18: arraylength    
        //    19: istore_3       
        //    20: iconst_0       
        //    21: istore          4
        //    23: iload           4
        //    25: iload_3        
        //    26: if_icmpge       89
        //    29: aload_2        
        //    30: iload           4
        //    32: aaload         
        //    33: astore          5
        //    35: aload_0        
        //    36: aload           5
        //    38: invokespecial   com/flurry/org/apache/avro/generic/GenericRecordBuilder.getWithDefault:(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;
        //    41: astore          7
        //    43: aload           7
        //    45: ifnull          59
        //    48: aload_1        
        //    49: aload           5
        //    51: invokevirtual   com/flurry/org/apache/avro/Schema$Field.pos:()I
        //    54: aload           7
        //    56: invokevirtual   com/flurry/org/apache/avro/generic/GenericData$Record.put:(ILjava/lang/Object;)V
        //    59: iinc            4, 1
        //    62: goto            23
        //    65: astore          8
        //    67: new             Lcom/flurry/org/apache/avro/AvroRuntimeException;
        //    70: dup            
        //    71: aload           8
        //    73: invokespecial   com/flurry/org/apache/avro/AvroRuntimeException.<init>:(Ljava/lang/Throwable;)V
        //    76: athrow         
        //    77: astore          6
        //    79: new             Lcom/flurry/org/apache/avro/AvroRuntimeException;
        //    82: dup            
        //    83: aload           6
        //    85: invokespecial   com/flurry/org/apache/avro/AvroRuntimeException.<init>:(Ljava/lang/Throwable;)V
        //    88: athrow         
        //    89: aload_1        
        //    90: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      12     65     77     Ljava/lang/Exception;
        //  35     43     77     89     Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0059:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    protected GenericRecordBuilder clear(final int n) {
        this.record.put(n, null);
        this.fieldSetFlags()[n] = false;
        return this;
    }
    
    public GenericRecordBuilder clear(final Schema.Field field) {
        return this.clear(field.pos());
    }
    
    public GenericRecordBuilder clear(final String s) {
        return this.clear(this.schema().getField(s));
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (!super.equals(o)) {
            return false;
        }
        if (this.getClass() != o.getClass()) {
            return false;
        }
        final GenericRecordBuilder genericRecordBuilder = (GenericRecordBuilder)o;
        if (this.record == null) {
            if (genericRecordBuilder.record != null) {
                return false;
            }
        }
        else if (!this.record.equals(genericRecordBuilder.record)) {
            return false;
        }
        return true;
    }
    
    protected Object get(final int n) {
        return this.record.get(n);
    }
    
    public Object get(final Schema.Field field) {
        return this.get(field.pos());
    }
    
    public Object get(final String s) {
        return this.get(this.schema().getField(s));
    }
    
    protected boolean has(final int n) {
        return this.fieldSetFlags()[n];
    }
    
    public boolean has(final Schema.Field field) {
        return this.has(field.pos());
    }
    
    public boolean has(final String s) {
        return this.has(this.schema().getField(s));
    }
    
    @Override
    public int hashCode() {
        final int n = 31 * super.hashCode();
        int hashCode;
        if (this.record == null) {
            hashCode = 0;
        }
        else {
            hashCode = this.record.hashCode();
        }
        return n + hashCode;
    }
    
    protected GenericRecordBuilder set(final int n, final Object o) {
        return this.set(this.fields()[n], n, o);
    }
    
    public GenericRecordBuilder set(final Schema.Field field, final Object o) {
        return this.set(field, field.pos(), o);
    }
    
    public GenericRecordBuilder set(final String s, final Object o) {
        return this.set(this.schema().getField(s), o);
    }
}

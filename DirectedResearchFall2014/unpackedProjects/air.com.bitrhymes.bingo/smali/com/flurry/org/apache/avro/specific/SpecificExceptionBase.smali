.class public abstract Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;
.super Lcom/flurry/org/apache/avro/AvroRemoteException;
.source "SpecificExceptionBase.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/specific/SpecificRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/AvroRemoteException;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/AvroRemoteException;-><init>(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "value"
    .parameter "cause"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/AvroRemoteException;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/flurry/org/apache/avro/AvroRemoteException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "that"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 52
    :goto_0
    return v0

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public abstract getSchema()Lcom/flurry/org/apache/avro/Schema;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->hashCode(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    return v0
.end method

.method public abstract put(ILjava/lang/Object;)V
.end method

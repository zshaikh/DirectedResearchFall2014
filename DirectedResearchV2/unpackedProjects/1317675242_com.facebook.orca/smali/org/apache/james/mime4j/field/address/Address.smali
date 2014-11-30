.class public abstract Lorg/apache/james/mime4j/field/address/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Z)Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/Address;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;
.super Ljava/lang/Error;
.source "TokenMgrError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 141
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

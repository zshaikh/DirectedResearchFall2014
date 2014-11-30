.class public Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;
.super Ljava/lang/Object;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PHSchemeRegistry"
.end annotation


# instance fields
.field private schemeReg:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;->schemeReg:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 122
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;->schemeReg:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    return-object v0
.end method

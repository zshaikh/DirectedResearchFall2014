.class public Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;
.super Ljava/lang/Object;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;
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
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;->schemeReg:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 123
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .locals 1
    .parameter "name"

    .prologue
    .line 127
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;->schemeReg:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    return-object v0
.end method

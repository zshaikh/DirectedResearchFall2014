.class public Ldolphin/net/http/u;
.super Ljavax/net/ssl/SSLException;
.source "HttpsConnection.java"


# instance fields
.field final synthetic a:Ldolphin/net/http/r;


# direct methods
.method public constructor <init>(Ldolphin/net/http/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Ldolphin/net/http/u;->a:Ldolphin/net/http/r;

    .line 70
    invoke-direct {p0, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

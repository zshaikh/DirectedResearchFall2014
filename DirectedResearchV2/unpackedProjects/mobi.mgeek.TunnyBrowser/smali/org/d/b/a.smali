.class public Lorg/d/b/a;
.super Lorg/d/b/b;
.source "OAuthConnectionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 12
    const-string v0, "There was a problem while creating a connection to the remote service."

    invoke-direct {p0, v0, p1}, Lorg/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 13
    return-void
.end method

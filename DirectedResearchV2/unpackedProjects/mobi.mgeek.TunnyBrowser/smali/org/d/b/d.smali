.class public Lorg/d/b/d;
.super Lorg/d/b/b;
.source "OAuthSignatureException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 21
    const-string v0, "Error while signing string: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 22
    return-void
.end method

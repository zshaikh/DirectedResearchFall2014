.class public Lorg/d/a/a/d;
.super Lorg/d/a/a/c;
.source "EvernoteApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/d/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/d/d/i;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    const-string v0, "https://sandbox.evernote.com/OAuth.action?oauth_token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/d/d/i;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "https://sandbox.evernote.com/oauth"

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "https://sandbox.evernote.com/oauth"

    return-object v0
.end method

.class public Lcom/dolphin/browser/q/b/ae;
.super Lorg/d/a/a/c;
.source "EvernoteConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/d/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 33
    const-string v0, "www.evernote.com"

    const-string v1, "sandbox.evernote.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-class v0, Lorg/d/a/a/d;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/d/a/a/c;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "dolphinbrowser-addon-8779"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "c7b21c00d4c20f27"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "www.evernote.com"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "MoboTap Inc."

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Dolphin Browser"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "/evernote/files/"

    return-object v0
.end method

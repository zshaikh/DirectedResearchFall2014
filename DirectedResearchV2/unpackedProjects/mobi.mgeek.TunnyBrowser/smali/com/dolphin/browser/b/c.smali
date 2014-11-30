.class Lcom/dolphin/browser/b/c;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/b/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/b/b;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/dolphin/browser/b/c;->a:Lcom/dolphin/browser/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/dolphin/browser/webkit/management/c;
.super Ljava/lang/Object;
.source "CacheHealthUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/webkit/management/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/b;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/c;->a:Lcom/dolphin/browser/webkit/management/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

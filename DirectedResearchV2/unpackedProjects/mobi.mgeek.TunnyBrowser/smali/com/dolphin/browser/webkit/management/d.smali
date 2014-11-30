.class Lcom/dolphin/browser/webkit/management/d;
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
    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/d;->a:Lcom/dolphin/browser/webkit/management/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

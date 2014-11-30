.class public abstract Lcom/dolphin/browser/downloads/o;
.super Ljava/lang/Object;
.source "DownloadSystemFactory.java"


# static fields
.field private static a:Lcom/dolphin/browser/downloads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dolphin/browser/downloads/o;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/dolphin/browser/downloads/o;->a:Lcom/dolphin/browser/downloads/o;

    .line 35
    return-void
.end method

.method public static f()Lcom/dolphin/browser/downloads/o;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/dolphin/browser/downloads/o;->a:Lcom/dolphin/browser/downloads/o;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/dolphin/browser/downloads/b;

    invoke-direct {v0}, Lcom/dolphin/browser/downloads/b;-><init>()V

    sput-object v0, Lcom/dolphin/browser/downloads/o;->a:Lcom/dolphin/browser/downloads/o;

    .line 42
    :cond_0
    sget-object v0, Lcom/dolphin/browser/downloads/o;->a:Lcom/dolphin/browser/downloads/o;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract a(Landroid/content/ContentProvider;)V
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public abstract a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/e;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/io/File;
.end method

.method public abstract d()I
.end method

.method public abstract e()Z
.end method

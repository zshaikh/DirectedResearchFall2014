.class public Ldolphin/webkit/WebIconDatabase;
.super Ljava/lang/Object;
.source "WebIconDatabase.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ldolphin/webkit/WebIconDatabase;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Ldolphin/webkit/kh;->a()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ki;->d()Ldolphin/webkit/WebIconDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public removeAllIcons()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Ldolphin/webkit/WebIconDatabase$IconListener;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ldolphin/webkit/es;

    invoke-direct {v0}, Ldolphin/webkit/es;-><init>()V

    throw v0
.end method

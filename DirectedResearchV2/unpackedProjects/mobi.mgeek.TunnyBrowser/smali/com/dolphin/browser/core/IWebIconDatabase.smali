.class public interface abstract Lcom/dolphin/browser/core/IWebIconDatabase;
.super Ljava/lang/Object;
.source "IWebIconDatabase.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Ljava/lang/String;)V
.end method

.method public abstract releaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method public abstract removeAllIcons()V
.end method

.method public abstract requestIconForPageUrl(Ljava/lang/String;Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V
.end method

.method public abstract retainIconForPageUrl(Ljava/lang/String;)V
.end method

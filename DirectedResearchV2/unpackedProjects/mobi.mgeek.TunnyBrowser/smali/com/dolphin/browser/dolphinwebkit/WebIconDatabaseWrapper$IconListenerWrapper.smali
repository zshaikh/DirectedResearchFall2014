.class Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper$IconListenerWrapper;
.super Ljava/lang/Object;
.source "WebIconDatabaseWrapper.java"

# interfaces
.implements Ldolphin/webkit/WebIconDatabase$IconListener;


# instance fields
.field private mListener:Lcom/dolphin/browser/core/WebIconDatabase$IconListener;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper$IconListenerWrapper;->mListener:Lcom/dolphin/browser/core/WebIconDatabase$IconListener;

    .line 63
    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/WebIconDatabaseWrapper$IconListenerWrapper;->mListener:Lcom/dolphin/browser/core/WebIconDatabase$IconListener;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/WebIconDatabase$IconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 68
    return-void
.end method

.class Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper$IconListenerWrapper;
.super Ljava/lang/Object;
.source "WebIconDatabaseWrapper.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# instance fields
.field private mListener:Lcom/dolphin/browser/core/WebIconDatabase$IconListener;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper$IconListenerWrapper;->mListener:Lcom/dolphin/browser/core/WebIconDatabase$IconListener;

    .line 62
    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebIconDatabaseWrapper$IconListenerWrapper;->mListener:Lcom/dolphin/browser/core/WebIconDatabase$IconListener;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/WebIconDatabase$IconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

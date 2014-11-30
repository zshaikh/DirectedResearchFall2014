.class public interface abstract Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;
.super Ljava/lang/Object;
.source "IWebViewContextMenuExtension.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final TYPE_NAME:Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onContextItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onCreateContextMenu(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;Landroid/view/ContextMenu;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

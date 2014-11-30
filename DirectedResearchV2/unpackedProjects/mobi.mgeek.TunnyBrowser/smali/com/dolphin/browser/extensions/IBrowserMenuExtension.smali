.class public interface abstract Lcom/dolphin/browser/extensions/IBrowserMenuExtension;
.super Ljava/lang/Object;
.source "IBrowserMenuExtension.java"


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
    .line 32
    const-class v0, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onCreateOptionsMenu(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onOptionsItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onPrepareOptionsMenu(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

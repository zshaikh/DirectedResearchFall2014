.class public interface abstract Lcom/dolphin/browser/extensions/ITitleBarExtension;
.super Ljava/lang/Object;
.source "ITitleBarExtension.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
.end annotation


# static fields
.field public static final TYPE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/dolphin/browser/extensions/ITitleBarExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/ITitleBarExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract initTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
.end method

.method public abstract shouldHideFavicon(Lcom/dolphin/browser/core/ITab;)Z
.end method

.method public abstract updateTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/core/ITab;)V
.end method

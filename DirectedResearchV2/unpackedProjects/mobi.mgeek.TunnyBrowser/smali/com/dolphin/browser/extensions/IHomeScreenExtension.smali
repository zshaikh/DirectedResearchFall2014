.class public interface abstract Lcom/dolphin/browser/extensions/IHomeScreenExtension;
.super Ljava/lang/Object;
.source "IHomeScreenExtension.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
.end annotation


# static fields
.field public static final TYPE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/dolphin/browser/extensions/IHomeScreenExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IHomeScreenExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getHomescreenTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getHomescreenView()Landroid/view/View;
.end method

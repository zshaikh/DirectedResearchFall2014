.class public interface abstract Lcom/dolphin/browser/extensions/x;
.super Ljava/lang/Object;
.source "IAddonStateExtension.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/x;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAddonState()Ljava/lang/CharSequence;
.end method

.method public abstract getState()I
.end method

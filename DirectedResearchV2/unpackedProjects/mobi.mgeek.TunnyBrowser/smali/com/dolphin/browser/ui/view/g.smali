.class Lcom/dolphin/browser/ui/view/g;
.super Ljava/lang/Object;
.source "FadeInRemoteImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/f;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/g;->a:Lcom/dolphin/browser/ui/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/g;->a:Lcom/dolphin/browser/ui/view/f;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/f;->a:Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->a(Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;)V

    .line 100
    return-void
.end method

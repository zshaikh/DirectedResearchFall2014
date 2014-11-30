.class Lcom/dolphin/browser/ui/view/b;
.super Ljava/lang/Object;
.source "ContentWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/ContentWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/ContentWrapper;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/b;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/b;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->c(Lcom/dolphin/browser/ui/view/ContentWrapper;)Lcom/dolphin/browser/ui/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/b;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->c(Lcom/dolphin/browser/ui/view/ContentWrapper;)Lcom/dolphin/browser/ui/view/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/ui/view/c;->a()V

    .line 202
    :cond_0
    return-void
.end method

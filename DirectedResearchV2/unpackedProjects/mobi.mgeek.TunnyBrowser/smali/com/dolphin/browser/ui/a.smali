.class Lcom/dolphin/browser/ui/a;
.super Ljava/lang/Object;
.source "ActionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/ActionDetector;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/ActionDetector;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/ui/a;->a:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/ui/a;->a:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-static {v0}, Lcom/dolphin/browser/ui/ActionDetector;->b(Lcom/dolphin/browser/ui/ActionDetector;)Lcom/dolphin/browser/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/a;->a:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-static {v1}, Lcom/dolphin/browser/ui/ActionDetector;->a(Lcom/dolphin/browser/ui/ActionDetector;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/c;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 54
    return-void
.end method

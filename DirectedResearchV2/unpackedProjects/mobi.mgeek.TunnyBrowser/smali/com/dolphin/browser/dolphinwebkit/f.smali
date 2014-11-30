.class Lcom/dolphin/browser/dolphinwebkit/f;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/dolphinwebkit/MyWebView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/dolphinwebkit/MyWebView;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/f;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/f;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->fillUsernamePasswordIfNeeded()V

    .line 567
    return-void
.end method

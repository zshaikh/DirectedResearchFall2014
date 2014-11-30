.class Lcom/dolphin/browser/titlebar/t;
.super Ljava/lang/Object;
.source "TitleBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/q;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/titlebar/q;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/t;->a:Lcom/dolphin/browser/titlebar/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/t;->a:Lcom/dolphin/browser/titlebar/q;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/q;->b(Lcom/dolphin/browser/titlebar/q;)Lcom/dolphin/browser/titlebar/TinyTitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/t;->a:Lcom/dolphin/browser/titlebar/q;

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/q;->a(Lcom/dolphin/browser/titlebar/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->a(I)V

    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/t;->a:Lcom/dolphin/browser/titlebar/q;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/q;->b(Lcom/dolphin/browser/titlebar/q;)Lcom/dolphin/browser/titlebar/TinyTitleBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->setVisibility(I)V

    .line 218
    const-string v0, "TitleBarManager"

    const-string v1, "showTinyTitleBar"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

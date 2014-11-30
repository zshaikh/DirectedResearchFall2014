.class Lcom/dolphin/browser/tabbar/b;
.super Ljava/lang/Object;
.source "AnimHighLightLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/b;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/b;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;Z)Z

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/b;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)Lcom/dolphin/browser/tabbar/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/b;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)Lcom/dolphin/browser/tabbar/c;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/c;->e(Lcom/dolphin/browser/tabbar/c;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/b;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)Lcom/dolphin/browser/tabbar/c;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/c;->e(Lcom/dolphin/browser/tabbar/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/b;->a:Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;Lcom/dolphin/browser/tabbar/c;)Lcom/dolphin/browser/tabbar/c;

    goto :goto_0
.end method

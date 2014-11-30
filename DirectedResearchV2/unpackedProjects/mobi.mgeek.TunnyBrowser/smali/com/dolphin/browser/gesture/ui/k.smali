.class Lcom/dolphin/browser/gesture/ui/k;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Lcom/dolphin/browser/gesture/o;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/GestureOverlayView;Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/gesture/i;->b(Lcom/dolphin/browser/gesture/Gesture;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01e5

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->finish()V

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/GestureOverlayView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 412
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->g(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    .line 413
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/k;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02f3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

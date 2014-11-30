.class Lcom/dolphin/browser/gesture/ui/i;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->e(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/Gesture;)Lcom/dolphin/browser/gesture/Gesture;

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->k()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    invoke-static {}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/gesture/i;->e(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/Gesture;)Lcom/dolphin/browser/gesture/Gesture;

    .line 292
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0, v3}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Z)Z

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/GestureOverlayView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/i;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 301
    :cond_1
    return-void
.end method

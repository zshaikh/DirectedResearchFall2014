.class Lcom/dolphin/browser/gesture/ui/h;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/f;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/h;->a:Lcom/dolphin/browser/gesture/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/h;->a:Lcom/dolphin/browser/gesture/ui/f;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/GestureOverlayView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/h;->a:Lcom/dolphin/browser/gesture/ui/f;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/Gesture;)Lcom/dolphin/browser/gesture/Gesture;

    .line 259
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/h;->a:Lcom/dolphin/browser/gesture/ui/f;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    return-void
.end method

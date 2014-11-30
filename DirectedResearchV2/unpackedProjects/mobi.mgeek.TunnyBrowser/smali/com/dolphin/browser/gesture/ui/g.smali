.class Lcom/dolphin/browser/gesture/ui/g;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/gesture/ui/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/g;->b:Lcom/dolphin/browser/gesture/ui/f;

    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/g;->b:Lcom/dolphin/browser/gesture/ui/f;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->d(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->c(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/g;->b:Lcom/dolphin/browser/gesture/ui/f;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a()V

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/g;->b:Lcom/dolphin/browser/gesture/ui/f;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/f;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->setResult(I)V

    .line 249
    return-void
.end method

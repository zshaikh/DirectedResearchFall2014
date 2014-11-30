.class Lcom/dolphin/browser/ui/launcher/a;
.super Ljava/lang/Object;
.source "DoneButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/b;

.field final synthetic b:Lcom/dolphin/browser/ui/launcher/DoneButton;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/DoneButton;Lcom/dolphin/browser/ui/launcher/b;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/a;->b:Lcom/dolphin/browser/ui/launcher/DoneButton;

    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/a;->a:Lcom/dolphin/browser/ui/launcher/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a;->a:Lcom/dolphin/browser/ui/launcher/b;

    sget-object v1, Lcom/dolphin/browser/ui/launcher/b;->b:Lcom/dolphin/browser/ui/launcher/b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0303

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/a;->b:Lcom/dolphin/browser/ui/launcher/DoneButton;

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/DoneButton;->a(Lcom/dolphin/browser/ui/launcher/DoneButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0514

    goto :goto_0
.end method

.class public Lcom/dolphin/browser/preload/ui/i;
.super Landroid/app/Dialog;
.source "TermsOfServiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0057

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/preload/ui/i;->a(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/preload/ui/i;->setContentView(I)V

    .line 24
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/preload/ui/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/i;->a:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/i;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/i;->dismiss()V

    .line 32
    return-void
.end method

.class Lcom/dolphin/browser/DolphinService/ui/al;
.super Ljava/lang/Object;
.source "DolphinConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/al;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 145
    if-eqz p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/al;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/al;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.class public Lcom/dolphin/browser/DolphinService/ui/TitleWebHostActivity;
.super Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;
.source "TitleWebHostActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;-><init>()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03005f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/TitleWebHostActivity;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/TitleWebHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 17
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/TitleWebHostActivity;->finish()V

    .line 27
    :goto_0
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 22
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 24
    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/TitleWebHostActivity;->b:Ljava/lang/String;

    .line 26
    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/TitleWebHostActivity;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

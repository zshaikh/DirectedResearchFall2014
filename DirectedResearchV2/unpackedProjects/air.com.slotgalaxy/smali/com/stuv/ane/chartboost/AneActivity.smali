.class public Lcom/stuv/ane/chartboost/AneActivity;
.super Landroid/app/Activity;
.source "AneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030002

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->showInterstitial(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->onStart()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v2, 0x7f020000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/chartboost/AneActivity;->setContentView(I)V

    .line 32
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/stuv/ane/chartboost/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, "authButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/stuv/ane/chartboost/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 36
    .local v1, "initButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 42
    const-string v2, "50ea75eb17ba47570900002b"

    const-string v3, "2d5db9c915c250e241a36c4ae65fbe7e0b7e7fb9"

    invoke-static {v2, v3}, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->initialise(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

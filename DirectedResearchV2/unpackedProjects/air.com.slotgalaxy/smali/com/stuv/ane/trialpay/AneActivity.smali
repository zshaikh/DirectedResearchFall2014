.class public Lcom/stuv/ane/trialpay/AneActivity;
.super Landroid/app/Activity;
.source "AneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060001

    if-ne v0, v1, :cond_0

    .line 57
    const-string v0, "4b507ff9a5ba5f363be81e8a6003255b"

    const-string v1, "test_123"

    invoke-static {v0, v1}, Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;->showOffers(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/trialpay/AneActivity;->setContentView(I)V

    .line 37
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/stuv/ane/trialpay/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, "authButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/trialpay/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 41
    .local v1, "initButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 50
    return-void
.end method

.class public Lcom/stuv/ane/aarki/AneActivity;
.super Landroid/app/Activity;
.source "AneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030002

    if-eq v0, v1, :cond_0

    .line 86
    const-string v0, "g"

    const-string v1, "h"

    invoke-static {v0, v1}, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->registerApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v2, 0x7f020000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/aarki/AneActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/stuv/ane/aarki/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, "authButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/stuv/ane/aarki/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, "initButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 40
    return-void
.end method

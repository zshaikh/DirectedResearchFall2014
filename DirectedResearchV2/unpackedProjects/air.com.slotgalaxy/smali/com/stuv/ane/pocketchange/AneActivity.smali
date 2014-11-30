.class public Lcom/stuv/ane/pocketchange/AneActivity;
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
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v3, "moo"

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f060001

    if-ne v1, v2, :cond_1

    .line 69
    invoke-static {}, Lcom/pocketchange/android/PocketChange;->getPendingNotificationIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string v1, "moo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "qmoo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/stuv/ane/pocketchange/AneActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v0    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v1, "moo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "q: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "cr_1000"

    invoke-static {v2}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->getQuantityPurchasedForProduct(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/pocketchange/AneActivity;->setContentView(I)V

    .line 34
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/stuv/ane/pocketchange/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 35
    .local v0, "authButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/pocketchange/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 38
    .local v1, "initButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 44
    const-string v2, "dbaaf144b304aa15fbddf285c94ac8f6447560b9"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->initialise(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

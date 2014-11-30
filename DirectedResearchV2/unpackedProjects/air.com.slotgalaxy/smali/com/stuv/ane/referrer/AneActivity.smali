.class public Lcom/stuv/ane/referrer/AneActivity;
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
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030002

    if-ne v0, v1, :cond_0

    .line 54
    const-string v0, "ReferralReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/stuv/ane/referrer/extensions/ReferrerWrapper;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v2, 0x7f020000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/referrer/AneActivity;->setContentView(I)V

    .line 32
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/stuv/ane/referrer/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, "authButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/stuv/ane/referrer/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 36
    .local v1, "initButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/stuv/ane/referrer/extensions/ReferrerWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 46
    return-void
.end method

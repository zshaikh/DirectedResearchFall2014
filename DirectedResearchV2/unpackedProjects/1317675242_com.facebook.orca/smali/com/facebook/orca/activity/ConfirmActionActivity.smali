.class public abstract Lcom/facebook/orca/activity/ConfirmActionActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "ConfirmActionActivity.java"


# instance fields
.field private k:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/activity/ConfirmActionParams;)V
    .locals 2

    .prologue
    .line 31
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->k:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->m:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->n:Landroid/widget/Button;

    .line 34
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->o:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->n:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->n:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/activity/ConfirmActionActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/activity/ConfirmActionActivity$1;-><init>(Lcom/facebook/orca/activity/ConfirmActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/activity/ConfirmActionActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/activity/ConfirmActionActivity$2;-><init>(Lcom/facebook/orca/activity/ConfirmActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->setContentView(I)V

    .line 28
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->finish()V

    .line 59
    return-void
.end method

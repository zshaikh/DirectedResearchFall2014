.class Lcom/pocketchange/android/rewards/RewardsActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/rewards/RewardsActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/rewards/RewardsActivity;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/rewards/RewardsActivity;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$6;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$6;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$6;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/rewards/RewardsActivity;->loadUrl(Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$6;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->reloadWebView()V

    goto :goto_0
.end method

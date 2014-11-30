.class Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->setLongClickEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;Z)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$2;->b:Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;

    iput-boolean p2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$2;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

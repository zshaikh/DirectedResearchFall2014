.class Lcom/pocketchange/android/rewards/RewardsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/rewards/RewardsActivity;->d()V
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
    .line 369
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$3;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$3;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->onLoadingCancelled()V

    .line 373
    return-void
.end method

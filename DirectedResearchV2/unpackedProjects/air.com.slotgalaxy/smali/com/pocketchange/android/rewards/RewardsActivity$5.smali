.class Lcom/pocketchange/android/rewards/RewardsActivity$5;
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
    .line 409
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$5;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$5;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->finish()V

    .line 413
    return-void
.end method

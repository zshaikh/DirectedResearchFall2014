.class Lcom/pocketchange/android/rewards/RewardsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/rewards/RewardsActivity;->postIfNotDestroyed(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/pocketchange/android/rewards/RewardsActivity;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/rewards/RewardsActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$7;->b:Lcom/pocketchange/android/rewards/RewardsActivity;

    iput-object p2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$7;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$7;->b:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-static {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->a(Lcom/pocketchange/android/rewards/RewardsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$7;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

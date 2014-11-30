.class Lcom/pocketchange/android/rewards/RewardsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/rewards/RewardsActivity;->onWebViewLoadedNewPage()V
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
    .line 338
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$2;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$2;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->reloadWebView()V

    .line 341
    return-void
.end method

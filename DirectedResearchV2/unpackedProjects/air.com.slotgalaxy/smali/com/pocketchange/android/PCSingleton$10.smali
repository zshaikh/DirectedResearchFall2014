.class Lcom/pocketchange/android/PCSingleton$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;-><init>(Landroid/content/Context;Lcom/pocketchange/android/PCSingleton$Configuration;Lcom/pocketchange/android/api/APIRequestExecutor;Lcom/pocketchange/android/ProductTransactionManager;Ljava/util/Timer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$10;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$10;->a:Lcom/pocketchange/android/PCSingleton;

    const-string v1, "daily"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/PCSingleton;->grantReward(Ljava/lang/String;I)V

    .line 329
    return-void
.end method

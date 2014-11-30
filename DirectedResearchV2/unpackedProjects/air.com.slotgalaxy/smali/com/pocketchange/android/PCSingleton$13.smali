.class Lcom/pocketchange/android/PCSingleton$13;
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
    .line 336
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$13;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$13;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->q()V

    .line 339
    return-void
.end method

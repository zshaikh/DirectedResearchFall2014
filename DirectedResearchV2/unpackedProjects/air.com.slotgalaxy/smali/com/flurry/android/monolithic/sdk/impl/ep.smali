.class Lcom/flurry/android/monolithic/sdk/impl/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/flurry/android/monolithic/sdk/impl/em;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/em;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->d:Lcom/flurry/android/monolithic/sdk/impl/em;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->a:[B

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->d:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->d:Lcom/flurry/android/monolithic/sdk/impl/em;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->a:[B

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ep;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/em;->b([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const/4 v1, 0x6

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "storeData error"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

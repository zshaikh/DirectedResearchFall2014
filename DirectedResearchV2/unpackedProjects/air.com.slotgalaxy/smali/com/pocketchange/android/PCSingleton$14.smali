.class Lcom/pocketchange/android/PCSingleton$14;
.super Lcom/pocketchange/android/util/ExceptionLoggingRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0, p2}, Lcom/pocketchange/android/util/ExceptionLoggingRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runWithErrors()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const-string v6, "PocketChange"

    .line 353
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->b()V

    .line 354
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {v0}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/PCSingleton;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/pocketchange/android/PCSingleton$14$1;

    const-string v4, "PocketChange"

    invoke-direct {v1, p0, v6}, Lcom/pocketchange/android/PCSingleton$14$1;-><init>(Lcom/pocketchange/android/PCSingleton$14;Ljava/lang/String;)V

    const-wide/32 v4, 0x927c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 364
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {v0}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/PCSingleton;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/pocketchange/android/PCSingleton$14$2;

    const-string v4, "PocketChange"

    invoke-direct {v1, p0, v6}, Lcom/pocketchange/android/PCSingleton$14$2;-><init>(Lcom/pocketchange/android/PCSingleton$14;Ljava/lang/String;)V

    const-wide/32 v4, 0x1b7740

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 371
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$14;->a:Lcom/pocketchange/android/PCSingleton;

    const-string v1, "SDK_INITIALIZED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pocketchange/android/PCSingleton;->recordEvent(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    .line 372
    return-void
.end method

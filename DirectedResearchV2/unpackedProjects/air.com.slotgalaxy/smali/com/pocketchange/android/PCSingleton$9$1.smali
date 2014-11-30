.class Lcom/pocketchange/android/PCSingleton$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/JSONResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton$9;->offer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton$9;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton$9;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$9$1;->a:Lcom/pocketchange/android/PCSingleton$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$9$1;->a:Lcom/pocketchange/android/PCSingleton$9;

    iget-object v0, v0, Lcom/pocketchange/android/PCSingleton$9;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pocketchange/android/PCSingleton;->f:J

    .line 1270
    return-void
.end method

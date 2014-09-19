.class public Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMAvailable;
.super Ljava/lang/Object;
.source "PushNotifier.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/notifier/PushNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsGCMAvailable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "context"
    .parameter "args"

    .prologue
    const-string v5, "PushNotifier"

    .line 225
    const-string v3, "PushNotifier"

    const-string v3, "call isGCMAvailable"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    #calls: Lcom/buffalostudios/aneutils/notifier/PushNotifier;->isGCMAvailable(Lcom/adobe/fre/FREContext;)Z
    invoke-static {p1}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->access$0(Lcom/adobe/fre/FREContext;)Z

    move-result v2

    .line 228
    .local v2, result:Z
    const-string v3, "PushNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GCM Result:+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, resFreObject:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PushNotifier"

    const-string v3, "Thread Exception"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

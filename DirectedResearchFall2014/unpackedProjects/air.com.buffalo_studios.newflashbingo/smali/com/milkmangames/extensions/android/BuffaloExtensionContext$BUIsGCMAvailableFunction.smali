.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;
.super Ljava/lang/Object;
.source "BuffaloExtensionContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milkmangames/extensions/android/BuffaloExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BUIsGCMAvailableFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "arg0"
    .parameter "args"

    .prologue
    const-string v5, "[BUExtension]"

    .line 849
    const-string v3, "[BUExtension]"

    const-string v3, "call isGCMAvailable"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v3, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsGCMAvailableFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual {v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isGCMAvailable()Z

    move-result v2

    .line 852
    .local v2, result:Z
    const-string v3, "[BUExtension]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GCM Result:+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x0

    .line 856
    .local v1, resFreObject:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 863
    :goto_0
    return-object v1

    .line 858
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[BUExtension]"

    const-string v3, "Thread Exception"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

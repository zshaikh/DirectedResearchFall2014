.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;
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
    name = "BUIsAndroidIdAvailabledFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .parameter "arg0"
    .parameter "args"

    .prologue
    .line 1027
    iget-object v3, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUIsAndroidIdAvailabledFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual {v3}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isAndroidIdAvailable()Z

    move-result v2

    .line 1029
    .local v2, result:Z
    const/4 v1, 0x0

    .line 1032
    .local v1, resFreObject:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1039
    :goto_0
    return-object v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[BUExtension]"

    const-string v4, "Thread Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

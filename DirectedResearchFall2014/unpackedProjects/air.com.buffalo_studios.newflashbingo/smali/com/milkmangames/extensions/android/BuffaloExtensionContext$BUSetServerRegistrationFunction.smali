.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;
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
    name = "BUSetServerRegistrationFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "arg0"
    .parameter "args"

    .prologue
    .line 891
    const/4 v3, 0x0

    .line 893
    .local v3, result:Z
    const/4 v2, 0x0

    .line 896
    .local v2, resFreObject:Lcom/adobe/fre/FREObject;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    .line 897
    .local v1, isRegistered:Z
    iget-object v4, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUSetServerRegistrationFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual {v4, v1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->setServerRegistration(Z)Z

    move-result v3

    .line 898
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 905
    .end local v1           #isRegistered:Z
    :goto_0
    return-object v2

    .line 900
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 902
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[BUExtension]"

    const-string v5, "Thread Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

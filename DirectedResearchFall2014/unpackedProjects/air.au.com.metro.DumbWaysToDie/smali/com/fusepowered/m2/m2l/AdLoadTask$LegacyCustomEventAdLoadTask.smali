.class Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;
.super Lcom/fusepowered/m2/m2l/AdLoadTask;
.source "AdLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/AdLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacyCustomEventAdLoadTask"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mHeader:Lorg/apache/http/Header;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/AdViewController;Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;
    .param p2, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdLoadTask;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;)V

    .line 222
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;->mHeader:Lorg/apache/http/Header;

    .line 223
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;->mHeader:Lorg/apache/http/Header;

    .line 264
    return-void
.end method

.method execute()V
    .locals 12

    .prologue
    const-string v11, "Couldn\'t perform custom method named "

    const-string v10, "MoPub"

    .line 227
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;->mWeakAdViewController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/m2l/AdViewController;

    .line 228
    .local v0, "adViewController":Lcom/fusepowered/m2/m2l/AdViewController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->setNotLoading()V

    .line 233
    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getMoPubView()Lcom/fusepowered/m2/m2l/MoPubView;

    move-result-object v5

    .line 235
    .local v5, "mpv":Lcom/fusepowered/m2/m2l/MoPubView;
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;->mHeader:Lorg/apache/http/Header;

    if-nez v7, :cond_2

    .line 236
    const-string v7, "MoPub"

    const-string v7, "Couldn\'t call custom method because the server did not specify one."

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v7, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {v5, v7}, Lcom/fusepowered/m2/m2l/MoPubView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;->mHeader:Lorg/apache/http/Header;

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "methodName":Ljava/lang/String;
    const-string v7, "MoPub"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Trying to call method named "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v5}, Lcom/fusepowered/m2/m2l/MoPubView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 248
    .local v6, "userActivity":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 249
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/fusepowered/m2/m2l/MoPubView;

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 250
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 252
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "MoPub"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Couldn\'t perform custom method named "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    const-string v8, "(MoPubView view) because your activity class has no such method"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v7, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {v5, v7}, Lcom/fusepowered/m2/m2l/MoPubView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0

    .line 255
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MoPub"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Couldn\'t perform custom method named "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v7, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {v5, v7}, Lcom/fusepowered/m2/m2l/MoPubView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto/16 :goto_0
.end method

.method getHeader()Lorg/apache/http/Header;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;->mHeader:Lorg/apache/http/Header;

    return-object v0
.end method

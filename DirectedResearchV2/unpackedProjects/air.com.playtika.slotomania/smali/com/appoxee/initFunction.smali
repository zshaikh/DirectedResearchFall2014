.class public Lcom/appoxee/initFunction;
.super Ljava/lang/Object;
.source "initFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field static mCtx:Lcom/adobe/fre/FREContext;


# instance fields
.field mInboxEnabled:Z

.field mSetAppDefaultActivityClass:Ljava/lang/String;

.field mSetAppSDKKey:Ljava/lang/String;

.field mSetAppSecretKey:Ljava/lang/String;

.field test:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/appoxee/initFunction;->mCtx:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 18
    sput-object p1, Lcom/appoxee/initFunction;->mCtx:Lcom/adobe/fre/FREContext;

    .line 19
    sget-object v1, Lcom/appoxee/initFunction;->mCtx:Lcom/adobe/fre/FREContext;

    invoke-virtual {v1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    .line 21
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appoxee/initFunction;->mSetAppSDKKey:Ljava/lang/String;

    .line 22
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appoxee/initFunction;->mSetAppSecretKey:Ljava/lang/String;

    .line 23
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appoxee/initFunction;->mSetAppDefaultActivityClass:Ljava/lang/String;

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appoxee/initFunction;->mInboxEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    sput-boolean v3, Lcom/appoxee/AppoxeeManager;->isAirVersion:Z

    .line 30
    new-instance v1, Lcom/appoxee/asyncs/initAsync;

    iget-object v2, p0, Lcom/appoxee/initFunction;->mSetAppSDKKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/appoxee/initFunction;->mSetAppSecretKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/appoxee/initFunction;->mSetAppDefaultActivityClass:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/appoxee/initFunction;->mInboxEnabled:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/appoxee/asyncs/initAsync;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/appoxee/asyncs/initAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    const/4 v1, 0x0

    return-object v1

    .line 26
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "in:initFunction"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

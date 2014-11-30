.class public Lcom/fusepowered/crashlog/CrashData;
.super Ljava/lang/Object;
.source "CrashData.java"


# static fields
.field private static final JSON_CRASH_ID:Ljava/lang/String; = "id"

.field private static final JSON_STACK_TRACE:Ljava/lang/String; = "stackTrace"

.field private static final JSON_THREAD_NAME:Ljava/lang/String; = "threadName"

.field private static final JSON_THREAD_STATE:Ljava/lang/String; = "threadState"

.field private static final TAG:Ljava/lang/String; = "CrashData"


# instance fields
.field private final mCrashId:Ljava/lang/String;

.field private mCrashedThreadName:Ljava/lang/String;

.field private mCrashedThreadState:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/crashlog/CrashData;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/fusepowered/crashlog/CrashData;
    .locals 10
    .param p0, "crashJson"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "crashId":Ljava/lang/String;
    const-string v7, "stackTrace"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "stackTrace":Ljava/lang/String;
    const-string v7, "threadName"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "threadName":Ljava/lang/String;
    const-string v7, "threadState"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "threadState":Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/crashlog/CrashData;

    invoke-direct {v0, v1}, Lcom/fusepowered/crashlog/CrashData;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "crashData":Lcom/fusepowered/crashlog/CrashData;
    invoke-virtual {v0, v4}, Lcom/fusepowered/crashlog/CrashData;->setStackTrace(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v5}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v6}, Lcom/fusepowered/crashlog/CrashData;->setCrashedThreadState(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 103
    .end local v0    # "crashData":Lcom/fusepowered/crashlog/CrashData;
    .end local v1    # "crashId":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "stackTrace":Ljava/lang/String;
    .end local v5    # "threadName":Ljava/lang/String;
    .end local v6    # "threadState":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 101
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 102
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "CrashData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse crash json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCrashId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashedThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashedThreadState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadState:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashData;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public setCrashedThreadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashedThreadName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCrashedThreadState(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashedThreadState"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadState:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashData;->mStackTrace:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    iget-object v3, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "stackTrace"

    iget-object v3, p0, Lcom/fusepowered/crashlog/CrashData;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "threadName"

    iget-object v3, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "threadState"

    iget-object v3, p0, Lcom/fusepowered/crashlog/CrashData;->mCrashedThreadState:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 76
    .local v1, "root":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

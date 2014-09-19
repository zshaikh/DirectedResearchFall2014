.class public Lcom/fiksu/asotracking/EventTracker;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;
    }
.end annotation


# static fields
.field private static mCachedContext:Landroid/content/Context;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "event"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getInstance()Lcom/fiksu/asotracking/FiksuConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfiguration(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    .line 30
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/EventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    sput-object p1, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected static c2dMessageReceived(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;

    invoke-direct {v1, p0}, Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    return-void
.end method

.method private copyOfParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected static getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FiksuSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V
    .locals 2
    .parameter "eventParameter"
    .parameter "value"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method protected uploadEvent()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiksu/asotracking/EventUploader;

    iget-object v2, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->copyOfParams()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fiksu/asotracking/EventUploader;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method

.method protected uploadEventSynchronously(J)V
    .locals 3
    .parameter "timeoutMs"

    .prologue
    .line 52
    new-instance v0, Lcom/fiksu/asotracking/EventUploader;

    iget-object v1, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->copyOfParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fiksu/asotracking/EventUploader;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 54
    .local v0, uploader:Lcom/fiksu/asotracking/EventUploader;
    monitor-enter v0

    .line 55
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 61
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 58
    :catch_0
    move-exception v1

    goto :goto_0
.end method

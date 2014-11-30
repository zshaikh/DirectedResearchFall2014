.class final Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;
.super Ljava/lang/Object;
.source "EventTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiksu/asotracking/EventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "C2DMessageTimeSaver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 79
    sget-object v3, Lcom/fiksu/asotracking/FiksuConstants;->SHARED_PREFERENCES_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/fiksu/asotracking/EventTracker;->getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 81
    .local v2, "preferences":Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 82
    monitor-exit v3

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 86
    .local v1, "now":Ljava/util/Date;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "Fiksu.cd2MessageTime"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    monitor-exit v3

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "now":Ljava/util/Date;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

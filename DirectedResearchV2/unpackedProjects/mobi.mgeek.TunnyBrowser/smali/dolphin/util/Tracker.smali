.class public final Ldolphin/util/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final ACTION_BACKFORWARD:Ljava/lang/String; = "backforward"

.field public static final ACTION_BACKFORWARD_URL:Ljava/lang/String; = "backforward_url"

.field public static final ACTION_CLICKBTN:Ljava/lang/String; = "clickbtn"

.field public static final ACTION_DOUBLE_TAP:Ljava/lang/String; = "doubletap"

.field public static final ACTION_ENABLE:Ljava/lang/String; = "enable"

.field public static final ACTION_FPS:Ljava/lang/String; = "fps"

.field public static final ACTION_FPS_URL:Ljava/lang/String; = "fps_url"

.field public static final ACTION_JETPACK:Ljava/lang/String; = "jetpack_pnr"

.field public static final ACTION_ONEPKG:Ljava/lang/String; = "dolphin_engine_pnr"

.field public static final ACTION_PINCH_TO_ZOOM:Ljava/lang/String; = "pinchzoom"

.field public static final ACTION_TOUCH:Ljava/lang/String; = "touch"

.field public static final ACTION_TOUCH_URL:Ljava/lang/String; = "touch_url"

.field public static final CATEGORY_AUTO_FIT:Ljava/lang/String; = "auto fit"

.field public static final CATEGORY_LINKPREVIEW:Ljava/lang/String; = "link preview"

.field public static final CATEGORY_MEMORY:Ljava/lang/String; = "memory"

.field public static final CATEGORY_PNR:Ljava/lang/String; = "pnr_error"

.field public static final LABEL_AVAIL:Ljava/lang/String; = "avail"

.field public static final LABEL_PSS:Ljava/lang/String; = "pss"

.field public static final LABEL_THRESHOLD:Ljava/lang/String; = "threshold"

.field private static final MSG_SUMMARIZIE_EVENT:I = 0x200

.field private static final SUMMARIZE_EVENT_DELAY:J = 0x2bf20L

.field private static sCounters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldolphin/util/s;",
            ">;"
        }
    .end annotation
.end field

.field private static sDelegate:Ldolphin/util/Tracker$Delegate;

.field private static sTrackerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ldolphin/util/r;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/util/r;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ldolphin/util/Tracker;->sTrackerHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static count(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Ldolphin/util/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    sget-object v1, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    monitor-enter v1

    .line 212
    :try_start_0
    sget-object v2, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/util/s;

    .line 214
    invoke-virtual {v0}, Ldolphin/util/s;->a()V

    .line 221
    :goto_0
    monitor-exit v1

    .line 222
    return-void

    .line 216
    :cond_0
    new-instance v2, Ldolphin/util/s;

    invoke-direct {v2, p0, p1, p2, p3}, Ldolphin/util/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    sget-object v3, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Ldolphin/util/Tracker;->sTrackerHandler:Landroid/os/Handler;

    const/16 v3, 0x200

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 219
    sget-object v2, Ldolphin/util/Tracker;->sTrackerHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static forceTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    sget-object v0, Ldolphin/util/Tracker;->sDelegate:Ldolphin/util/Tracker$Delegate;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p0, p1, p2, p3}, Ldolphin/util/Tracker$Delegate;->forceTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    :cond_0
    return-void
.end method

.method public static final setTrackerDelegate(Ldolphin/util/Tracker$Delegate;)V
    .locals 0

    .prologue
    .line 161
    sput-object p0, Ldolphin/util/Tracker;->sDelegate:Ldolphin/util/Tracker$Delegate;

    .line 162
    return-void
.end method

.method public static sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 233
    invoke-static {p0, p1, p2}, Ldolphin/util/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    sget-object v1, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    monitor-enter v1

    .line 236
    :try_start_0
    sget-object v2, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    sget-object v2, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/util/s;

    .line 238
    invoke-virtual {v0, p3}, Ldolphin/util/s;->a(I)V

    .line 245
    :goto_0
    monitor-exit v1

    .line 246
    return-void

    .line 240
    :cond_0
    new-instance v2, Ldolphin/util/s;

    invoke-direct {v2, p0, p1, p2, p4}, Ldolphin/util/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    sget-object v3, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Ldolphin/util/Tracker;->sTrackerHandler:Landroid/os/Handler;

    const/16 v3, 0x200

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 243
    sget-object v2, Ldolphin/util/Tracker;->sTrackerHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static summarizeEvent(Ldolphin/util/s;)V
    .locals 5

    .prologue
    .line 165
    sget-object v1, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    monitor-enter v1

    .line 166
    :try_start_0
    sget-object v0, Ldolphin/util/Tracker;->sCounters:Ljava/util/HashMap;

    iget-object v2, p0, Ldolphin/util/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v0, p0, Ldolphin/util/s;->b:Ljava/lang/String;

    iget-object v1, p0, Ldolphin/util/s;->c:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/util/s;->d:Ljava/lang/String;

    iget v3, p0, Ldolphin/util/s;->f:I

    iget-boolean v4, p0, Ldolphin/util/s;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Ldolphin/util/Tracker;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    sget-object v0, Ldolphin/util/Tracker;->sDelegate:Ldolphin/util/Tracker$Delegate;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p0, p1, p2, p3}, Ldolphin/util/Tracker$Delegate;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    :cond_0
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 173
    sget-object v0, Ldolphin/util/Tracker;->sDelegate:Ldolphin/util/Tracker$Delegate;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    if-eqz p4, :cond_1

    .line 176
    invoke-virtual {v0, p0, p1, p2, p3}, Ldolphin/util/Tracker$Delegate;->forceTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {v0, p0, p1, p2, p3}, Ldolphin/util/Tracker$Delegate;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

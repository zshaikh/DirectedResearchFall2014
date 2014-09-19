.class public Lcom/vungle/sdk/IVungleConstants;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/IVungleConstants$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:I

.field private static M:I

.field private static N:[Ljava/lang/String;

.field private static O:[Ljava/lang/String;

.field private static P:[Ljava/lang/String;

.field private static Q:[Ljava/lang/String;

.field private static R:[Ljava/lang/String;

.field private static S:[Ljava/lang/String;

.field private static T:[Ljava/lang/String;

.field private static U:I

.field private static V:J

.field private static W:Lcom/vungle/sdk/VunglePub$EventListener;

.field private static X:Ljava/lang/Object;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    sput v2, Lcom/vungle/sdk/IVungleConstants;->M:I

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://api.vungle.com"

    aput-object v1, v0, v2

    const-string v1, "http://acceptance.vungle.com"

    aput-object v1, v0, v3

    const-string v1, "http://localhost:3000"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->N:[Ljava/lang/String;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/api/v1/requestAd"

    aput-object v1, v0, v2

    const-string v1, "/api/v2/requestAd"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->O:[Ljava/lang/String;

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/api/v1/reportAd"

    aput-object v1, v0, v2

    const-string v1, "/api/v2/reportAd"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->P:[Ljava/lang/String;

    .line 90
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/api/v1/new"

    aput-object v1, v0, v2

    const-string v1, "/api/v2/new"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->Q:[Ljava/lang/String;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/api/v1/sessionStart"

    aput-object v1, v0, v2

    const-string v1, "/api/v2/sessionStart"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->R:[Ljava/lang/String;

    .line 98
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/api/v1/sessionEnd"

    aput-object v1, v0, v2

    const-string v1, "/api/v2/sessionEnd"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->S:[Ljava/lang/String;

    .line 102
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/api/v1/unfilled"

    aput-object v1, v0, v2

    const-string v1, "/api/v2/unfilled"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->T:[Ljava/lang/String;

    .line 108
    const-string v0, "Vungle"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 109
    const-string v0, "VungleException"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    .line 110
    const-string v0, "Stats"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->c:Ljava/lang/String;

    .line 111
    const-string v0, "VungleDownload"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->d:Ljava/lang/String;

    .line 112
    const-string v0, "Vungle_Media"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->e:Ljava/lang/String;

    .line 113
    const-string v0, "adPayload"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->f:Ljava/lang/String;

    .line 114
    const-string v0, "post_"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->g:Ljava/lang/String;

    .line 115
    const-string v0, "pre_"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->h:Ljava/lang/String;

    .line 116
    const-string v0, ""

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    .line 118
    const-string v0, "OK"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->j:Ljava/lang/String;

    .line 119
    const-string v0, "DownloadStats"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->k:Ljava/lang/String;

    .line 124
    const-string v0, "id"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->l:Ljava/lang/String;

    .line 125
    const-string v0, "url"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->m:Ljava/lang/String;

    .line 126
    const-string v0, "app_id"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->n:Ljava/lang/String;

    .line 127
    const-string v0, "chk"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->o:Ljava/lang/String;

    .line 128
    const-string v0, "campaign"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->p:Ljava/lang/String;

    .line 129
    const-string v0, "postBundle"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->q:Ljava/lang/String;

    .line 130
    const-string v0, "preBundle"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->r:Ljava/lang/String;

    .line 131
    const-string v0, "expiry"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->s:Ljava/lang/String;

    .line 132
    const-string v0, "callToActionUrl"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->t:Ljava/lang/String;

    .line 133
    const-string v0, "callToActionDest"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->u:Ljava/lang/String;

    .line 134
    const-string v0, "showClose"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->v:Ljava/lang/String;

    .line 135
    const-string v0, "countdown"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->w:Ljava/lang/String;

    .line 136
    const-string v0, "md5"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->x:Ljava/lang/String;

    .line 137
    const-string v0, "sleep"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->y:Ljava/lang/String;

    .line 138
    const-string v0, "videoHeight"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->z:Ljava/lang/String;

    .line 139
    const-string v0, "videoWidth"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->A:Ljava/lang/String;

    .line 140
    const-string v0, "size"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->B:Ljava/lang/String;

    .line 141
    const-string v0, "asyncThreshold"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->C:Ljava/lang/String;

    .line 142
    const-string v0, "retryCount"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->D:Ljava/lang/String;

    .line 143
    const-string v0, "VUNGLE_PUB_APP_INFO"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->E:Ljava/lang/String;

    .line 144
    const-string v0, "IsVgAppInstalled"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->F:Ljava/lang/String;

    .line 145
    const-string v0, "VgLastViewedTime"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->G:Ljava/lang/String;

    .line 146
    const-string v0, "VgAdDelayDuration"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->H:Ljava/lang/String;

    .line 148
    const-string v0, "ACTIVITY_LAUNCH_MODE"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->I:Ljava/lang/String;

    .line 149
    const-string v0, "webPath"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->J:Ljava/lang/String;

    .line 150
    const-string v0, "delay"

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->K:Ljava/lang/String;

    .line 151
    sput v2, Lcom/vungle/sdk/IVungleConstants;->L:I

    .line 154
    sput v2, Lcom/vungle/sdk/IVungleConstants;->U:I

    .line 157
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vungle/sdk/IVungleConstants;->V:J

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vungle/sdk/IVungleConstants;->X:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->N:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->O:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(DD)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of ad. User viewed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :try_start_0
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->X:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :try_start_1
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    if-eqz v1, :cond_0

    .line 297
    new-instance v1, Lcom/vungle/sdk/IVungleConstants$3;

    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    invoke-direct {v1, v2}, Lcom/vungle/sdk/IVungleConstants$3;-><init>(Lcom/vungle/sdk/VunglePub$EventListener;)V

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/vungle/sdk/IVungleConstants$3;->a(DD)Lcom/vungle/sdk/IVungleConstants$a;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "AdViewCallbackThread"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 313
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :goto_0
    return-void

    .line 313
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 316
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3
    .parameter

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    sput p0, Lcom/vungle/sdk/IVungleConstants;->U:I

    .line 227
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->E:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->H:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public static a(J)V
    .locals 3
    .parameter

    .prologue
    .line 238
    sput-wide p0, Lcom/vungle/sdk/IVungleConstants;->V:J

    .line 240
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->E:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->G:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method public static a(Lcom/vungle/sdk/VunglePub$EventListener;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->X:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    sput-object p0, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->N:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->P:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->N:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->Q:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->N:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->R:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->N:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->S:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->N:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->T:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/vungle/sdk/IVungleConstants;->U:I

    return v0
.end method

.method public static h()J
    .locals 2

    .prologue
    .line 234
    sget-wide v0, Lcom/vungle/sdk/IVungleConstants;->V:J

    return-wide v0
.end method

.method public static i()V
    .locals 4

    .prologue
    .line 248
    :try_start_0
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->X:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :try_start_1
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Lcom/vungle/sdk/IVungleConstants$1;

    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    invoke-direct {v1, v2}, Lcom/vungle/sdk/IVungleConstants$1;-><init>(Lcom/vungle/sdk/VunglePub$EventListener;)V

    .line 260
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "AdStartedCallbackThread"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 263
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_0
    return-void

    .line 263
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static j()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->X:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :try_start_1
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Lcom/vungle/sdk/IVungleConstants$2;

    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->W:Lcom/vungle/sdk/VunglePub$EventListener;

    invoke-direct {v1, v2}, Lcom/vungle/sdk/IVungleConstants$2;-><init>(Lcom/vungle/sdk/VunglePub$EventListener;)V

    .line 282
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "AdEndCallbackThread"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 285
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :goto_0
    return-void

    .line 285
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/facebook/orca/notify/OrcaNotificationManager;
.super Ljava/lang/Object;
.source "OrcaNotificationManager.java"


# static fields
.field private static j:[J

.field private static k:[J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/NotificationManager;

.field private final c:Landroid/os/Vibrator;

.field private final d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final e:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private final f:Lcom/facebook/orca/push/PresenceManager;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->j:[J

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->k:[J

    return-void

    .line 87
    nop

    :array_0
    .array-data 8
        0x0
        0x64
    .end array-data

    .line 91
    :array_1
    .array-data 8
        0x0
        0xfa
        0xc8
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/os/Vibrator;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/orca/push/PresenceManager;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/app/NotificationManager;

    .line 71
    iput-object p3, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Landroid/os/Vibrator;

    .line 72
    iput-object p4, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 73
    iput-object p5, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 74
    iput-object p6, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->f:Lcom/facebook/orca/push/PresenceManager;

    .line 75
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 162
    iget v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:I

    .line 163
    iget v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:I

    if-ne v0, v3, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb-messenger://thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Ljava/lang/String;

    move-object v1, p1

    .line 177
    :goto_0
    new-instance v2, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb-messenger://thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Landroid/content/Context;

    const v2, 0x7f0a00db

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "fb-messenger://threads"

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Landroid/app/Notification;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->r:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->s:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v2

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->c()Landroid/net/Uri;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_3

    .line 208
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 213
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 216
    :cond_1
    if-eqz v2, :cond_2

    .line 217
    const v0, -0xff0100

    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 218
    const/16 v0, 0x12c

    iput v0, p1, Landroid/app/Notification;->ledOnMS:I

    .line 219
    const/16 v0, 0x3e8

    iput v0, p1, Landroid/app/Notification;->ledOffMS:I

    .line 220
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 222
    :cond_2
    return-void

    .line 210
    :cond_3
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 214
    :array_0
    .array-data 8
        0x0
        0xc8
        0xc8
        0xc8
    .end array-data
.end method

.method private a(Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    const v2, 0x7f020069

    .line 184
    :goto_0
    new-instance v3, Landroid/app/Notification;

    invoke-static {p1}, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;->a(Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 185
    invoke-direct {p0, v3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Landroid/app/Notification;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;->b(Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    const-string v1, "from_notification"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;->a(Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 195
    return-void

    .line 182
    :cond_0
    const v2, 0x7f020068

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 157
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private c()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->u:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-nez v0, :cond_1

    move-object v0, v4

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    if-nez v0, :cond_2

    move-object v0, v4

    .line 241
    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_3

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 252
    :cond_4
    const/4 v1, 0x0

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 255
    const-string v3, "r"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 256
    if-nez v1, :cond_6

    .line 268
    if-eqz v1, :cond_5

    .line 270
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_5
    :goto_1
    move-object v0, v4

    .line 273
    goto :goto_0

    .line 268
    :cond_6
    if-eqz v1, :cond_0

    .line 270
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 268
    if-eqz v4, :cond_7

    .line 270
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_7
    :goto_2
    move-object v0, v4

    .line 273
    goto :goto_0

    .line 262
    :catch_2
    move-exception v0

    .line 268
    if-eqz v4, :cond_8

    .line 270
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_8
    :goto_3
    move-object v0, v4

    .line 273
    goto :goto_0

    .line 264
    :catch_3
    move-exception v0

    .line 268
    if-eqz v4, :cond_9

    .line 270
    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_9
    :goto_4
    move-object v0, v4

    .line 273
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_a

    .line 270
    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 273
    :cond_a
    :goto_5
    throw v0

    .line 271
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_5
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:I

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    :cond_2
    const-string v0, "orca:OrcaNotificationManager"

    const-string v1, "Ignoring message that was already processed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->f:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v1}, Lcom/facebook/orca/push/PresenceManager;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->f:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->f()J

    move-result-wide v0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 120
    sub-long v0, v2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Landroid/os/Vibrator;

    sget-object v1, Lcom/facebook/orca/notify/OrcaNotificationManager;->j:[J

    invoke-virtual {v0, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_1
    move v0, v5

    .line 135
    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 139
    iget-object v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_5
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b()V

    goto :goto_0

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Landroid/os/Vibrator;

    sget-object v1, Lcom/facebook/orca/notify/OrcaNotificationManager;->k:[J

    invoke-virtual {v0, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    .line 127
    :cond_7
    sget-object v1, Lcom/facebook/orca/push/mqtt/PushSource;->C2DM:Lcom/facebook/orca/push/mqtt/PushSource;

    if-ne p3, v1, :cond_4

    .line 130
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;)V

    move v0, v5

    .line 131
    goto :goto_2
.end method

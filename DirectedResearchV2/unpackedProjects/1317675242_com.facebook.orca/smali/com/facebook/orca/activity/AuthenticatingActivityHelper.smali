.class public Lcom/facebook/orca/activity/AuthenticatingActivityHelper;
.super Ljava/lang/Object;
.source "AuthenticatingActivityHelper.java"


# static fields
.field private static final k:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final d:Lcom/facebook/orca/config/OrcaConfig;

.field private final e:Lcom/facebook/orca/cache/DataCache;

.field private final f:Landroid/app/Activity;

.field private final g:Lcom/facebook/orca/common/util/VersionStringComparator;

.field private final h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "messenger_phone_verification_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->k:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/cache/DataCache;Landroid/app/Activity;Lcom/facebook/orca/common/util/VersionStringComparator;Z)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "orca:AuthenticatingActivityHelper"

    iput-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 67
    iput-object p2, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 68
    iput-object p3, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d:Lcom/facebook/orca/config/OrcaConfig;

    .line 69
    iput-object p4, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->e:Lcom/facebook/orca/cache/DataCache;

    .line 70
    iput-object p5, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    .line 71
    iput-object p6, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->g:Lcom/facebook/orca/common/util/VersionStringComparator;

    .line 72
    iput-boolean p7, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->h:Z

    .line 73
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 105
    const-string v0, "return_uri"

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v0, "return_intent"

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->j:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method private a(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 223
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 194
    if-nez v0, :cond_0

    move v0, v9

    .line 215
    :goto_0
    return v0

    .line 198
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 199
    invoke-direct {p0, v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 200
    if-nez v0, :cond_1

    move v0, v9

    .line 201
    goto :goto_0

    .line 203
    :cond_1
    const-string v1, "com.facebook.orca"

    invoke-direct {p0, v1}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 204
    if-nez v1, :cond_2

    move v0, v9

    .line 205
    goto :goto_0

    .line 208
    :cond_2
    array-length v2, v0

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 209
    array-length v5, v1

    move v6, v9

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v1, v6

    .line 210
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/inject/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 208
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v0, v9

    .line 215
    goto :goto_0
.end method

.method private i()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-direct {p0, v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->h()Lcom/facebook/orca/auth/KatanaSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    const-string v1, "return_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->i:Ljava/lang/String;

    .line 79
    const-string v1, "return_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->j:Landroid/content/Intent;

    .line 81
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->i()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    const-class v2, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a(Landroid/content/Intent;)V

    .line 95
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    const-class v2, Lcom/facebook/orca/auth/LoginScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public d()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    const-class v2, Lcom/facebook/orca/auth/SilentLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a(Landroid/content/Intent;)V

    .line 101
    return-object v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->i()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    move v0, v3

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_0
    const-string v1, "orca:AuthenticatingActivityHelper"

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d:Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1}, Lcom/facebook/orca/config/OrcaConfig;->a()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->a()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->g:Lcom/facebook/orca/common/util/VersionStringComparator;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/common/util/VersionStringComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public f()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->h:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "orca:AuthenticatingActivityHelper"

    const-string v1, "Confirmation disabled"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 145
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 135
    :cond_1
    const-string v0, "orca:AuthenticatingActivityHelper"

    const-string v1, "Confirmation not needed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 136
    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->k:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    const-string v0, "orca:AuthenticatingActivityHelper"

    const-string v1, "GK is off"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 141
    goto :goto_0

    .line 144
    :cond_3
    const-string v0, "orca:AuthenticatingActivityHelper"

    const-string v1, "Confirmation is needed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "orca:AuthenticatingActivityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->j:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "orca:AuthenticatingActivityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->j:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->j:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    move-object v0, p0

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "orca:AuthenticatingActivityHelper"

    const-string v1, "Going to threadlist."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    const-class v2, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public h()Lcom/facebook/orca/auth/KatanaSessionInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.facebook.katana.provider.UserValuesProvider/user_values"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=\'active_session_info\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 241
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 244
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 256
    :goto_1
    return-object v0

    .line 241
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 254
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 256
    goto :goto_1

    .line 248
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 249
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 250
    new-instance v2, Lcom/facebook/orca/auth/KatanaSessionInfo;

    const-string v3, "uid"

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "access_token"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/orca/auth/KatanaSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v1, v6

    goto :goto_0
.end method
